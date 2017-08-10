/*
This script provides metadata for the 'environmental.noaa_globe' dataset
A definition of metadata can be found in the openmod glossary http://wiki.openmod-initiative.org/wiki/Metadata
A further description can be found on http://wiki.openmod-initiative.org/wiki/DatabaseRules

__copyright__ 	= "Reiner Lemoine Institut"
__license__ 	= "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__ 	= "https://github.com/openego/data_processing/blob/master/LICENSE"
__author__ 	= "Ludee & KilianZimmerer"
__contains__	= "http://stackoverflow.com/questions/383692/what-is-json-and-why-would-i-use-it","https://specs.frictionlessdata.io/data-package/"

Additional information:
- Dates must follow the ISO8601 (JJJJ-MM-TT)
- Use a space between Numbers and units (100 m)
- If not applicable use "none"
*/


-- metadata
COMMENT ON TABLE environmental.noaa_globe IS '{
	"title": "Global Land One-km Base Elevation Project (GLOBE)",
	"description": "A 30-arc-second (1-km) gridded, quality-controlled global Digital Elevation Model (DEM)",
	"language": [ "eng" ],
	"spatial":
		{"location": "",
        "extent": "global",
		"resolution": "0.0833 deg x 0.0833 deg"},
	"temporal":
		{"reference_date": "1999-01-01",,
        "start": "",
		"end": "",
		"resolution": ""},
	"sources": [
		{"name": "National Geophysical Data Center, NOAA", "description": "", "url": "http://www.ngdc.noaa.gov/mgg/topo/globe.html", "license": "", "copyright": ""},
		{"name": "file", "description": "", "url": "https://www.ngdc.noaa.gov/mgg/topo/gltiles.html", "license": "", "copyright": ""} ],
	"license":
		{"id": "ODbL-1.0",
		"name": "Open Data Commons Open Database License 1.0",
		"version": "1.0",
		"url": "https://opendatacommons.org/licenses/odbl/1.0/",
		"instruction": "You are free: To Share, To Create, To Adapt; As long as you: Attribute, Share-Alike, Keep open!",
		"copyright": "© Reiner Lemoine Institut"},
	"contributors": [
		{"name": "Ludee", "email": "", "date": "2016-10-24", "comment": "Create table and import data"},
		{"name": "KilianZimmerer", "email": "", "date": "2017-08-10", "comment": "Update metadata to version 1.3"} ],
	"resources": [
		{"name": "environmental.noaa_globe",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('environmental.noaa_globe' ::regclass) ::json;
