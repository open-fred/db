/*
Union full rivers from BKG DLM250 layers

__copyright__   = "Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = ""
__author__      = "Ludee"
*/


-- analyze bkg dlm250 lines
WITH gtype AS (
    SELECT  GeometryType(dlm.geom) AS typ,
            Find_SRID('orig_geo_dlm250', 'dlm250_gew03_l', 'geom') AS srid
    FROM orig_geo_dlm250.dlm250_gew03_l AS dlm)
SELECT typ,srid
FROM gtype
GROUP BY typ,srid;


-- union rivers
DROP MATERIALIZED VIEW IF EXISTS    environment.fred_dp_river_mosel_mview;
CREATE MATERIALIZED VIEW            environment.fred_dp_river_mosel_mview AS
    WITH    gew03_l AS (
    SELECT  land,modellart,objart,objart_txt,aga,flr,gwk,nam,ST_TRANSFORM(ST_UNION(ST_SETSRID(geom,31467)),3035)::geometry(MultiLineString,3035) AS geom
    FROM    orig_geo_dlm250.dlm250_gew03_l
    WHERE   nam='Mosel'
    GROUP BY    land,modellart,objart,objart_txt,aga,flr,gwk,nam
    ORDER BY    gwk)
    SELECT  *
    FROM    gew03_l;

-- grant (oeuser)
ALTER TABLE environment.fred_dp_river_mosel_mview OWNER TO oeuser;

-- index (id)
CREATE UNIQUE INDEX fred_dp_river_mosel_mview_idx
    ON  environment.fred_dp_river_mosel_mview (gwk);

-- index GIST (geom)
CREATE INDEX fred_dp_river_mosel_mview_gidx
    ON environment.fred_dp_river_mosel_mview USING GIST (geom);
