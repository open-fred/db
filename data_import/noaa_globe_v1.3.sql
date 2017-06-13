/*

------------------
STILL IN PROGRESS
------------------

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
	"reference_date": "1999-01-01",
	"sources": [
TODO		{"name": "National Geophysical Data Center, NOAA", "description": " ", "url": "http://www.ngdc.noaa.gov/mgg/topo/globe.html", "license": "No License Provided", "copyright": "© Reiner Lemoine Institut"} ],
	"spatial": [
		{"extent": "Global",
TODO		"resolution": ""} ],
TODO	"temporal": [
		{"start": "2017-01-01",
		"end": "2017-12-31",
		"resolution": "hour"} ],
TODO	"license": [
		{"id": "ODbL-1.0",
		"name": "Open Data Commons Open Database License 1.0",
		"version": "1.0",
		"url": "https://opendatacommons.org/licenses/odbl/1.0/",
		"instruction": "You are free: To Share, To Create, To Adapt; As long as you: Attribute, Share-Alike, Keep open!",
		"copyright": "© Reiner Lemoine Institut"} ],
TODO	"contributors": [
		{"name": "Ludee", "email": " ", "date": "2016-06-16", "comment": "Create metadata"},
		{"name": "Ludee", "email": " ", "date": "2016-11-22", "comment": "Update metadata"},
		{"name": "Ludee", "email": " ", "date": "2016-11-22", "comment": "Update header and license"},
		{"name": "Ludee", "email": " ", "date": "2017-03-16", "comment": "Add license to source"},
		{"name": "Ludee", "email": " ", "date": "2017-03-28", "comment": "Add copyright to source and license"},
		{"name": "Ludee", "email": " ", "date": "2017-05-30", "comment": "Update metadata to version 1.3"} ],
TODO	"resources": [
		{"name": "model_draft.test_table",		
		"format": "sql",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('environmental.noaa_globe' ::regclass) ::json;
