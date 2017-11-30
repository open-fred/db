/*
This script provides metadata for the 'environmental.fao_hwsd' dataset
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
COMMENT ON TABLE environmental.fao_hwsd IS '{
	"title": "Harmonised World Soil Database (HWSD)",
	"description": "The Harmonized World Soil Database is a 30 arc-second raster database with over 15 000 different soil mapping units that combines existing regional and national updates of soil information worldwide (SOTER, ESD, Soil Map of China, WISE) with the information contained within the 1:5 000 000 scale FAO-UNESCO Soil Map of the World (FAO, 1971-1981).",
	"language": [ "eng" ],
	"spatial":
		{"location": "none",
        "extent": "global",
		"resolution": "lat = 0.0833 deg, long = 0.0833 deg"},
	"temporal":
		{"reference_date": "2009-01-01",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Food and Agriculture Organisation of the United Nations (FAOUN)", "description": "", "url": "http://www.fao.org/soils-portal/soil-survey/soil-maps-and-databases/harmonized-world-soil-database-v12/en/", "license": "http://webarchive.iiasa.ac.at/Research/LUC/External-World-soil-database/HTML/index.html?sb=1", "copyright": "© FAO, IIASA, ISRIC, ISSCAS, JRC 2008-2012"},
        {"name": "file", "description": "mdb-file of the HWSD", "url": "http://www.fao.org/fileadmin/user_upload/soils/HWSD%20Viewer/HWSD.mdb", "license": "http://webarchive.iiasa.ac.at/Research/LUC/External-World-soil-database/HTML/index.html?sb=1", "copyright": "© FAO, IIASA, ISRIC, ISSCAS, JRC 2008-2012"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": "", "date": "2017-08-10", "comment": "Create metadata"} ],
	"resources": [
		{"name": "environmental.fao_hwsd",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('environmental.fao_hwsd' ::regclass) ::json;
