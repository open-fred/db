
-- rename geom
ALTER TABLE		environmental.copernicus_clc_2012_v_18_4
RENAME COLUMN 		wkb_geometry TO geom;

-- index (geom)
CREATE INDEX 		copernicus_clc_2012_v_18_4_gix 
	ON 		environmental.copernicus_clc_2012_v_18_4 USING GIST (geom);

-- metadata
COMMENT ON TABLE environmental.copernicus_clc_2012_v_18_4 IS '{
	"title": "Copernicus Land Monitoring Services  - CORINE Land Cover (CLC) - CLC 2012",
	"description": "Copernicus is a European system for monitoring the Earth. Data is collected by different sources, including Earth observation satellites and in-situ sensors. The data is processed and provides reliable and up-to-date information about six thematic areas: land, marine, atmosphere, climate change, emergency management and security.",
	"language": [ "eng" ],
	"reference_date": "2012",
	"sources": [
		{"name": "Corine Land Cover (CLC) 2012, Version 18.5.1", "description": "CLC2012 is the 4th CORINE Land Cover inventory and took 3 years to finalize. A dual coverage of satellite images were used. Computer Assisted Photo-Interpretation (CAPI) was the dominating mapping technology. The number of countries using advanced (bottom-up) solutions has slightly increased. All of the EEA39 countries have participated within the official lifetime of the project. Please note that a technical semantic check for this product is still ongoing. It is therefore possible that a minor update will follow in 2016. The product is only partially validated.", "url": "http://land.copernicus.eu/pan-european/corine-land-cover/clc-2012/view", "license": "COMMISSION DELEGATED REGULATION (EU) No 1159/2013", "copyright": "© European Union"} ],
	"spatial": [
		{"extend": "Europe",
		"resolution": " "} ],
	"license": [
		{"id": " ",
		"name": "COMMISSION DELEGATED REGULATION (EU) No 1159/2013",
		"version": " ",
		"url": "http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32013R1159",
		"instruction": "Access to data is based on a principle of full, open and free access as established by the Copernicus data and information policy Regulation (EU) No 1159/2013 of 12 July 2013. This regulation establishes registration and licensing conditions for GMES/Copernicus users and can be found here. Free, full and open access to this data set is made on the conditions that: 1. When distributing or communicating Copernicus dedicated data and Copernicus service information to the public, users shall inform the public of the source of that data and information. 2. Users shall make sure not to convey the impression to the public that the users activities are officially endorsed by the Union. 3. Where that data or information has been adapted or modified, the user shall clearly state this. 4. The data remain the sole property of the European Union. Any information and data produced in the framework of the action shall be the sole property of the European Union. Any communication and publication by the beneficiary shall acknowledge that the data were produced “with funding by the European Union”.",
		"copyright": "© European Union"} ],
	"contributors": [
		{"name": "Ludee", "email": " ", "date": "2015-12-09", "comment": "Create table"},
		{"name": "Ludee", "email": " ", "date": "2017-03-30", "comment": "Update metadata"},
		{"name": "Ludee", "email": " ", "date": "2017-04-04", "comment": "Update license"}],
	"resources": [{
		"schema": {
			"fields": [
				{"name": "ogc_fid", "description": "Object id", "unit": ""},
				{"name": "geom", "description": "Geometry", "unit": ""},
				{"name": "code_12", "description": " ", "unit": ""},
				{"name": "id", "description": " ", "unit": ""},
				{"name": "remark", "description": " ", "unit": ""},
				{"name": "area_ha", "description": " ", "unit": ""},
				{"name": "shape_length", "description": " ", "unit": ""},
				{"name": "shape_area", "description": " ", "unit": ""} ]},
		"meta_version": "1.2" }] }';

-- select description
SELECT obj_description('environmental.copernicus_clc_2012_v_18_4' ::regclass) ::json;



-- old version
/* 
COMMENT ON TABLE environmental.copernicus_clc_2012_v_18_4
  IS '{"Name": "Copernicus Land Monitoring Services  - CORINE Land Cover (CLC) - CLC 2012",

"Source": ["Corine Land Cover - 2012 - Vector - ESRI Geodatabase", "http://land.copernicus.eu/pan-european/corine-land-cover"],

"Reference date": ["2012"]

"Retrieved": ["09.12.2015"],

"Date of collection": ["09.12.2015"],

"Original file": ["clc12_Version_18_4.gdb"],

"Spatial resolution": ["Europe, 25 ha minimum mapping unit, 100m minimum mapping width, 100m positional accuracy, >85% thematic accuracy"],

"Description": ["Copernicus is a European system for monitoring the Earth. Data is collected by different sources, including Earth observation satellites and in-situ sensors. The data is processed and provides reliable and up-to-date information about six thematic areas: land, marine, atmosphere, climate change, emergency management and security.",
 "Landüberdeckung Europa"],

"Table fields":
[
{"name":"ogc_fid",
"description":"object id",
"description_german":"Objekt ID",
"unit":""},

{"name":"wkb_geometry",
"description":"geometry",
"description_german":"Geometrie",
"unit":""},

{"name":"code_12",
"description":"",
"description_german":"",
"unit":""},

{"name":"id",
"description":"",
"description_german":"",
"unit":""},

{"name":"remark",
"description":"",
"description_german":"",
"unit":""},

{"name":"area_ha",
"description":"",
"description_german":"",
"unit":""},

{"name":"shape_length",
"description":"",
"description_german":"",
"unit":""},

{"name":"shape_area",
"description":"",
"description_german":"",
"unit":""},
],

"Changes":[
  { "name":"Ludwig Schneider", 
    "mail":"ludwig.schenider@rl-institut.de", 
    "date":"09.12.2015", 
    "comment":"Created table"} ],

"ToDo": ["Table fields auf Deutsch, Table fields units"],

"Licence": ["Copyright Copernicus Programme"],

"Instructions for proper use": ["Full, open and free access in line with the Copernicus delegated regulation (EU) No 1159/2013 of 12 July 2013, supplementing Regulation (EU) No 911/2010 of the European Parliament and licensing conditions for GMES users and defining criteria for restricting access to GMES dedicated data and GMES service information) "]}';
 */
 