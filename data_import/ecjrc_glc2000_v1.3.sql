/*
This script provides metadata for the 'environmental.ecjrc_glc2000' dataset
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
COMMENT ON TABLE  environmental.ecjrc_glc2000 IS '{
	"title": "Global Land Cover 2000 (GLC2000)",
	"description": "The general objective is to provide for the year 2000 a harmonized land cover database over the whole globe. The year Two Thousand is considered as a reference year for environmental assessment in relation to various activities, in particular the United Nation\'s Ecosystem-related International Conventions.",
	"language": [ "eng" ],
	"reference_date": "1905-06-22",
	"sources": [
		{"name": "European Comission, Joint Research Center", "description": " ", "url": "http://forobs.jrc.ec.europa.eu/products/glc2000/glc2000.php", "license": "", "copyright": "© European Union 2015"},
		{"name": "file", "description": " ", "url": "http://forobs.jrc.ec.europa.eu/products/glc2000/products/glc2000_v1_1_Tiff.zip", "license": "", "copyright": "© European Union 2015"} ],
	"spatial": [
		{"extent": "global",
		"resolution": "0.089 deg x 0.080 deg"} ],
	"temporal": [
		{"start": "",
		"end": "",
		"resolution": ""} ],
	"license": [
		{"id": "ODbL-1.0",
		"name": "Open Data Commons Open Database License 1.0",
		"version": "1.0",
		"url": "https://opendatacommons.org/licenses/odbl/1.0/",
		"instruction": "You are free: To Share, To Create, To Adapt; As long as you: Attribute, Share-Alike, Keep open!",
		"copyright": "© Reiner Lemoine Institut"} ],
	"contributors": [
		{"name": "Ludee", "email": " ", "date": "2016-06-16", "comment": "Create metadata"},
		{"name": "Ludee", "email": " ", "date": "2016-11-22", "comment": "Update metadata"},
		{"name": "Ludee", "email": " ", "date": "2016-11-22", "comment": "Update header and license"},
		{"name": "Ludee", "email": " ", "date": "2017-03-16", "comment": "Add license to source"},
		{"name": "Ludee", "email": " ", "date": "2017-03-28", "comment": "Add copyright to source and license"},
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-10", "comment": "Update metadata to version 1.3"} ],
	"resources": [
		{"name": "environmental.ecjrc_glc2000",		
		"format": "sql",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('environmental.ecjrc_glc2000' ::regclass) ::json;
