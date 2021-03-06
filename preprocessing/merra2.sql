/*
This script provides metadata for the 'initialboundRCM.merra2' dataset
A definition of metadata can be found in the openmod glossary http://wiki.openmod-initiative.org/wiki/Metadata
A further description can be found on http://wiki.openmod-initiative.org/wiki/DatabaseRules

__copyright__ 	= "Reiner Lemoine Institut"
__license__ 	= "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__ 	= "https://github.com/openego/data_processing/blob/master/LICENSE"
__author__ 	= "KilianZimmerer"
__contains__	= "http://stackoverflow.com/questions/383692/what-is-json-and-why-would-i-use-it","https://specs.frictionlessdata.io/data-package/"

Additional information:
- Dates must follow the ISO8601 (JJJJ-MM-TT)
- Use a space between Numbers and units (100 m)
- If not applicable use "none"
*/


-- metadata
COMMENT ON TABLE initialboundRCM.merra2 IS '{
	"title": "Modern-Era Retrospective analysis for Research and Applications",
	"description": "An reanalysis data set from NASA",
	"language": [ "eng" ],
	"spatial":
		{"location": "none",
        "extent": "global",
		"resolution": "long = 0.625 deg, lat = 0.5 deg"},
	"temporal":
		{"reference_date": "1980-01-01",
        "start": "1980-01-01",
		"end": "2017-08-22",
		"resolution": "varying"},
	"sources": [
		{"name": "National Aeronautics and Space Administration, Goddard Space Flight Center", "description": "", "url": "https://gmao.gsfc.nasa.gov/reanalysis/MERRA-2/data_access/", "license": "", "copyright": ""},
        {"name": "file", "description": "", "url": "https://disc.sci.gsfc.nasa.gov/datasets?page=1&keywords=MERRA-2", "license": "", "copyright": ""} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-10", "comment": "Create metadata"} ],
	"resources": [
		{"name": "initialboundRCM.merra2",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('initialboundRCM.merra2' ::regclass) ::json;
