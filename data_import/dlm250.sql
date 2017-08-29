/*
This script provides metadata for the 'orig_geo.dlm250' datasets
A definition of metadata can be found in the openmod glossary http://wiki.openmod-initiative.org/wiki/Metadata
A further description can be found on http://wiki.openmod-initiative.org/wiki/DatabaseRules

__copyright__ 	= "Reiner Lemoine Institut"
__license__ 	= "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__ 	= "https://github.com/openego/data_processing/blob/master/LICENSE"
__author__ 	= "Ludee & KilianZimmerer"
__contains__	= "http://stackoverflow.com/questions/383692/what-is-json-and-why-would-i-use-it","https://specs.frictionlessdata.io/data-package/"

Additional information:
- Dates must follow the ISO8601 (JJJJ-MM-TT)
- Use a space between Numbers and units (100 m)
- If not applicable use "none"
*/

-- metadata
COMMENT ON TABLE orig_geo.dlm250_SIE01_F IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_SIE01_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_SIE01_F' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_SIE01_P IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_SIE01_P",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_SIE01_P' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_SIE02_F IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_SIE02_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_SIE02_F' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_SIE03_F IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_SIE03_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_SIE03_F' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_SIE03_L IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_SIE03_L",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_SIE03_L' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_SIE03_p IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_SIE03_P",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_SIE03_P' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_SIE04_F IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_SIE04_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_SIE04_F' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_SIE04_L IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_SIE04_L",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_SIE04_L' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_SIE04_P IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_SIE04_P",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_SIE04_P' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_SIE05_P IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_SIE05_P",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_SIE05_P' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_VER01_L IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_VER01_L",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_VER01_L' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_VERO2_L IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_VER02_L",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_VER02_L' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_VERO3_F IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_VER03_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_VER03_F' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_VERO3_L IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_VER03_L",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_VER03_L' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_VERO4_F IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_VER04_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_VER04_F' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_VERO5_L IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_VER05_L",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_VER05_L' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_VERO6_F IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_VER06_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_VER06_F' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_VERO6_L IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_VER06_L",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_VER06_L' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_VERO6_P IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_VER06_P",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_VER06_P' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_VEG01_F IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_VEG01_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_VEG01_F' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_VEG02_F IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_VEG02_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_VEG02_F' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_VEG03_F IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_VEG03_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_VEG03_F' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_VEG04_F IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_VEG04_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_VEG04_F' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_GEW01_F IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_GEW01_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_GEW01_F' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_GEW01_L IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_GEW01_L",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_GEW01_L' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_GEW02_F IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_GEW02_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_GEW02_F' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_GEW02_L IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_GEW02_L",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_GEW02_L' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_GEW02_P IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_GEW02_P",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_GEW02_P' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_GEW03_L IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_GEW03_L",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_GEW03_L' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_GEB01_F IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_GEB01_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_GEB01_F' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_GEB01_L IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_GEB01_L",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_GEB01_L' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_GEB02_F IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_GEB02_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_GEB02_F' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_GEB03_F IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_GEB03_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_GEB03_F' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_REL01_L IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_REL01_L",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_REL01_L' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_REL01_P IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_REL01_P",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_REL01_P' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_REL02_P IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_REL02_P",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_REL02_P' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_HDU01 IS '{
	"title": "Digitales Landschaftsmodell 1:250 000",
	"description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
	"language": [ "ger" ],
	"spatial": 
		{"location": "none",
        "extent": "Germany",
		"resolution": "100 m"},
	"temporal":
		{"reference_date": "",
        "start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
		{"name": "file", "description": "", "url": "", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright", "copyright": "© GeoBasis - DE / BKG 2017"} ],
	"license":
		{"id": "none",
		"name": "none",
		"version": "none",
		"url": "none",
		"instruction": "none",
		"copyright": "none"},
	"contributors": [
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-23", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_HDU01",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "value", "description": "Example value", "unit": "MW" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_HDU01' ::regclass) ::json;
