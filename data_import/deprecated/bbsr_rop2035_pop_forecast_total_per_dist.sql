-- metadata
COMMENT ON TABLE deprecated.bbsr_rop2035_pop_forecast_total_per_dist IS '{
    "title": "BBSR - Raumordnungsprognose 2035 nach dem Zensus - Bev\u00f6lkerung insgesamt - Kreise - 2012",
    "description": "Population Projection 2012-2035 per district",
    "language": "",
    "spatial": {
        "location": "",
        "extend": "",
        "resolution": ""},
    "temporal": {
        "reference_date": "2012",
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
            "date": "2015-12-07",
            "comment": "Created table"},
            {"name": "Kilian Zimmerer",
            "email": "",
            "date": "2017-11-8",
            "comment": "Update metadata to v1.3"}],
    "resources": [
            {"name": "deprecated.bbsr_rop2035_pop_forecast_total_per_dist",
            "format": "PostgreSQL",
            "fields": [
                {"name": "district_id",
                "description": "district key 2011",
                "unit": ""},
                {"name": "district_name",
                "description": "district name 2011",
                "unit": ""},
                {"name": "age_group",
                "description": "age group",
                "unit": "years"},
                {"name": "pop_2012",
                "description": "population 2012 - statistical data",
                "unit": "individuals"},
                {"name": "pop_2013",
                "description": "population 2013 - forecast",
                "unit": "individuals"},
                {"name": "pop_2035",
                "description": "population 2035 - forecast",
                "unit": "individuals"}]}],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('deprecated.bbsr_rop2035_pop_forecast_total_per_dist' ::regclass) ::json;

/*
The previous metadata version
-----------------------------

-- metadata
COMMENT ON TABLE deprecated.bbsr_rop2035_pop_forecast_total_per_dist IS '{
"Name": "BBSR - Raumordnungsprognose 2035 nach dem Zensus - Bevölkerung insgesamt - Kreise - 2012",

"Source": ["Raumordnungsprognose 2035 nach dem Zensus", "http://www.bbsr.bund.de/BBSR/DE/Raumbeobachtung/UeberRaumbeobachtung/Komponenten/Raumordnungsprognose/Download_ROP2035/DL_ROP2035_uebersicht.html"],

"Reference date": ["2012"],

"Retrieved": ["07.12.2015"],

"Date of collection": ["07.12.2015"],

"Original file": ["Bev_Krs_Insg_2012_2035.xlsx"],

"Spatial resolution": ["Germany, Districts"],

"Description": ["Population Projection 2012-2035 per district",
 "Population at end of year; 2012 data from official statistics (partly estimated), from 2013 forecast data",
 "Bevölkerung am Jahresende; 2012 Daten aus amtlicher Statistik (teilweise umgeschätzt), ab 2013 Prognosedaten"],

"Table fields":
[
{"name":"district_id",
"description":"district key 2011",
"description_german":"Kreisschlüssel 2011",
"unit":"" },

{"name":"district_name",
"description":"district name 2011",
"description_german":"Kreisname 2011",
"unit":"" },

{"name":"age_group",
"description":"age group",
"description_german":"Alterklasse",
"unit":"years" },

{"name":"pop_2012",
"description":"population 2012 - statistical data",
"description_german":"",
"unit":"individuals" },

{"name":"pop_2013",
"description":"population 2013 - forecast",
"description_german":"",
"unit":"individuals" },


{"name":"pop_2035",
"description":"population 2035 - forecast",
"description_german":"",
"unit":"individuals" }
],

"Changes":[
  { "name":"Ludwig Schneider", 
    "mail":"ludwig.schenider@rl-institut.de", 
    "date":"07.12.2015", 
    "comment":"Created table"} ],

"ToDo": [""],

"Licence": ["Datenlizenz Deutschland – Namensnennung – Version 2.0 (dl-de/by-2-0; http://www.govdata.de/dl-de/by-2-0)"],

"Instructions for proper use": ["Die Nutzer haben sicherzustellen, dass 1. alle den Daten, Metadaten, Karten und Webdiensten beigegebenen Quellenvermerke und sonstigen rechtlichen Hinweise erkennbar und in optischem Zusammenhang eingebunden werden. Die Nutzung bzw. der Abdruck ist nur mit vollständiger Angabe des Quellenvermerks © BBSR Bonn 2015 gestattet. Bei der Darstellung auf einer Webseite ist © Bundesinstitut für Bau-, Stadt- und Raumforschung mit der URL http://www.bbsr.bund.de zu verlinken. 2. bei Veränderungen (insbesondere durch Hinzufügen neuer Inhalte), Bearbeitungen, neuen Gestaltungen oder sonstigen Abwandlungen mit einem Veränderungshinweis im beigegebenen Quellenvermerk Art und Urheberschaft der Veränderungen deutlich kenntlich gemacht wird. Bei Karten ist in diesem Fall das Logo des BBSR zu entfernen."]}';

*/

