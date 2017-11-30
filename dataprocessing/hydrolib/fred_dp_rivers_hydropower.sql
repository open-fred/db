/*
Union full rivers from BKG DLM250 layers

__copyright__   = "Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = ""
__author__      = "Ludee"
*/


-- Sequence
DROP SEQUENCE IF EXISTS model_draft.fred_dp_river_mview_id CASCADE;
CREATE SEQUENCE         model_draft.fred_dp_river_mview_id;

-- grant (oeuser)
ALTER SEQUENCE model_draft.fred_dp_river_mview_id OWNER TO oeuser;

-- union rivers
DROP MATERIALIZED VIEW IF EXISTS    model_draft.fred_dp_river_mview CASCADE;
CREATE MATERIALIZED VIEW            model_draft.fred_dp_river_mview AS
    WITH    gew01_l AS (
        SELECT  land,modellart,objart,objart_txt,gwk,nam,ST_TRANSFORM(ST_UNION(ST_SETSRID(geom,31467)),3035)::geometry(MultiLineString,3035) AS geom
        FROM    environment.dlm250_gew01_l
        WHERE   gwk IS NOT NULL
        GROUP BY    land,modellart,objart,objart_txt,gwk,nam
        ORDER BY    gwk),
            gew03_l AS (
        SELECT  land,modellart,objart,objart_txt,gwk,nam,ST_TRANSFORM(ST_UNION(ST_SETSRID(geom,31467)),3035)::geometry(MultiLineString,3035) AS geom
        FROM    environment.dlm250_gew03_l
        WHERE   gwk IS NOT NULL
        GROUP BY    land,modellart,objart,objart_txt,gwk,nam
        ORDER BY    gwk)
    SELECT  nextval('model_draft.fred_dp_river_mview_id') ::integer AS river_id,
            substring(gwk from 1 for 1)::integer AS riversystem_id,
            gwk,
            nam,
            ST_UNION(geom) ::geometry(MultiLineString,3035) AS geom
    FROM    (SELECT * FROM gew03_l UNION ALL SELECT * FROM gew01_l) AS river
    GROUP BY    gwk,nam;


-- grant (oeuser)
ALTER TABLE model_draft.fred_dp_river_mview OWNER TO oeuser;

-- index (river_id)
CREATE UNIQUE INDEX fred_dp_river_mview_idx ON  model_draft.fred_dp_river_mview (river_id);

-- index GIST (geom)
CREATE INDEX fred_dp_river_mview_gidx
    ON model_draft.fred_dp_river_mview USING GIST (geom);



-- river systems (Stromgebiete)
/*
SELECT  river_id,
        gwk,
        substring(gwk from 1 for 1)
FROM    model_draft.fred_dp_river_mview
ORDER BY gwk;
*/

DROP MATERIALIZED VIEW IF EXISTS    model_draft.fred_dp_river_systems_mview CASCADE;
CREATE MATERIALIZED VIEW            model_draft.fred_dp_river_systems_mview AS
    WITH    riversystem AS (
        SELECT 1 AS riversystem_id, 'Donau' AS riversystem_name  UNION ALL 
        SELECT 2 AS riversystem_id, 'Rhein' AS riversystem_name  UNION ALL 
        SELECT 3 AS riversystem_id, 'Ems' AS riversystem_name  UNION ALL 
        SELECT 4 AS riversystem_id, 'Weser' AS riversystem_name  UNION ALL 
        SELECT 5 AS riversystem_id, 'Elbe' AS riversystem_name  UNION ALL 
        SELECT 6 AS riversystem_id, 'Oder' AS riversystem_name  UNION ALL 
        SELECT 9 AS riversystem_id, 'Küstengebiet' AS riversystem_name ),
            river AS (
        SELECT  substring(gwk from 1 for 1)::integer AS riversystem_id,
                count(geom) AS river_cnt,
                sum(ST_Length(geom)) AS river_lenght,
                ST_UNION(geom) ::geometry(MultiLineString,3035) AS geom
        FROM    model_draft.fred_dp_river_mview
        GROUP BY substring(gwk from 1 for 1)
        ORDER BY substring(gwk from 1 for 1) )
    SELECT  a.riversystem_id,
            a.riversystem_name,
            b.river_cnt,
            b.river_lenght,
            b.geom        
    FROM    riversystem AS a INNER JOIN
            river AS b 
                ON (a.riversystem_id =  b.riversystem_id)
    ORDER BY riversystem_id;

-- grant (oeuser)
ALTER TABLE model_draft.fred_dp_river_systems_mview OWNER TO oeuser;

-- index (hydropower_id)
CREATE UNIQUE INDEX fred_dp_river_systems_mview_idx
    ON  model_draft.fred_dp_river_systems_mview (riversystem_id);

-- index GIST (geom)
CREATE INDEX fred_dp_river_systems_mview_geom_gidx
    ON model_draft.fred_dp_river_systems_mview USING GIST (geom);



-- union hydro power plants
DROP MATERIALIZED VIEW IF EXISTS    model_draft.fred_dp_hydropower_mview CASCADE;
CREATE MATERIALIZED VIEW            model_draft.fred_dp_hydropower_mview AS
    WITH    conv AS (
        SELECT  gid AS hydropower_id,postcode,city,capacity*1000 AS capacity,voltage_level,'conv'::text AS source,ST_TRANSFORM(ST_SETSRID(geom,4326),3035)::geometry(Point,3035) AS geom
        FROM    supply.ego_dp_conv_powerplant
        WHERE   version = 'v0.2.10' AND
                technology = 'ROR'
        ORDER BY    capacity DESC),
            res AS (
        SELECT  id AS hydropower_id,postcode,city,electrical_capacity AS capacity,voltage_level,'res'::text AS source,ST_TRANSFORM(ST_SETSRID(geom,4326),3035)::geometry(Point,3035) AS geom
        FROM    supply.ego_dp_res_powerplant
        WHERE   version = 'v0.2.10' AND
                generation_type = 'run_of_river'
        ORDER BY    capacity DESC)
    SELECT  hydropower_id,
            postcode,
            city,
            capacity,
            voltage_level,
            source,
            geom ::geometry(Point,3035)
    FROM    (SELECT * FROM conv UNION ALL SELECT * FROM res) AS hydropower
    ORDER BY    capacity DESC;

    
-- grant (oeuser)
ALTER TABLE model_draft.fred_dp_hydropower_mview OWNER TO oeuser;

-- index (hydropower_id)
CREATE UNIQUE INDEX fred_dp_hydropower_mview_idx ON  model_draft.fred_dp_hydropower_mview (hydropower_id);

-- index GIST (geom)
CREATE INDEX fred_dp_hydropower_mview_gidx
    ON model_draft.fred_dp_hydropower_mview USING GIST (geom);

/*
SELECT DISTINCT ON (voltage_level)
    voltage_level,
    SUM(capacity) AS capacity,
    COUNT(geom) AS "count"
FROM    model_draft.fred_dp_hydropower_mview
GROUP BY voltage_level;
*/

-- NN hydro to rivers
DROP MATERIALIZED VIEW IF EXISTS    model_draft.fred_dp_hydropower_on_river_mview CASCADE;
CREATE MATERIALIZED VIEW            model_draft.fred_dp_hydropower_on_river_mview AS
    SELECT DISTINCT ON (a.hydropower_id)
        a.hydropower_id,
        a.postcode,
        a.city,
        a.capacity,
        a.voltage_level,
        a.source,
        b.river_id,
        b.riversystem_id,
        b.gwk,
        b.nam,
        a.geom,
        ST_ShortestLine(
            a.geom ::geometry(Point,3035),
            b.geom ::geometry(MultiLineString,3035)
            ) ::geometry(LineString,3035) AS geom_line,
        ST_Distance(a.geom,b.geom) AS distance
    FROM    model_draft.fred_dp_hydropower_mview AS a,      -- base
            model_draft.fred_dp_river_mview AS b            -- target
    WHERE   ST_DWithin(a.geom,b.geom, 5000)                 -- In a 5 km radius
            AND (a.voltage_level = '1'
            OR a.voltage_level = '2'
            OR a.voltage_level = '3'
            OR a.voltage_level = '4'
            OR a.voltage_level = '5')
    ORDER BY a.hydropower_id, ST_Distance(a.geom,b.geom);

-- grant (oeuser)
ALTER TABLE model_draft.fred_dp_hydropower_on_river_mview OWNER TO oeuser;

-- index (hydropower_id)
CREATE UNIQUE INDEX fred_dp_hydropower_on_river_mview_idx
    ON  model_draft.fred_dp_hydropower_on_river_mview (hydropower_id);

-- index GIST (geom)
CREATE INDEX fred_dp_hydropower_on_river_mview_geom_gidx
    ON model_draft.fred_dp_hydropower_on_river_mview USING GIST (geom);

-- index GIST (geom_line)
CREATE INDEX fred_dp_hydropower_on_river_mview_geom_line_gidx
    ON model_draft.fred_dp_hydropower_on_river_mview USING GIST (geom_line);


-- rivers with capacity
DROP MATERIALIZED VIEW IF EXISTS    model_draft.fred_dp_river_with_hydropower_mview CASCADE;
CREATE MATERIALIZED VIEW            model_draft.fred_dp_river_with_hydropower_mview AS
    WITH    capacity AS (
            SELECT  river_id,
                    SUM(capacity) AS capacity_sum,
                    COUNT(geom) AS count
            FROM    model_draft.fred_dp_hydropower_on_river_mview
            GROUP BY river_id
            ORDER BY capacity_sum DESC
            )
    SELECT  a.river_id,
            a.capacity_sum,
            a.count,
            b.gwk,
            b.riversystem_id,
            c.riversystem_name,
            b.nam,
            b.geom
    FROM    capacity AS a
            INNER JOIN model_draft.fred_dp_river_mview AS b ON (a.river_id = b.river_id)
            INNER JOIN model_draft.fred_dp_river_systems_mview AS c ON (b.riversystem_id = c.riversystem_id)
    ORDER BY capacity_sum DESC;

-- grant (oeuser)
ALTER TABLE model_draft.fred_dp_river_with_hydropower_mview OWNER TO oeuser;

-- index (hydropower_id)
CREATE UNIQUE INDEX fred_dp_river_with_hydropower_mview_idx
    ON  model_draft.fred_dp_river_with_hydropower_mview (river_id);

-- index GIST (geom)
CREATE INDEX fred_dp_river_with_hydropower_mview_geom_gidx
    ON model_draft.fred_dp_river_with_hydropower_mview USING GIST (geom);


-- sum per riversytem
SELECT  riversystem_id,
        riversystem_name,
        SUM(capacity_sum) AS capacity_sum,
        COUNT(geom) AS count
FROM    model_draft.fred_dp_river_with_hydropower_mview
GROUP BY riversystem_id, riversystem_name
ORDER BY capacity_sum DESC;
