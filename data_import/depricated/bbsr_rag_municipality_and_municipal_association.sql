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

-- metadata description
COMMENT ON TABLE deprecated.bbsr_rag_municipality_and_municipal_association IS '{
	"title": "BBSR - Raumgliederungen auf Gemeindebasis - Gemeinden und Gemeindeverbände - 2013",
	"description": "example metadata for example data",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
		"extent": "Germany",
		"resolution": "Municipality"},
	"temporal": 
		{"reference_date": "2016-01-01",
		"start": "2017-01-01",
		"end": "2017-12-31",
		"resolution": "hour"},
	"sources": [
		{"name": "Bundesinstitut für Bau-, Stadt- und Raumforschung ", "description": "Raumabgrenzungen: Referenzdateien und Karten", "url": "http://www.bbsr.bund.de/BBSR/DE/Raumbeobachtung/Downloads/downloads_node.html", "license": "Datenlizenz Deutschland – Namensnennung - Version 2.0", "copyright": "© BBSR Bonn 2015"}],
	"license": 
		{"id": "",
		"name": "Datenlizenz Deutschland - Namensnennung",
		"version": "2.0",
		"url": "https://www.govdata.de/dl-de/by-2-0",
		"instruction": "",
		"copyright": "© BBSR Bonn 2015"},
	"contributors": [
		{"name": "Ludee", "email": "", "date": "2015-08-12", "comment": "Create metadata"}],
	"resources": [
		{"name": "deprecated.bbsr_rag_municipality_and_municipal_association",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "mun_id", "description": "municipality key 2013", "unit": "none"},
			{"name": "mun_name", "description": "municipality name 2013", "unit": "none"},
			{"name": "munassn_id", "description": "municipal association key 2013", "unit": "none"},
			{"name": "munassn_name", "description": "municipal association name 2013", "unit": "none"},
            {"name": "munassn_location", "description": "municipal association location 2013", "unit": "none"},
            {"name": "area_sqm", "description": "area in square meter", "unit": "sqm"},
            {"name": "pop_2013", "description": "population 2013", "unit": "individuals"}] } ],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('deprecated.bbsr_rag_municipality_and_municipal_association' ::regclass) ::json;


/*
The previous metadata version
-----------------------------

COMMENT ON TABLE deprecated.bbsr_rag_spatial_types_per_mun
  IS '{"Name": "BBSR - Raumgliederungen auf Gemeindebasis - Raumtypen: Besiedelung und Lage - Gemeinden - 2010",

"Source": ["Downloads - Raumabgrenzungen: Referenzdateien und Karten", "http://www.bbsr.bund.de/BBSR/DE/Raumbeobachtung/Downloads/downloads_node.html"],

"Reference date": ["2010"]

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

"Instructions for proper use": ["Die Nutzer haben sicherzustellen, dass 1. alle den Daten, Metadaten, Karten und Webdiensten beigegebenen Quellenvermerke und sonstigen rechtlichen Hinweise erkennbar und in optischem Zusammenhang eingebunden werden. Die Nutzung bzw. der Abdruck ist nur mit vollständiger Angabe des Quellenvermerks "© BBSR Bonn 2015" gestattet. Bei der Darstellung auf einer Webseite ist "© Bundesinstitut für Bau-, Stadt- und Raumforschung" mit der URL "http://www.bbsr.bund.de" zu verlinken. 2. bei Veränderungen (insbesondere durch Hinzufügen neuer Inhalte), Bearbeitungen, neuen Gestaltungen oder sonstigen Abwandlungen mit einem Veränderungshinweis im beigegebenen Quellenvermerk Art und Urheberschaft der Veränderungen deutlich kenntlich gemacht wird. Bei Karten ist in diesem Fall das Logo des BBSR zu entfernen."]}';

*/
