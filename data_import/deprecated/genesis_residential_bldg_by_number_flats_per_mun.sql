--metadata
COMMENT ON TABLE deprecated.genesis_residential_bldg_by_number_flats_per_mun IS '{
    "title": "GENESIS - Wohngeb\u00e4ude nach Anzahl der Wohnungen - 09.05.2011",
    "description": "Number of residential buildings by number of flats per municipality",
    "language": "",
    "spatial": {
        "location": "",
        "extend": "",
        "resolution": ""},
    "temporal": {
        "reference_date": "09.05.2011",
        "start": "",
        "end": "",
        "resolution": ""},
    "sources": [
            {"name": "Regionaldatenbank Deutschland",
            "description": "",
            "url": "https://www.regionalstatistik.de/genesis/online/",
            "license": "",
            "copyright": ""}],
    "license": {
        "id": "dl-de/by-2-0",
        "name": "Datenlizenz Deutschland \\u2014 Namensnennung",
        "version": "2.0",
        "url": "https://www.govdata.de/dl-de/by-2-0",
        "instruction": "",
        "copyright": ""},
    "contributors": [
            {"name": "Ludwig Schneider",
            "email": "ludwig.schenider@rl-institut.de",
            "date": "2015-12-08",
            "comment": "Created table"},
            {"name": "Kilian Zimmerer",
            "email": "",
            "date": "2017-11-14",
            "comment": "Update metadata to v1.3"}],
    "resources": [
            {"name": "deprecated.genesis_residential_bldg_by_number_flats_per_mun",
            "format": "PostgreSQL",
            "fields": [
                {"name": "mun_id",
                "description": "municipality key 2011",
                "unit": ""},
                {"name": "mun_name",
                "description": "municipality name 2011",
                "unit": ""},
                {"name": "r_bldg_total",
                "description": "Number of residential buildings - total",
                "unit": ""},
                {"name": "r_bldg_flat_1",
                "description": "Number of residential buildings - 1 flat",
                "unit": ""},
                {"name": "r_bldg_flat_2",
                "description": "Number of residential buildings - 2 flats",
                "unit": ""},
                {"name": "r_bldg_flat_3-6",
                "description": "Number of residential buildings - 3 to 6 flats",
                "unit": ""},
                {"name": "r_bldg_flat_7-12",
                "description": "Number of residential buildings - 7 to 12 flats",
                "unit": ""},
                {"name": "r_bldg_flat_13-",
                "description": "Number of residential buildings - 13 and more flats",
                "unit": ""}]}],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('deprecated.genesis_residential_bldg_by_number_flats_per_mun' ::regclass) ::json;

/*
The previous metadata version
-----------------------------

COMMENT ON TABLE deprecated.genesis_residential_bldg_by_number_flats_per_mun IS '{
"Name": "GENESIS - Wohngebäude nach Anzahl der Wohnungen - 09.05.2011",

"Source": ["Regionaldatenbank Deutschland", "Code 036-05-5-B", "https://www.regionalstatistik.de/genesis/online/"],

"Reference date": ["09.05.2011"],

"Retrieved": ["08.12.2015"],

"Date of collection": ["08.12.2015"],

"Original file": ["036-02-5-B.xlsx"],

"Spatial resolution": ["Germany, Municipality"],

"Description": ["Number of residential buildings by number of flats per municipality"],

"Table fields":
[
{"name":"mun_id",
"description":"municipality key 2011",
"description_german":"Kreisschlüssel 2011",
"unit":"" },

{"name":"mun_name",
"description":"municipality name 2011",
"description_german":"Kreisname 2011",
"unit":"" },

{"name":"r_bldg_total",
"description":"Number of residential buildings - total",
"description_german":"Anzahl der Wohngebäude - Gesamt",
"unit":"" },

{"name":"r_bldg_flat_1",
"description":"Number of residential buildings - 1 flat",
"description_german":"Anzahl der Wohngebäude - 1 Wohnung",
"unit":"" },

{"name":"r_bldg_flat_2",
"description":"Number of residential buildings - 2 flats",
"description_german":"Anzahl der Wohngebäude - 2 Wohnungen",
"unit":"" },

{"name":"r_bldg_flat_3-6",
"description":"Number of residential buildings - 3 to 6 flats",
"description_german":"Anzahl der Wohngebäude - 3 bis 6 Wohnungen",
"unit":"" },

{"name":"r_bldg_flat_7-12",
"description":"Number of residential buildings - 7 to 12 flats",
"description_german":"Anzahl der Wohngebäude - 7 bis 12 Wohnungen",
"unit":"" },

{"name":"r_bldg_flat_13-",
"description":"Number of residential buildings - 13 and more flats",
"description_german":"Anzahl der Wohngebäude - 13 und mehr Wohnungen",
"unit":"" }
],

"Changes":[
  { "name":"Ludwig Schneider", 
    "mail":"ludwig.schenider@rl-institut.de", 
    "date":"08.12.2015", 
    "comment":"Created table"} ],

"ToDo": [""],

"Licence": ["Datenlizenz Deutschland – Namensnennung – Version 2.0 (dl-de/by-2-0; http://www.govdata.de/dl-de/by-2-0)"],

"Instructions for proper use": [""]}';
*/
