/*
Setup schema hydrolib

__copyright__   = "Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = ""
__author__      = "Ludee"
*/


-- DROP SCHEMA hydrolib ;
CREATE SCHEMA hydrolib;

COMMENT ON SCHEMA hydrolib IS '{
    "Name": "open_FRED hydrolib",
    "Description": ["Waters, rivers, measurements"],
    "Changes":[
        {"Name": "Ludwig Hülk",
        "Mail": "ludwig.huelk@rl-institut.de",
        "Date":  "2017-08-09",
        "Comment": "Create schema" }],
    "ToDo": [""] }';

GRANT ALL ON SCHEMA hydrolib TO oeuser;

ALTER DEFAULT PRIVILEGES IN SCHEMA hydrolib
GRANT ALL ON TABLES TO oeuser;

ALTER DEFAULT PRIVILEGES IN SCHEMA hydrolib
GRANT SELECT, USAGE ON SEQUENCES TO oeuser;

ALTER DEFAULT PRIVILEGES IN SCHEMA hydrolib
GRANT EXECUTE ON FUNCTIONS TO oeuser;
