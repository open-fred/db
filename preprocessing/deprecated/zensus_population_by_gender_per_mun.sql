--metadata
COMMENT ON TABLE deprecated.zensus_population_by_gender_per_mun IS '{
    "title": "Statistisches Bundesamt (DESTATIS) - Gemeindeverzeichnis-Sonderver\u00f6ffentlichung - Alle politisch selbst\u00e4ndigen Gemeinden in Deutschland nach Bev\u00f6lkerung - Gemeinden - 31.12.2011",
    "description": "Population by gender per municipality based on the population census 2011",
    "language": "",
    "spatial": {
        "location": "",
        "extend": "",
        "resolution": ""},
    "temporal": {
        "reference_date": "31.12.2011",
        "start": "",
        "end": "",
        "resolution": ""},
    "sources": [
            {"name": "",
            "description": "",
            "url": "",
            "license": "",
            "copyright": ""}],
    "license": {
        "id": "dl-de/by-2-0",
        "name": "Datenlizenz Deutschland \\u2014 Namensnennung",
        "version": "2.0",
        "url": "https://www.govdata.de/dl-de/by-2-0",
        "instruction": "",
        "copyright": "\u00a9 BBSR Bonn 2015"},
    "contributors": [
            {"name": "Ludwig Schneider",
            "email": "ludwig.schenider@rl-institut.de",
            "date": "2015-12-09",
            "comment": "Created table"},
            {"name": "Kilian Zimmerer",
            "email": "",
            "date": "2017-11-14",
            "comment": "Update metadata to v1.3"}],
    "resources": [
            {"name": "deprecated.zensus_population_by_gender_per_mun",
            "format": "PostgreSQL",
            "fields": [
                {"name": "state_id",
                "description": "federal state id",
                "unit": ""},
                {"name": "state_name",
                "description": "federal state name",
                "unit": ""},
                {"name": "mun_id",
                "description": "municipality key",
                "unit": ""},
                {"name": "mun_name",
                "description": "municipality name",
                "unit": ""},
                {"name": "pop_total",
                "description": "population - total",
                "unit": "individuals"},
                {"name": "pop_male",
                "description": "population - male",
                "unit": "individuals"},
                {"name": "pop_female",
                "description": "population - female",
                "unit": "individuals"},
                {"name": "pop_total_old",
                "description": "population - total - old census",
                "unit": "individuals"},
                {"name": "pop_male_old",
                "description": "population - male - old census",
                "unit": "individuals"},
                {"name": "pop_female_old",
                "description": "population - female - old census",
                "unit": "individuals"},
                {"name": "pop_diff",
                "description": "population - difference between 2011 and old data",
                "unit": "individuals"},
                {"name": "pop_pct",
                "description": "population - difference in percentage",
                "unit": "individuals"}]}],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('deprecated.zensus_population_by_gender_per_mun' ::regclass) ::json;

/*
The previous metadata version
-----------------------------

COMMENT ON TABLE deprecated.zensus_population_by_gender_per_mun IS '{
"Name": "Statistisches Bundesamt (DESTATIS) - Gemeindeverzeichnis-Sonderveröffentlichung - Alle politisch selbständigen Gemeinden in Deutschland nach Bevölkerung - Gemeinden - 31.12.2011",

"Source": ["Gemeindeverzeichnis-Informationssystem (GV-ISys)", "https://www.destatis.de/DE/ZahlenFakten/LaenderRegionen/Regionales/Gemeindeverzeichnis/Administrativ/AdministrativeUebersicht.html"],

"Reference date": ["31.12.2011"],

"Retrieved": ["09.12.2015"],

"Date of collection": ["09.12.2015"],

"Original file": ["Zensus_Gemeinden.xls"],

"Spatial resolution": ["Germany, Municipality"],

"Description": ["Population by gender per municipality based on the population census 2011",
 "Alle politisch selbständigen Gemeinden in Deutschland nach Bevölkerung am 31.12.2011 auf Grundlage des Zensus 2011 und früherer Zählungen "],

"Table fields":
[
{"name":"state_id",
"description":"federal state id",
"description_german":"Bundesland ID",
"unit":""},

{"name":"state_name",
"description":"federal state name",
"description_german":"Bundeslandname",
"unit":""},

{"name":"mun_id",
"description":"municipality key",
"description_german":"Gemeindeschlüssel",
"unit":""},

{"name":"mun_name",
"description":"municipality name",
"description_german":"Gemeindenname",
"unit":""},

{"name":"pop_total",
"description":"population - total",
"description_german":"Bevölkerung - Gesamt",
"unit":"individuals"},

{"name":"pop_male",
"description":"population - male",
"description_german":"Bevölkerung - Männlich",
"unit":"individuals"},

{"name":"pop_female",
"description":"population - female",
"description_german":"Bevölkerung - Weiblich",
"unit":"individuals"},

{"name":"pop_total_old",
"description":"population - total - old census",
"description_german":"Bevölkerung - Gesamt - Frühere Zählungen",
"unit":"individuals"},

{"name":"pop_male_old",
"description":"population - male - old census",
"description_german":"Bevölkerung - Männlich - Frühere Zählungen",
"unit":"individuals"},

{"name":"pop_female_old",
"description":"population - female - old census",
"description_german":"Bevölkerung - Weiblich - Frühere Zählungen",
"unit":"individuals"},

{"name":"pop_diff",
"description":"population - difference between 2011 and old data",
"description_german":"Bevölkerung - Differenz zwischen 2011 und früheren Zählungen",
"unit":"individuals"},

{"name":"pop_pct",
"description":"population - difference in percentage",
"description_german":"Bevölkerung - Differenz in Prozent",
"unit":"individuals"}
],

"Changes":[
  { "name":"Ludwig Schneider", 
    "mail":"ludwig.schenider@rl-institut.de", 
    "date":"09.12.2015", 
    "comment":"Created table"} ],

"ToDo": [""],

"Licence": ["Datenlizenz Deutschland – Namensnennung – Version 2.0 (dl-de/by-2-0; http://www.govdata.de/dl-de/by-2-0)"],

"Instructions for proper use": ["Die Nutzer haben sicherzustellen, dass 1. alle den Daten, Metadaten, Karten und Webdiensten beigegebenen Quellenvermerke und sonstigen rechtlichen Hinweise erkennbar und in optischem Zusammenhang eingebunden werden. Die Nutzung bzw. der Abdruck ist nur mit vollständiger Angabe des Quellenvermerks © BBSR Bonn 2015 gestattet. Bei der Darstellung auf einer Webseite ist © Bundesinstitut für Bau-, Stadt- und Raumforschung mit der URL http://www.bbsr.bund.de zu verlinken. 2. bei Veränderungen (insbesondere durch Hinzufügen neuer Inhalte), Bearbeitungen, neuen Gestaltungen oder sonstigen Abwandlungen mit einem Veränderungshinweis im beigegebenen Quellenvermerk Art und Urheberschaft der Veränderungen deutlich kenntlich gemacht wird. Bei Karten ist in diesem Fall das Logo des BBSR zu entfernen."]}';
*/
