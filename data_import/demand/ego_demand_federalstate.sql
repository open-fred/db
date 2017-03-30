
-- metadata
COMMENT ON TABLE demand.ego_demand_federalstate IS '{
	"title": "Electricity consumption per federal state in Germany",
	"description": "Electricity consumption of the sectors households, industry and tertiary sector (including others) for the German federal states in 2011",
	"language": [ "eng", "ger" ],
	"reference_date": "2011",
	"sources": [
		{"name": "eGo dataprocessing", "description": " ", "url": "https://github.com/openego/data_processing", "license": "GNU Affero General Public License Version 3 (AGPL-3.0)", "copyright": "© Reiner Lemoine Institut"},
		{"name": "Länderarbeitskreis Energiebilanzen", "description": " ", "url": "http://www.lak-energiebilanzen.de/seiten/energiebilanzenLaender.cfm", "license": " ", "copyright": " "},
		{"name": "Bayerisches Landesamt für Statistik und Datenverarbeitung", "description": " ", "url": "http://www.stmwi.bayern.de/fileadmin/user_upload/stmwivt/Themen/Energie_und_Rohstoffe/Dokumente_und_Cover/Energiebilanz/2014/B-03_bilanzjo_mgh_2014-03-07.pdf", "license": " ", "copyright": " "},
		{"name": "Hessisches Statistisches Landesamt", "description": " ", "url": "http://www.statistik-hessen.de/publikationen/download/277/index.html", "license": " ", "copyright": " "},
		{"name": "Statistisches Amt Mecklenburg-Vorpommern", "description": " ", "url": "https://www.destatis.de/GPStatistik/servlets/MCRFileNodeServlet/MVHeft_derivate_00000168/E453_2011_00a.pdf;jsessionid=CD300CD3A06FF85FDEA864FF4D91D880", "license": " ", "copyright": " "},
		{"name": "Niedersächsisches Ministerium für Umwelt, Energie und Klimaschutz", "description": " ", "url": "http://www.umwelt.niedersachsen.de/energie/daten/co2bilanzen/niedersaechsische-energie--und-co2-bilanzen-2009-6900.html", "license": " ", "copyright": " "},
		{"name": "Information und Technik Nordrhein-Westfalen", "description": " ", "url": "https://webshop.it.nrw.de/gratis/E449%20201100.pdf", "license": " ", "copyright": " "},
		{"name": "Statistisches Landesamt Sachsen-Anhalt", "description": " ", "url": "http://www.stala.sachsen-anhalt.de/download/stat_berichte/6E402_j_2011.pdf", "license": " ", "copyright": " "},
		{"name": "Thüringer Landesamt für Statistik", "description": " ", "url": "http://www.statistik.thueringen.de/webshop/pdf/2011/05402_2011_00.pdf", "license": " ", "copyright": " "} ],
	"spatial": [
		{"extend": "Germany",
		"resolution": "Federal state"} ],
	"license": [
		{"id": "ODbL-1.0",
		"name": "Open Data Commons Open Database License 1.0",
		"version": "1.0",
		"url": "https://opendatacommons.org/licenses/odbl/1.0/",
		"instruction": "You are free: To Share, To Create, To Adapt; As long as you: Attribute, Share-Alike, Keep open!",
		"copyright": "© Flensburg University of Applied Sciences" } ],
	"contributors": [
		{"Name": "Ilka Cussmann", "email": "ilka.cussmann@hs-flensburg.de",
		"Date":  "24.10.2016", "Comment": "Add json-string" }, 
		{"Name": "Ilka Cussmann", "email": "ilka.cussmann@hs-flensburg.de",
		"Date":  "13.03.2016", "Comment": "Rectify incorrect entries" },
		{"name": "Ludee", "email": " ",
		"date": "2017-03-30", "comment": "Update metadata"} ],
	"resources": [{
		"schema": {
			"fields": [
				{"Name": "eu_code", "description": "Nuts code for federal state", "unit": "" },
				{"Name": "federal_states", "description": "Name of federal state in Germany", "unit": "" },
				{"Name": "elec_consumption_housholds", "description": "Annual electricity consumption in the household sector", "unit": "GWh" },
				{"Name": "elec_consumption_industry", "description": "Annual electricity consumption in the industrial sector", "unit": "GWh" },
				{"Name": "elec_consumption_tertiary_sector", "description": "Annual electricity consumption in the tertiary sector including public sector", "unit": "GWh" },
				{"Name": "population", "description": "Inhabitants per federal state", "unit": "" },
				{"Name": "elec_consumption_households_per_person", "description": "Electricity consumption of household sector per inhabitant", "unit": "GWh" } ]},
		"meta_version": "1.2" }] }';

-- select description
SELECT obj_description('demand.ego_demand_federalstate' ::regclass) ::json;


-- old version
/* 
COMMENT ON TABLE demand.ego_demand_federalstate
  IS '{
"Name": "Electricity consumption per federal state in Germany",
"Source": [     {
                  "Name": "open_eGo data_processing",
                  "URL":  "https://github.com/openego/data_processing" }, 
		{
                  "Name": "Länderarbeitskreis Energiebilanzen",
                  "URL":  "http://www.lak-energiebilanzen.de/seiten/energiebilanzenLaender.cfm" }, 
		{
                  "Name": "Bayerisches Landesamt für Statistik und Datenverarbeitung",
                  "URL":  "http://www.stmwi.bayern.de/fileadmin/user_upload/stmwivt/Themen/Energie_und_Rohstoffe/Dokumente_und_Cover/Energiebilanz/2014/B-03_bilanzjo_mgh_2014-03-07.pdf" }, 
		{
                  "Name": "Hessisches Statistisches Landesamt",
                  "URL":  "http://www.statistik-hessen.de/publikationen/download/277/index.html" }, 
		{
                  "Name": "Statistisches Amt Mecklenburg-Vorpommern",
                  "URL":  "https://www.destatis.de/GPStatistik/servlets/MCRFileNodeServlet/MVHeft_derivate_00000168/E453_2011_00a.pdf;jsessionid=CD300CD3A06FF85FDEA864FF4D91D880" }, 
		{
                  "Name": "Niedersächsisches Ministerium für Umwelt, Energie und Klimaschutz",
                  "URL":  "http://www.umwelt.niedersachsen.de/energie/daten/co2bilanzen/niedersaechsische-energie--und-co2-bilanzen-2009-6900.html" }, 
		{
                  "Name": "Information und Technik Nordrhein-Westfalen",
                  "URL":  "https://webshop.it.nrw.de/gratis/E449%20201100.pdf" }, 
		{
                  "Name": "Statistisches Landesamt Sachsen-Anhalt",
                  "URL":  "http://www.stala.sachsen-anhalt.de/download/stat_berichte/6E402_j_2011.pdf" }, 
		{
                  "Name": "Thüringer Landesamt für Statistik",
                  "URL":  "http://www.statistik.thueringen.de/webshop/pdf/2011/05402_2011_00.pdf" }],

"Reference date": "2011",
"Date of collection": "November 2015",
"Original file": "...",
"Spatial resolution": ["Germany"],
"Description": ["Electricity consumption of the sectors households, industry and tertiary sector (including others) for the German federal states in 2011"],
"Column": [
                   {"Name": "eu_code",
                    "Description": "Nuts code for federal state",
                    "Unit": "" },
                   {"Name": "federal_states",
                    "Description": "Name of federal state in Germany",
                    "Unit": "" },
                   {"Name": "elec_consumption_housholds",
                    "Description": "Annual electricity consumption in the household sector",
                    "Unit": "GWh" },
                   {"Name": "elec_consumption_industry",
                    "Description": "Annual electricity consumption in the industrial sector",
                    "Unit": "GWh" },
                   {"Name": "elec_consumption_tertiary_sector",
                    "Description": "Annual electricity consumption in the tertiary sector including public sector",
                    "Unit": "GWh" },
                   {"Name": "population",
                    "Description": "Inhabitants per federal state",
                    "Unit": "" },
                   {"Name": "elec_consumption_households_per_person",
                    "Description": "Electricity consumption of household sector per inhabitant",
                    "Unit": "GWh" }],
"Changes":[
                   {"Name": "Ilka Cussmann",
                    "Mail": "ilka.cussmann@hs-flensburg.de",
                    "Date":  "24.10.2016",
                    "Comment": "Add json-string" }, 
                   {"Name": "Ilka Cussmann",
                    "Mail": "ilka.cussmann@hs-flensburg.de",
                    "Date":  "13.03.2016",
                    "Comment": "Rectify incorrect entries" }
                  ],
"ToDo": [""],
"Licence": [{
	"Name":		"Open Database License (ODbL) v1.0",
	"URL":		"http://opendatacommons.org/licenses/odbl/1.0/",
	"Copyright": 	"Flensburg University of Applied Sciences"}],
"Instructions for proper use": [""]
}'; 
*/
