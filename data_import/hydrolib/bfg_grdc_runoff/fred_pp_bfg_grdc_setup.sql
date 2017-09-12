/*
BFG GRDC runoff measurement data

__copyright__   = "Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = ""
__author__      = "Ludee"
*/


-- BFG GRDC timeseries
DROP TABLE IF EXISTS    hydrolib.bfg_grdc_runoff;
CREATE TABLE            hydrolib.bfg_grdc_runoff (
    id          serial,
    station     text,
    "type"      varchar(1),
    year        smallint,
    time_series real[],
    CONSTRAINT bfg_grdc_runoff_pkey PRIMARY KEY (id));

-- grant (oeuser)
ALTER TABLE hydrolib.bfg_grdc_runoff OWNER TO oeuser;


-- metadata
COMMENT ON TABLE hydrolib.bfg_grdc_runoff IS '{
    "title": "Bundesanstalt für Gewässerkunde (BfG) - Global Runoff Data Center (GRDC) - runoff measurement data",
    "description": "Extract from Global Runoff Data Center (GRDC)",
    "language": [ "eng", "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal": 
        {"reference_date": "yearly",
        "start": "01-01",
        "end": "12-31",
        "resolution": "1 d"},
    "sources": [
        {"name": "Global Runoff Data Center (GRDC), 56068 Koblenz, Germany", "description": "Daten wurden von dem Global Runoff Data Center (grdc@bafg.de) bereitgestellt.", "url": "http://www.bafg.de/GRDC/EN/02_srvcs/21_tmsrs/riverdischarge_node.html", "license": "none", "copyright": ""} ],
    "license": 
        {"id": "none",
        "name": "none",
        "version": "none",
        "url": "none",
        "instruction": "Datenquelle: The Global Runoff Data Center, 56068 Koblenz, Germany. Not to be transferred, used for commercial purposes, accessed to unauthorized persons, or kept on the general data processing facilities after completion of the studies (see declaration of the data user)",
        "copyright": "none"},
    "contributors": [
        {"name": "chloelucas", "email": "none", "date": "2017-08-30", "comment": "Add metadata"},
        {"name": "Ludee", "email": "none", "date": "2017-09-07", "comment": "Add data"} ],
    "resources": [
        {"name": "hydrolib.bfg_grdc_runoff",
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none"},
            {"name": "station", "description": "Unique identifier", "unit": "none"},
            {"name": "type", "description": "[W] gauge height in cm; [Q] runoff in m³/s", "unit": "cm or m³/s"},
            {"name": "year", "description": "Reference year", "unit": "none"},
            {"name": "time_series", "description": "Example value", "unit": "cm or m³/s"} ] } ],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('hydrolib.bfg_grdc_runoff' ::regclass) ::json;
