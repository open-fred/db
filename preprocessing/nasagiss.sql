/*
This script provides metadata for the 'aerosols.nasagis' dataset
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
COMMENT ON TABLE aerosols.nasagis IS '{
	"title": "GACP aerosol optical thickness and Angstrom exponent dataset",
	"description": "The Filled Land Surface Albedo Product, which is generated from MOD43B3 (the official Terra/MODIS-derived Land Surface Albedo Product, website), is a global data set of spatially complete albedo maps computed for both "white-sky" and "black-sky" at 10 wavelengths (0.47µm, 0.55µm, 0.67µm, 0.86µm, 1.24µm, 2.1µm, 0.3-0.7µm, 0.3-5.0µm, and 0.7-5.0µm) for 23 sixteen-day periods per year (001, 017, ... 353).",
	"language": [ "eng" ],
	"spatial": 
		{"location": "none",
        "extent": "global",
		"resolution": "lat = 1 deg, long = 1 deg"},
	"temporal":
		{"reference_date": "1981-08-01",
        "start": "1981-08-01",
		"end": "2009-12-31",
		"resolution": "1 month"},
	"sources": [
		{"name": "National Aeronautics and Space Administration, Goddard Institute for Space Studies", "description": "", "url": "http://gacp.giss.nasa.gov/data_sets/", "license": "", "copyright": ""},
		{"name": "file", "description": "Time series of the GACP Database as gz- files", "url": "https://gacp.giss.nasa.gov/data/time_ser/", "license": "", "copyright": ""} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": "", "date": "2017-08-23", "comment": "Create metadata"} ],
	"resources": [
		{"name": "aerosols.nasagis",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('aerosols.nasagis' ::regclass) ::json;
