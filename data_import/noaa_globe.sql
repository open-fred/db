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
		{"location": "world",
        "extent": "global",
		"resolution": "long = 0.0833 deg, lat = 0.0833 deg"},
	"temporal":
		{"reference_date": "1999-01-01",,
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "National Geophysical Data Center, NOAA", "description": "", "url": "http://www.ngdc.noaa.gov/mgg/topo/globe.html", "license": "https://www.ngdc.noaa.gov/mgg/topo/report/s3/s3B.html", "copyright": "partly © AUSLIG"},
		{"name": "file", "description": "zip- and gz- files", "url": "https://www.ngdc.noaa.gov/mgg/topo/gltiles.html", "license": "https://www.ngdc.noaa.gov/mgg/topo/report/s3/s3B.html", "copyright": "partly © AUSLIG"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "Ludee", "email": "", "date": "2016-10-24", "comment": "Create table and import data"},
		{"name": "KilianZimmerer", "email": "", "date": "2017-08-23", "comment": "Update metadata to version 1.3"} ],
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
