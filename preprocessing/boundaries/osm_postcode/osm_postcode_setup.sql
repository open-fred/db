/*
Create table for OSM postcode (PLZ)
Postleitzahlen Deutschland

__copyright__   = "Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = "https://github.com/openego/data_processing/blob/master/LICENSE"
__author__      = "Ludee"
*/


DROP TABLE IF EXISTS    boundaries.osm_postcode;
CREATE TABLE            boundaries.osm_postcode (
    id              serial,
    reference_date  date,
    stellen         integer,
    plz             varchar(5),
    note            text,
    geom            geometry(MultiPolygon,4326),
    CONSTRAINT osm_postcode_pkey PRIMARY KEY (id) );

-- grant (oeuser)
ALTER TABLE boundaries.osm_postcode OWNER TO oeuser;

-- index GIST (geom)
CREATE INDEX osm_postcode_geom_idx ON boundaries.osm_postcode USING gist (geom);

-- ego scenario log (version,io,schema_name,table_name,script_name,comment)
SELECT ego_scenario_log('v0.2.10','setup','boundaries','osm_postcode','osm_postcode_metadata.sql','metadata');


-- insert layers
INSERT INTO boundaries.osm_postcode (reference_date,stellen,plz,geom)
    SELECT  '2017-03-23',
            1,
            plz,
            geom
    FROM    sandbox."plz-1stellig"
    ORDER BY plz;

INSERT INTO boundaries.osm_postcode (reference_date,stellen,plz,geom)
    SELECT  '2017-03-23',
            2,
            plz,
            geom
    FROM    sandbox."plz-2stellig"
    ORDER BY plz;

INSERT INTO boundaries.osm_postcode (reference_date,stellen,plz,geom)
    SELECT  '2017-03-23',
            3,
            plz,
            geom
    FROM    sandbox."plz-3stellig"
    ORDER BY plz;

INSERT INTO boundaries.osm_postcode (reference_date,stellen,plz,note,geom)
    SELECT  '2017-03-23',
            5,
            plz,
            note,
            geom
    FROM    sandbox."plz-gebiete"
    ORDER BY plz;

-- ego scenario log (version,io,schema_name,table_name,script_name,comment)
SELECT ego_scenario_log('v0.2.10','setup','boundaries','osm_postcode','osm_postcode_metadata.sql','metadata');
