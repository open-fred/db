
-- metadata
COMMENT ON TABLE economic.destatis_gva_per_district IS '{
	"title": "Gross value added per district in Germany",
	"description": "Gross value added per administrative district for the business sectors industry and tertiary sector",
	"language": [ "eng", "ger" ],
	"reference_date": "2011",
	"sources": [
		{"name": "eGo dataprocessing", "description": " ", "url": "https://github.com/openego/data_processing", "license": "GNU Affero General Public License Version 3 (AGPL-3.0)", "copyright": "© Reiner Lemoine Institut"},
		{"name": "Statistisches Bundesamt (Destatis)- VGR der Länder", "description": " ", "url": "https://www.destatis.de/DE/Publikationen/Thematisch/VolkswirtschaftlicheGesamtrechnungen/VGRderLaender/VGR_KreisergebnisseBand1.html", "license": " ", "copyright": " "} ],
	"spatial": [
		{"extend": "Germany",
		"resolution": "District (Kreis)"} ],
	"license": [
		{"id": "ODbL-1.0",
		"name": "Open Data Commons Open Database License 1.0",
		"version": "1.0",
		"url": "https://opendatacommons.org/licenses/odbl/1.0/",
		"instruction": "You are free: To Share, To Create, To Adapt; As long as you: Attribute, Share-Alike, Keep open!",
		"copyright": "© Flensburg University of Applied Sciences"} ],
	"contributors": [
		{"name": "Mario Kropshofer", "email": "mario.kropshofer2@stud.fh-flensburg.de", "date":  "2016-10-05", "comment": "Create table" }, 
		{"name": "Ilka Cussmann", "email": "ilka.cussmann@hs-flensburg.de", "date":  "2016-10-25", "comment": "Complete metadata" },
		{"name": "Ludee", "email": " ", "date": "2017-03-30", "comment": "Update metadata"} ],
	"resources": [{
		"schema": {
			"fields": [
				{"name": "eu_code", "description": "Nuts id for district", "unit": " " },
				{"name": "district", "description": "District name", "unit": " " },
				{"name": "total_gva", "description": "Total gross value added per district", "unit": "Million Euro" },
				{"name": "gva_industry", "description": "Gross value added of industry per district", "unit": "Million Euro" },
				{"name": "gva_tertiary_sector", "description": "Gross value added of tertiary sector per district", "unit": "Million Euro" } ]},
		"meta_version": "1.2" }] }';

-- select description
SELECT obj_description('economic.destatis_gva_per_district' ::regclass) ::json;


-- old version
/* 
COMMENT ON TABLE economic.destatis_gva_per_district
  IS '{
"Name": "Gross value added per district in Germany",
"Source": [{
                  "Name": "Statistisches Bundesamt (Destatis)- VGR der Länder",
                  "URL":  "https://www.destatis.de/DE/Publikationen/Thematisch/VolkswirtschaftlicheGesamtrechnungen/VGRderLaender/VGR_KreisergebnisseBand1.html" }],
"Reference date": "2011",
"Date of collection": "15.12.2015",
"Original file": "VGR_KreisergebnisseBand1_5820009117005.xls",
"Spatial resolution": ["Germany"],
"Description": ["Gross value added per administrative district for the business sectors industry and tertiary sector"],
"Column": [
                   {"Name": "eu_code",
                    "Description": "nuts id for district",
                    "Unit": "" },
                   {"Name": "district",
                    "Description": "district name",
                    "Unit": "" },
                   {"Name": "total_gva",
                    "Description": "total gross value added per district",
                    "Unit": "Million Euro" },
                   {"Name": "gva_industry",
                    "Description": "gross value added of industry per district",
                    "Unit": "Mullion Euro" },
                   {"Name": "gva_tertiary_sector",
                    "Description": "gross value added of tertiary sector per district",
                    "Unit": "Million Euro" }],
"Changes":[
                   {"Name": "Mario Kropshofer",
                    "Mail": "mario.kropshofer2@stud.fh-flensburg.de",
                    "Date":  "05.10.2016",
                    "Comment": "..." }, 
                    
                   {"Name": "Ilka Cussmann",
                    "Mail": "ilka.cussmann@hs-flensburg.de",
                    "Date":  "25.10.2016",
                    "Comment": "Completed json-string" }
                    
                  ],
"ToDo": [""],
"Licence": [{
            "Name": "Open Database License (ODbL) v1.0",
	    "URL": "http://opendatacommons.org/licenses/odbl/1.0/",
	    "Copyright": "ZNES EUF"
	    }
],
                            "Instructions for proper use": [""]
}';
COMMENT ON COLUMN economic.destatis_gva_per_district.gva_tertiary_sector IS 'Commercial, trading, public buildings etc.';

 */