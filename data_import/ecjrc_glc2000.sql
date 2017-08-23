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
COMMENT ON TABLE environmental.ecjrc_glc2000 IS '{
	"title": "Global Land Cover 2000 (GLC2000)",
	"description": "The general objective is to provide for the year 2000 a harmonized land cover database over the whole globe. The year Two Thousand is considered as a reference year for environmental assessment in relation to various activities, in particular the United Nation\'s Ecosystem-related International Conventions.",
	"language": [ "eng" ],
	"spatial": 
		{"location": "none",
        "extent": "global",
		"resolution": "lat = 0.089 deg, long = 0.089 deg"},
	"temporal":
		{"reference_date": "2000-01-01",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "European Comission, Joint Research Center, 2003", "description": "", "url": "http://forobs.jrc.ec.europa.eu/products/glc2000/glc2000.php", "license": "http://forobs.jrc.ec.europa.eu/products/glc2000/disclaimer.php", "copyright": "© European Communities"},
		{"name": "file", "description": "zip-file of the GLC2000 database", "url": "http://forobs.jrc.ec.europa.eu/products/glc2000/products/glc2000_v1_1_Tiff.zip", "license": "http://forobs.jrc.ec.europa.eu/products/glc2000/disclaimer.php", "copyright": "© European Communities"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "Ludee", "email": "", "date": "2016-10-25", "comment": "Create table and import data"},
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-22", "comment": "Update metadata to version 1.3"} ],
	"resources": [
		{"name": "environmental.ecjrc_glc2000",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('environmental.ecjrc_glc2000' ::regclass) ::json;
