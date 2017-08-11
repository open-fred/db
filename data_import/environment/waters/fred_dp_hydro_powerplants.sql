/*
Hydro power plants to rivers and gauge stations

__copyright__   = "Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = ""
__author__      = "Ludee"
*/


-- analyze powerplants
WITH gtype AS (
    SELECT  GeometryType(dlm.geom) AS typ,
            Find_SRID('supply', 'ego_dp_conv_powerplant', 'geom') AS srid
    FROM supply.ego_dp_conv_powerplant AS dlm)
SELECT typ,srid
FROM gtype
GROUP BY typ,srid;


-- hydro plants
DROP MATERIALIZED VIEW IF EXISTS    supply.fred_dp_conv_powerplant_hydro_mview;
CREATE MATERIALIZED VIEW            supply.fred_dp_conv_powerplant_hydro_mview AS
    SELECT  *
    FROM    supply.ego_dp_conv_powerplant
    WHERE   version = 'v0.2.10' AND technology = 'ROR';

-- grant (oeuser)
ALTER TABLE supply.fred_dp_conv_powerplant_hydro_mview OWNER TO oeuser;

-- index (id)
CREATE UNIQUE INDEX fred_dp_conv_powerplant_hydro_mview_idx
    ON  supply.fred_dp_conv_powerplant_hydro_mview (gid);

-- index GIST (geom)
CREATE INDEX fred_dp_conv_powerplant_hydro_mview_gidx
    ON supply.fred_dp_conv_powerplant_hydro_mview USING GIST (geom);


-- NN hydro to rivers
DROP MATERIALIZED VIEW IF EXISTS    supply.fred_dp_conv_powerplant_hydro_on_river_mview;
CREATE MATERIALIZED VIEW            supply.fred_dp_conv_powerplant_hydro_on_river_mview AS
    SELECT DISTINCT ON (a.gid)
        a.gid,
        b.gwk,
        b.nam,
        a.geom,
        ST_ShortestLine(
            ST_TRANSFORM(a.geom,3035) ::geometry(Point,3035),
            b.geom ::geometry(MultiLineString,3035)
            ) ::geometry(LineString,3035) AS geom_line,
        ST_Distance(ST_TRANSFORM(a.geom,3035),b.geom)
    FROM    supply.fred_dp_conv_powerplant_hydro_mview AS a,       -- base
            environment.fred_dp_river_mosel_mview AS b             -- target
    WHERE   ST_DWithin(ST_TRANSFORM(a.geom,3035),b.geom, 1000)   -- In a 1 km radius
    ORDER BY a.gid, ST_Distance(ST_TRANSFORM(a.geom,3035),b.geom);


-- NN hydro to gauge station
DROP MATERIALIZED VIEW IF EXISTS    supply.fred_dp_conv_powerplant_hydro_on_gaugeheight_mview;
CREATE MATERIALIZED VIEW            supply.fred_dp_conv_powerplant_hydro_on_gaugeheight_mview AS
    SELECT DISTINCT ON (a.gid)
        a.gid,
        b.id,
        b.station_id,
        b.station,
        b.water,
        a.geom,
        ST_ShortestLine(
            ST_TRANSFORM(a.geom,3035) ::geometry(Point,3035),
            b.geom ::geometry(Point,3035)
            ) ::geometry(LineString,3035) AS geom_line,
        ST_Distance(ST_TRANSFORM(a.geom,3035),b.geom)
    FROM    supply.fred_dp_conv_powerplant_hydro_on_river_mview AS a,    -- base
            hydrolib.fred_gaugeheight_station AS b              -- target
    WHERE   ST_DWithin(ST_TRANSFORM(a.geom,3035),b.geom, 20000)  -- In a 1 km radius
            AND LOWER(a.nam) LIKE LOWER(b.water)
    ORDER BY a.gid, ST_Distance(ST_TRANSFORM(a.geom,3035),b.geom);
