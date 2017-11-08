/*
This script provides an SQL example of the metadata documentation
A definition of metadata can be found in the openmod glossary http://wiki.openmod-initiative.org/wiki/Metadata
A further description can be found on http://wiki.openmod-initiative.org/wiki/DatabaseRules

__copyright__ 	= "Reiner Lemoine Institut"
__license__ 	= "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__ 	= "https://github.com/openego/data_processing/blob/master/LICENSE"
__author__ 	= "KilianZimmerer & Ludee"
__contains__	= "http://stackoverflow.com/questions/383692/what-is-json-and-why-would-i-use-it","https://specs.frictionlessdata.io/data-package/"

*/

-- metadata
COMMENT ON TABLE deprecated.bbsr_rag_spatial_types_per_mun IS '{
    "title": "BBSR - Raumgliederungen auf Gemeindebasis - Raumtypen: Besiedelung und Lage - Gemeinden - 2010",
    "description": "Spatial Types in German Municipalities by Population and by Location",
    "language": "",
    "spatial": {
        "location": "",
        "extend": "",
        "resolution": ""},
    "temporal": {
        "reference_date": "2010",
        "start": "",
        "end": "",
        "resolution": ""},
    "sources": [
            {"name": "",
            "description": "",
            "url": "",
            "license": "",
            "copyright": "\u00a9 BBSR Bonn 2015"},
            {"name": "",
            "description": "",
            "url": "",
            "license": "",
            "copyright": "\u00a9 BBSR Bonn 2015"}],
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
            {"name": "deprecated.bbsr_rag_spatial_types_per_mun",
            "format": "PostgreSQL",
            "fields": [
                {"name": "mun_id",
                "description": "municipality key 2010",
                "unit": ""},
                {"name": "mun_name",
                "description": "municipality name 2010",
                "unit": ""},
                {"name": "munassn_id",
                "description": "municipal association key 2010",
                "unit": ""},
                {"name": "munassn_name",
                "description": "municipal association name 2010",
                "unit": ""},
                {"name": "sp_typ_pop",
                "description": "spatial types by population",
                "unit": "individuals"},
                {"name": "sp_typ_loc",
                "description": "spatial types by location",
                "unit": "individuals"}]}],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('deprecated.bbsr_rag_spatial_types_per_mun' ::regclass) ::json;


/*
The previous metadata version
-----------------------------

COMMENT ON TABLE deprecated.bbsr_rag_spatial_types_per_mun IS '{
"Name": "BBSR - Raumgliederungen auf Gemeindebasis - Raumtypen: Besiedelung und Lage - Gemeinden - 2010",
"Source": ["Downloads - Raumabgrenzungen: Referenzdateien und Karten", "http://www.bbsr.bund.de/BBSR/DE/Raumbeobachtung/Downloads/downloads_node.html"],
"Reference date": ["2010"],
"Retrieved": ["08.12.2015"],
"Date of collection": ["08.12.2015"],
"Original file": ["Referenz_Typen.xls"],
"Spatial resolution": ["Germany, Municipality"],
"Description": ["Spatial Types in German Municipalities by Population and by Location",
"Raumtypen in Gemeinden nach Besiedlung und Lage"],
"Table fields":
[
{"name":"mun_id",
"description":"municipality key 2010",
"description_german":"Kreisschlüssel 2010",
"unit":"" },
{"name":"mun_name",
"description":"municipality name 2010",
"description_german":"Kreisname 2010",
"unit":"" },
{"name":"munassn_id",
"description":"municipal association key 2010",
"description_german":"Kreisschlüssel 2010",
"unit":"" },
{"name":"munassn_name",
"description":"municipal association name 2010",
"description_german":"Kreisname 2010",
"unit":"" },
{"name":"sp_typ_pop",
"description":"spatial types by population",
"description_german":"",
"unit":"individuals" },
{"name":"sp_typ_loc",
"description":"spatial types by location",
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
"Instructions for proper use": ["Die Nutzer haben sicherzustellen, dass 1. alle den Daten, Metadaten, Karten und Webdiensten beigegebenen Quellenvermerke und sonstigen rechtlichen Hinweise erkennbar und in optischem Zusammenhang eingebunden werden. Die Nutzung bzw. der Abdruck ist nur mit vollständiger Angabe des Quellenvermerks \u00A9 BBSR Bonn 2015 gestattet. Bei der Darstellung auf einer Webseite ist \u00A9 Bundesinstitut für Bau-, Stadt- und Raumforschung mit der URL http://www.bbsr.bund.de zu verlinken. 2. bei Veränderungen (insbesondere durch Hinzufügen neuer Inhalte), Bearbeitungen, neuen Gestaltungen oder sonstigen Abwandlungen mit einem Veränderungshinweis im beigegebenen Quellenvermerk Art und Urheberschaft der Veränderungen deutlich kenntlich gemacht wird. Bei Karten ist in diesem Fall das Logo des BBSR zu entfernen."]}';

*/
