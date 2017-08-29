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
		{"name": "KilianZimmerer", "email": " ", "date": "2017-08-29", "comment": "create metadata"} ],
	"resources": [
		{"name": "orig_geo.dlm250_SIE01_F",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "none" },
			{"name": "year", "description": "Reference year", "unit": "none" },
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "AGT", "description": "Abbaugut", "unit": "none" },
            {"name": "FKT", "description": "Funktion", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "BWF", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "HHO", "description": "Objekthöhe", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "BWF", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "PRO", "description": "Produkt", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_SIE03_L' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo.dlm250_SIE03_P IS '{
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "BWF", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "HHO", "description": "Objekthöhe", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "SPO", "description": "Sportart", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "KON", "description": "Konstruktionsmerkmal/Bauart", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "KON", "description": "Konstruktionsmerkmal/Bauart", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "BWF", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "GFK", "description": "Gebäudefunktion", "unit": "none" },
            {"name": "HHO", "description": "Objekthöhe", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "OBJART_Z", "description": "Objektart des ZUSO", "unit": "none" },
            {"name": "OBJID_Z", "description": "Objekt-ID des ZUSO", "unit": "none" },
            {"name": "BEZ", "description": "Bezeichnung", "unit": "none" },
            {"name": "BRF", "description": "Breite der Fahrbahn", "unit": "none" },
            {"name": "BVB", "description": "besondere Verkehrsbedeutung", "unit": "none" },
            {"name": "FSZ", "description": "Anzahl der Fahrstreifen", "unit": "none" },
            {"name": "FTR", "description": "Fahrbahntrennung", "unit": "none" },
            {"name": "IBD", "description": "internationale Bedeutung", "unit": "none" },
            {"name": "WDM", "description": "Widmung", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "FKT", "description": "Funktion", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "BKT", "description": "Bahnkategorie", "unit": "none" },
            {"name": "ELK", "description": "Elektrifizierung", "unit": "none" },
            {"name": "GLS", "description": "Anzahl der Streckengleise", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "NRB", "description": "Nummer der Bahnstrecke", "unit": "none" },
            {"name": "SPW", "description": "Spurweite", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ART", "description": "Art", "unit": "none" },
            {"name": "BEZ", "description": "Bezeichnung", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "NTZ", "description": "Nutzung", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ART", "description": "Art", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "BWF", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ART", "description": "Art", "unit": "none" },
            {"name": "BEZ", "description": "Bezeichnung", "unit": "none" },
            {"name": "BRO", "description": "Breite des Objekts", "unit": "none" },
            {"name": "BWF", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "OFM", "description": "Oberflächenmaterial", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ART", "description": "Art", "unit": "none" },
            {"name": "BEZ", "description": "Bezeichnung", "unit": "none" },
            {"name": "BFK", "description": "Bahnhofskategorie", "unit": "none" },
            {"name": "BRO", "description": "Breite des Objekts", "unit": "none" },
            {"name": "BWF", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "FKT", "description": "Funktion", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "OFM", "description": "Oberflächenmaterial", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "VEG", "description": "Vegetationsmerkmal", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "FKT", "description": "Funktion", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "OFM", "description": "Oberflächenmaterial", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "BWS", "description": "Bewuchs", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "OBJART_Z", "description": "Objektart des ZUSO", "unit": "none" },
            {"name": "OBJID_Z", "description": "Objekt-ID des ZUSO", "unit": "none" },
            {"name": "FKT", "description": "Funktion", "unit": "none" },
            {"name": "GWK", "description": "Gewässerkennzahl", "unit": "none" },
            {"name": "HYD", "description": "hydrologisches Merkmal", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "SFK", "description": "Schifffahrtskategorie", "unit": "none" },
            {"name": "SKZ", "description": "Seekennzahl", "unit": "none" },
            {"name": "WDM", "description": "Widmung", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "OBJART_Z", "description": "Objektart des ZUSO", "unit": "none" },
            {"name": "OBJID_Z", "description": "Objekt-ID des ZUSO", "unit": "none" },
            {"name": "BRG", "description": "Breite des Gewässers", "unit": "none" },
            {"name": "FKT", "description": "Funktion", "unit": "none" },
            {"name": "FLR", "description": "Fliessrichtung", "unit": "none" },
            {"name": "GWK", "description": "Gewässerkennzahl", "unit": "none" },
            {"name": "HYD", "description": "hydrologisches Merkmal", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "SFK", "description": "Schifffahrtskategorie", "unit": "none" },
            {"name": "WDM", "description": "Widmung", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ART", "description": "Art", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "FLR", "description": "Fliessrichtung", "unit": "none" },
            {"name": "GWK", "description": "Gewässerkennzahl", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ART", "description": "Objektart", "unit": "none" },
            {"name": "HWS", "description": "Höhe des Wasserspiegels", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "AGA", "description": "Art der Gewässerachse", "unit": "none" },
            {"name": "FLR", "description": "Fliessrichtung", "unit": "none" },
            {"name": "GWK", "description": "Gewässerkennzahl", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "SFK", "description": "Schifffahrtskategorie", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ADM", "description": "administrative Funktion", "unit": "none" },
            {"name": "BEZ_NAT", "description": "Bezeichnung Nationalstaat", "unit": "none" },
            {"name": "BEZ_LAN", "description": "Bezeichnung Land", "unit": "none" },
            {"name": "BEZ_RBZ", "description": "Bezeichnung Regierungsbezirk", "unit": "none" },
            {"name": "BEZ_KRS", "description": "Bezeichnung Kreis", "unit": "none" },
            {"name": "BEZ_VWG", "description": "Bezeichnung Verwaltungsgemeinschaft", "unit": "none" },
            {"name": "BEZ_GEM", "description": "Bezeichnung Gemeinde", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "SCH", "description": "Schluessel gesamt", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "AGZ", "description": "Art der Gebietsgrenze", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "LTP", "description": "Landschaftstyp", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "OBJART_Z", "description": "Objektart des ZUSO", "unit": "none" },
            {"name": "OBJID_Z", "description": "Objekt-ID des ZUSO", "unit": "none" },
            {"name": "ADF", "description": "Art der Festlegung", "unit": "none" },
            {"name": "BEZ", "description": "Bezeichnung", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "SGN", "description": "Nummer des Schutzgebietes", "unit": "none" },
            {"name": "ZON", "description": "Zone", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "OBJART_Z", "description": "Objektart des ZUSO", "unit": "none" },
            {"name": "OBJID_Z", "description": "Objekt-ID des ZUSO", "unit": "none" },
            {"name": "ART", "description": "Art", "unit": "none" },
            {"name": "FKT", "description": "Funktion", "unit": "none" },
            {"name": "HHL", "description": "Hoehe von Hoehenlinie", "unit": "none" },
            {"name": "HHO", "description": "Objekthoehe", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "MODELLART", "description": "Modellartenkennung", "unit": "none" },
            {"name": "OBJART", "description": "Objektart", "unit": "none" },
            {"name": "OBJART_TXT", "description": "Objektart Text", "unit": "none" },
            {"name": "OBJID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ENDE", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ART", "description": "Art des Punkt 3D", "unit": "none" },
            {"name": "HOEHE", "description": "Hoehe", "unit": "none" },
            {"name": "BEMERKUNG", "description": "Bemerkung", "unit": "none" },
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
			{"name": "LAND", "description": "Landeskennung", "unit": "none" },
            {"name": "OBJART_1", "description": "Objektart", "unit": "none" },
            {"name": "OBJID_1", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "EBENE_1", "description": "Name der Ebene", "unit": "none" },
            {"name": "OBJART_2", "description": "Objektart", "unit": "none" },
            {"name": "OBJID_2", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "EBENE_2", "description": "Name der Ebene", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo.dlm250_HDU01' ::regclass) ::json;
