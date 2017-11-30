--metadata
COMMENT ON TABLE deprecated.genesis_flats_by_living_space_classes_per_mun IS '{
    "title": "GENESIS - Wohnungen in Geb\u00e4uden mit Wohnraum nach Gr\u00f6\u00dfenklassen der Wohnfl\u00e4che - 09.05.2011",
    "description": "Number of flats in residential buildings by living space classes",
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
            {"name": "deprecated.genesis_flats_by_living_space_classes_per_mun",
            "format": "PostgreSQL",
            "fields": [
                {"name": "mun_id",
                "description": "municipality key 2011",
                "unit": ""},
                {"name": "mun_name",
                "description": "municipality name 2011",
                "unit": ""},
                {"name": "flats_total",
                "description": "number of flats - total",
                "unit": ""},
                {"name": "flats_0-40",
                "description": "number of flats - 0-40 sqm",
                "unit": ""},
                {"name": "flats_40-59",
                "description": "number of flats - 40-59 sqm",
                "unit": ""},
                {"name": "flats_60-79",
                "description": "number of flats - 60-79 sqm",
                "unit": ""},
                {"name": "flats_80-99",
                "description": "number of flats - 80-99 sqm",
                "unit": ""},
                {"name": "flats_100-119",
                "description": "number of flats - 100-119 sqm",
                "unit": ""},
                {"name": "flats_120-139",
                "description": "number of flats - 120-139 sqm",
                "unit": ""},
                {"name": "flats_140-159",
                "description": "number of flats - 140-159 sqm",
                "unit": ""},
                {"name": "flats_160-179",
                "description": "number of flats - 160-179 sqm",
                "unit": ""},
                {"name": "flats_180-199",
                "description": "number of flats - 180-199 sqm",
                "unit": ""},
                {"name": "flats_200-",
                "description": "number of flats - 200- sqm",
                "unit": ""}]}],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('deprecated.genesis_flats_by_living_space_classes_per_mun' ::regclass) ::json;

/*
The previous metadata version
-----------------------------

COMMENT ON TABLE deprecated.genesis_flats_by_living_space_classes_per_mun IS '{
"Name": "GENESIS - Wohnungen in Gebäuden mit Wohnraum nach Größenklassen der Wohnfläche - 09.05.2011",

"Source": ["Regionaldatenbank Deutschland", "Code 036-10-5-B", "https://www.regionalstatistik.de/genesis/online/"],

"Reference date": ["09.05.2011"],

"Retrieved": ["08.12.2015"],

"Date of collection": ["08.12.2015"],

"Original file": ["036-10-5-B.xlsx"],

"Spatial resolution": ["Germany, Municipality"],

"Description": ["Number of flats in residential buildings by living space classes"],

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

{"name":"flats_total",
"description":"number of flats - total",
"description_german":"Anzahl der Wohnungen - Gesamt",
"unit":""},

{"name":"flats_0-40",
"description":"number of flats - 0-40 sqm",
"description_german":"Anzahl der Wohnungen - 0-40 m²",
"unit":""},

{"name":"flats_40-59",
"description":"number of flats - 40-59 sqm",
"description_german":"Anzahl der Wohnungen - 40-59 m²",
"unit":""},

{"name":"flats_60-79",
"description":"number of flats - 60-79 sqm",
"description_german":"Anzahl der Wohnungen - 60-79 m²",
"unit":""},

{"name":"flats_80-99",
"description":"number of flats - 80-99 sqm",
"description_german":"Anzahl der Wohnungen - 80-99 m²",
"unit":""},

{"name":"flats_100-119",
"description":"number of flats - 100-119 sqm",
"description_german":"Anzahl der Wohnungen - 100-119 m²",
"unit":""},

{"name":"flats_120-139",
"description":"number of flats - 120-139 sqm",
"description_german":"Anzahl der Wohnungen - 120-139 m²",
"unit":""},

{"name":"flats_140-159",
"description":"number of flats - 140-159 sqm",
"description_german":"Anzahl der Wohnungen - 140-159 m²",
"unit":""},

{"name":"flats_160-179",
"description":"number of flats - 160-179 sqm",
"description_german":"Anzahl der Wohnungen - 160-179 m²",
"unit":""},

{"name":"flats_180-199",
"description":"number of flats - 180-199 sqm",
"description_german":"Anzahl der Wohnungen - 180-199 m²",
"unit":""},

{"name":"flats_200-",
"description":"number of flats - 200- sqm",
"description_german":"Anzahl der Wohnungen - 200- m²",
"unit":""}
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
