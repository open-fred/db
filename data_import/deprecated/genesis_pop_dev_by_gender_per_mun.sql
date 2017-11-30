--metadata
COMMENT ON TABLE deprecated.genesis_pop_dev_by_gender_per_mun IS '{
    "title": "GENESIS - Bev\u00f6lkerungsstand: Bev\u00f6lkerung nach Geschlecht - 31.12.2008-31.12.2013",
    "description": "Population by Gender per Municipality",
    "language": "",
    "spatial": {
        "location": "",
        "extend": "",
        "resolution": ""},
    "temporal": {
        "reference_date": "2013",
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
            {"name": "deprecated.genesis_pop_dev_by_gender_per_mun",
            "format": "PostgreSQL",
            "fields": [
                {"name": "mun_id",
                "description": "municipality key 2013",
                "unit": ""},
                {"name": "mun_name",
                "description": "municipality name 2013",
                "unit": ""},
                {"name": "pop_2013_total",
                "description": "population total 2013",
                "unit": "individuals"},
                {"name": "pop_2013_male",
                "description": "population male 2013",
                "unit": "individuals"},
                {"name": "pop_2013_female",
                "description": "population female 2013",
                "unit": "individuals"}]}],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('deprecated.genesis_pop_dev_by_gender_per_mun' ::regclass) ::json;


/*
The previous metadata version
-----------------------------

COMMENT ON TABLE deprecated.genesis_pop_dev_by_gender_per_mun IS '{
"Name": "GENESIS - Bevölkerungsstand: Bevölkerung nach Geschlecht - 31.12.2008-31.12.2013",

"Source": ["Regionaldatenbank Deutschland", "Code 173-01-5-B", "https://www.regionalstatistik.de/genesis/online/"],

"Reference date": ["2013"],

"Retrieved": ["08.12.2015"],

"Date of collection": ["08.12.2015"],

"Original file": ["173-01-5-B.xlsx"],

"Spatial resolution": ["Germany, Municipality"],

"Description": ["Population by Gender per Municipality"],

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

{"name":"pop_2013_total",
"description":"population total 2013",
"description_german":"",
"unit":"individuals" },

{"name":"pop_2013_male",
"description":"population male 2013",
"description_german":"",
"unit":"individuals" },

{"name":"pop_2013_female",
"description":"population female 2013",
"description_german":"",
"unit":"individuals" }
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
