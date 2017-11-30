-- metadata
COMMENT ON TABLE deprecated.genesis_bldg_with_housing_and_flats_by_bldg_type_per_mun IS '{
    "title": "GENESIS - Geb\u00e4ude mit Wohnraum und Wohnungen nach Geb\u00e4udearten - 09.05.2011",
    "description": "Number of buildings with housing and flats per building type per municipality",
    "language": "",
    "spatial": {
        "location": "",
        "extend": "",
        "resolution": ""},
    "temporal": {
        "reference_date": "2011",
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
            {"name": "Jonas G\u00fctter",
            "email": "jonas.guetter@rl-institut.de",
            "date": "2016-11-29",
            "comment": "Created mview where possibly erroneous entries without buildings have been removed"},
            {"name": "Kilian Zimmerer",
            "email": "",
            "date": "2017-11-14",
            "comment": "Update metadata to v1.3"}],
    "resources": [
            {"name": "deprecated.genesis_bldg_with_housing_and_flats_by_bldg_type_per_mun",
            "format": "PostgreSQL",
            "fields": [
                {"name": "mun_id",
                "description": "municipality key 2013",
                "unit": ""},
                {"name": "mun_name",
                "description": "municipality name 2013",
                "unit": ""},
                {"name": "bldg_housing_total",
                "description": "Number of buildings with housing - total",
                "unit": ""},
                {"name": "bldg_housing_house",
                "description": "Number of buildings with housing - houses",
                "unit": ""},
                {"name": "bldg_housing_reshome",
                "description": "Number of buildings with housing - residential homes",
                "unit": ""},
                {"name": "bldg_housing_other",
                "description": "Number of buildings with housing - other",
                "unit": ""},
                {"name": "flat_housing_total",
                "description": "Number of flats in buildings with housing - total",
                "unit": ""},
                {"name": "flat_housing_house",
                "description": "Number of flats in buildings with housing - houses",
                "unit": ""},
                {"name": "flat_housing_reshome",
                "description": "Number of flats in buildings with housing - residential homes",
                "unit": ""},
                {"name": "flat_housing_other",
                "description": "Number of flats in buildings with housing - other",
                "unit": ""}]}],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('deprecated.genesis_bldg_with_housing_and_flats_by_bldg_type_per_mun' ::regclass) ::json;

/*
The previous metadata version
-----------------------------

COMMENT ON TABLE deprecated.genesis_bldg_with_housing_and_flats_by_bldg_type_per_mun IS '{
"Name": "GENESIS - Gebäude mit Wohnraum und Wohnungen nach Gebäudearten - 09.05.2011",

"Source": ["Regionaldatenbank Deutschland", "Code 036-01-5-B", "https://www.regionalstatistik.de/genesis/online/"],

"Reference date": ["2011"],

"Retrieved": ["08.12.2015"],

"Date of collection": ["08.12.2015"],

"Original file": ["036-01-5-B.xlsx"],

"Spatial resolution": ["Germany, Municipality"],

"Description": ["Number of buildings with housing and flats per building type per municipality"],

"Table fields":
[
{"name":"mun_id",
"description":"municipality key 2013",
"description_german":"Kreisschlüssel 2013",
"unit":"" },

{"name":"mun_name",
"description":"municipality name 2013",
"description_german":"Kreisname 2013",
"unit":"" },

{"name":"bldg_housing_total",
"description":"Number of buildings with housing - total",
"description_german":"Anzahl der Gebäude mit Wohnraum - Gesamt",
"unit":"" },

{"name":"bldg_housing_house",
"description":"Number of buildings with housing - houses",
"description_german":"Anzahl der Gebäude mit Wohnraum - Wohngebäude",
"unit":"" },

{"name":"bldg_housing_reshome",
"description":"Number of buildings with housing - residential homes",
"description_german":"Anzahl der Gebäude mit Wohnraum - Wohnheim",
"unit":"" },

{"name":"bldg_housing_other",
"description":"Number of buildings with housing - other",
"description_german":"Anzahl der Gebäude mit Wohnraum - Sonstige",
"unit":"" },


{"name":"flat_housing_total",
"description":"Number of flats in buildings with housing - total",
"description_german":"Anzahl der Wohnungen in Gebäuden mit Wohnraum - Gesamt",
"unit":"" },

{"name":"flat_housing_house",
"description":"Number of flats in buildings with housing - houses",
"description_german":"Anzahl der Wohnungen in Gebäuden mit Wohnraum - Wohngebäude",
"unit":"" },

{"name":"flat_housing_reshome",
"description":"Number of flats in buildings with housing - residential homes",
"description_german":"Anzahl der Wohnungen in Gebäuden mit Wohnraum - Wohnheim",
"unit":"" },

{"name":"flat_housing_other",
"description":"Number of flats in buildings with housing - other",
"description_german":"Anzahl der Wohnungen in Gebäuden mit Wohnraum - Sonstige",
"unit":"" }
],

"Changes":[
  { "name":"Ludwig Schneider", 
    "mail":"ludwig.schenider@rl-institut.de", 
    "date":"08.12.2015", 
    "comment":"Created table"},
  { "name":"Jonas Gütter", 
    "mail":"jonas.guetter@rl-institut.de", 
    "date":"29.11.2016", 
    "comment":"Created mview where possibly erroneous entries without buildings have been removed"} ],

"ToDo": [""],

"Licence": ["Datenlizenz Deutschland – Namensnennung – Version 2.0 (dl-de/by-2-0; http://www.govdata.de/dl-de/by-2-0)"],

"Instructions for proper use": [""]}';
*/
