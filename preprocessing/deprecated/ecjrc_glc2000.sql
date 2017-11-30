--metadata
COMMENT ON TABLE deprecated.ecjrc_glc2000 IS '{
    "title": "Global Land Cover 2000 (GLC2000)",
    "description": "The general objective is to provide for the year 2000 a harmonized land cover database over the whole globe. The year Two Thousand is considered as a reference year for environmental assessment in relation to various activities, in particular the United Nations Ecosystem-related International Conventions.",
    "language": "",
    "spatial": {
        "location": "",
        "extend": "Global",
        "resolution": ""},
    "temporal": {
        "reference_date": "2000",
        "start": "",
        "end": "",
        "resolution": ""},
    "sources": [
            {"name": "European Commission, Joint Research Centre",
            "description": "",
            "url": "http://www.ngdc.noaa.gov/mgg/topo/globe.html",
            "license": "",
            "copyright": ""}],
    "license": {
        "id": "",
        "name": "",
        "version": "",
        "url": "http://forobs.jrc.ec.europa.eu/products/glc2000/disclaimer.php",
        "instruction": "",
        "copyright": ""},
    "contributors": [
            {"name": "Ludwig H\u00fclk",
            "email": "ludwig.huelk@rl-institut.de",
            "date": "2016-10-25",
            "comment": "Create table and import data"},
            {"name": "Kilian Zimmerer",
            "email": "",
            "date": "2017-11-14",
            "comment": "Update metadata to v1.3"}],
    "resources": [
            {"name": "deprecated.ecjrc_glc2000",
            "format": "PostgreSQL",
            "fields": [
                {"name": "rid",
                "description": "Unique identifier",
                "unit": " "},
                {"name": "rast",
                "description": "Raster tiles",
                "unit": ""}]}],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('deprecated.ecjrc_glc2000' ::regclass) ::json;

/*
The previous metadata version
-----------------------------

COMMENT ON TABLE deprecated.ecjrc_glc2000 IS '{
	"Name": "Global Land Cover 2000 (GLC2000)",
	"Source": [{
		"Name": "European Commission, Joint Research Centre",
		"URL":  "http://www.ngdc.noaa.gov/mgg/topo/globe.html" }],
	"Reference date": "2000",
	"Date of collection": "25.10.2016",
	"Original file": "http://www.ngdc.noaa.gov/mgg/topo/DATATILES/elev/all10g.zip imported with https://github.com/open-fred/db/blob/master/data_import/setup_ecjrc_glc2000_raster.txt",
	"Spatial resolution": ["Global"],
	"Description": ["The general objective is to provide for the year 2000 a harmonized land cover database over the whole globe. The year Two Thousand is considered as a reference year for environmental assessment in relation to various activities, in particular the United Nations Ecosystem-related International Conventions."],
	"Column": [
		{"Name": "rid", "Description": "Unique identifier", "Unit": " " },
		{"Name": "rast", "Description": "Raster tiles", "Unit": "" } ],
	"Changes":[
		{"Name": "Ludwig Hülk", "Mail": "ludwig.huelk@rl-institut.de",
		"Date":  "25.10.2016", "Comment": "Create table and import data" } ],
	"ToDo": [""],
	"Licence": ["No License Provided"],
	"Instructions for proper use": ["Global Land Cover 2000 database. European Commission, Joint Research Centre, 2003. See disclaimer and copyright notice: http://forobs.jrc.ec.europa.eu/products/glc2000/disclaimer.php"]
	}';
*/
