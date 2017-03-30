
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
		{"name": "Corine Land Cover - 2012 - Vector - ESRI Geodatabase", "description": " ", "url": "http://land.copernicus.eu/pan-european/corine-land-cover", "license": " ", "copyright": " "} ],
	"spatial": [
		{"extend": "europe",
		"resolution": "100m"} ],
	"license": [
		{"id": "ODbL-1.0",
		"name": "Open Data Commons Open Database License 1.0",
		"version": "1.0",
		"url": "https://opendatacommons.org/licenses/odbl/1.0/",
		"instruction": "You are free: To Share, To Create, To Adapt; As long as you: Attribute, Share-Alike, Keep open!",
		"copyright": "© Reiner Lemoine Institut"} ],
	"contributors": [
		{"name": "Ludee", "email": " ", "date": "2015-12-09", "comment": "Create table"},
		{"name": "Ludee", "email": " ", "date": "2017-03-30", "comment": "Update metadata"} ],
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
 