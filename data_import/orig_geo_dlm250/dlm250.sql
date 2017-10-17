/*
This script provides metadata for the 'orig_geo_dlm250_dlm250.dlm250' datasets
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
COMMENT ON TABLE orig_geo_dlm250_dlm250.dlm250_sie01_f IS '{
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
		{"name": "orig_geo_dlm250_dlm250.dlm250_sie01_f",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "none" },
			{"name": "year", "description": "Reference year", "unit": "none" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Onjart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250_dlm250.dlm250_sie01_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250_dlm250.dlm250_sie01_p IS '{
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
		{"name": "orig_geo_dlm250_dlm250.dlm250_sie01_p",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250_dlm250.dlm250_sie01_p' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250_dlm250.dlm250_sie02_f IS '{
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
		{"name": "orig_geo_dlm250_dlm250.dlm250_sie02_f",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "AGT", "description": "Abbaugut", "unit": "none" },
            {"name": "FKT", "description": "Funktion", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250_dlm250.dlm250_sie02_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250_dlm250.dlm250_sie03_f IS '{
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
		{"name": "orig_geo_dlm250_dlm250.dlm250_sie03_f",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "BWF", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "HHO", "description": "Objekthöhe", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_sie03_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_sie03_l IS '{
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
		{"name": "orig_geo_dlm250.dlm250_sie03_l",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "BWF", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "PRO", "description": "Produkt", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_sie03_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_sie03_p IS '{
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
		{"name": "orig_geo_dlm250.dlm250_sie03_p",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "BWF", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "HHO", "description": "Objekthöhe", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "SPO", "description": "Sportart", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_sie03_p' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_sie04_f IS '{
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
		{"name": "orig_geo_dlm250.dlm250_sie04_f",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_sie04_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_sie04_l IS '{
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
		{"name": "orig_geo_dlm250.dlm250_sie04_l",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "KON", "description": "Konstruktionsmerkmal/Bauart", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_sie04_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_sie04_p IS '{
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
		{"name": "orig_geo_dlm250.dlm250_sie04_p",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "KON", "description": "Konstruktionsmerkmal/Bauart", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_sie04_p' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_sie05_p IS '{
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
		{"name": "orig_geo_dlm250.dlm250_sie05_p",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "BWF", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "GFK", "description": "Gebäudefunktion", "unit": "none" },
            {"name": "HHO", "description": "Objekthöhe", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_sie05_p' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_ver01_l IS '{
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
		{"name": "orig_geo_dlm250.dlm250_ver01_l",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "Objart_Z", "description": "Objektart des ZUSO", "unit": "none" },
            {"name": "ObjID_Z", "description": "Objekt-ID des ZUSO", "unit": "none" },
            {"name": "BEZ", "description": "Bezeichnung", "unit": "none" },
            {"name": "BRF", "description": "Breite der Fahrbahn", "unit": "none" },
            {"name": "BVB", "description": "besondere Verkehrsbedeutung", "unit": "none" },
            {"name": "FSZ", "description": "Anzahl der Fahrstreifen", "unit": "none" },
            {"name": "FTR", "description": "Fahrbahntrennung", "unit": "none" },
            {"name": "IBD", "description": "internationale Bedeutung", "unit": "none" },
            {"name": "WDM", "description": "Widmung", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_ver01_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_verO2_l IS '{
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
		{"name": "orig_geo_dlm250.dlm250_ver02_l",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "FKT", "description": "Funktion", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_ver02_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_verO3_f IS '{
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
		{"name": "orig_geo_dlm250.dlm250_ver03_f",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_ver03_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_verO3_l IS '{
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
		{"name": "orig_geo_dlm250.dlm250_ver03_l",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "BKT", "description": "Bahnkategorie", "unit": "none" },
            {"name": "ELK", "description": "Elektrifizierung", "unit": "none" },
            {"name": "GLS", "description": "Anzahl der Streckengleise", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "NRB", "description": "Nummer der Bahnstrecke", "unit": "none" },
            {"name": "SPW", "description": "Spurweite", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_ver03_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_verO4_f IS '{
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
		{"name": "orig_geo_dlm250.dlm250_ver04_f",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ART", "description": "Art", "unit": "none" },
            {"name": "BEZ", "description": "Bezeichnung", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "NTZ", "description": "Nutzung", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_ver04_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_verO5_l IS '{
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
		{"name": "orig_geo_dlm250.dlm250_ver05_l",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ART", "description": "Art", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_ver05_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_verO6_f IS '{
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
		{"name": "orig_geo_dlm250.dlm250_ver06_f",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "BWF", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_ver06_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_verO6_l IS '{
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
		{"name": "orig_geo_dlm250.dlm250_ver06_l",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ART", "description": "Art", "unit": "none" },
            {"name": "BEZ", "description": "Bezeichnung", "unit": "none" },
            {"name": "BRO", "description": "Breite des Objekts", "unit": "none" },
            {"name": "BWF", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "OFM", "description": "Oberflächenmaterial", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_ver06_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_verO6_p IS '{
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
		{"name": "orig_geo_dlm250.dlm250_ver06_p",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
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
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_ver06_p' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_veg01_f IS '{
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
		{"name": "orig_geo_dlm250.dlm250_veg01_f",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "VEG", "description": "Vegetationsmerkmal", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_veg01_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_veg02_f IS '{
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
		{"name": "orig_geo_dlm250.dlm250_veg02_f",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_veg02_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_veg03_f IS '{
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
		{"name": "orig_geo_dlm250.dlm250_veg03_f",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "FKT", "description": "Funktion", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "OFM", "description": "Oberflächenmaterial", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_veg03_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_veg04_f IS '{
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
		{"name": "orig_geo_dlm250.dlm250_veg04_f",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "BWS", "description": "Bewuchs", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_veg04_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_gew01_f IS '{
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
		{"name": "orig_geo_dlm250.dlm250_gew01_f",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "Objart_Z", "description": "Objektart des ZUSO", "unit": "none" },
            {"name": "ObjID_Z", "description": "Objekt-ID des ZUSO", "unit": "none" },
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
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_gew01_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_gew01_l IS '{
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
		{"name": "orig_geo_dlm250.dlm250_gew01_l",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "Objart_Z", "description": "Objektart des ZUSO", "unit": "none" },
            {"name": "ObjID_Z", "description": "Objekt-ID des ZUSO", "unit": "none" },
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
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_gew01_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_gew02_f IS '{
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
		{"name": "orig_geo_dlm250.dlm250_gew02_f",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ART", "description": "Art", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_gew02_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_gew02_l IS '{
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
		{"name": "orig_geo_dlm250.dlm250_gew02_l",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "FLR", "description": "Fliessrichtung", "unit": "none" },
            {"name": "GWK", "description": "Gewässerkennzahl", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_gew02_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_gew02_p IS '{
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
		{"name": "orig_geo_dlm250.dlm250_gew02_p",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ART", "description": "Objektart", "unit": "none" },
            {"name": "HWS", "description": "Höhe des Wasserspiegels", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_gew02_p' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_gew03_l IS '{
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
		{"name": "orig_geo_dlm250.dlm250_gew03_l",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "AGA", "description": "Art der Gewässerachse", "unit": "none" },
            {"name": "FLR", "description": "Fliessrichtung", "unit": "none" },
            {"name": "GWK", "description": "Gewässerkennzahl", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "SFK", "description": "Schifffahrtskategorie", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_gew03_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_geb01_f IS '{
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
		{"name": "orig_geo_dlm250.dlm250_geb01_f",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ADM", "description": "administrative Funktion", "unit": "none" },
            {"name": "BEZ_NAT", "description": "Bezeichnung Nationalstaat", "unit": "none" },
            {"name": "BEZ_LAN", "description": "Bezeichnung Land", "unit": "none" },
            {"name": "BEZ_RBZ", "description": "Bezeichnung Regierungsbezirk", "unit": "none" },
            {"name": "BEZ_KRS", "description": "Bezeichnung Kreis", "unit": "none" },
            {"name": "BEZ_VWG", "description": "Bezeichnung Verwaltungsgemeinschaft", "unit": "none" },
            {"name": "BEZ_GEM", "description": "Bezeichnung Gemeinde", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "SCH", "description": "Schluessel gesamt", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250.dlm250_geb01_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250.dlm250_geb01_l IS '{
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
		{"name": "orig_geo_dlm250_dlm250.dlm250_geb01_l",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "AGZ", "description": "Art der Gebietsgrenze", "unit": "none" },
            {"name": "ZUS", "description": "Zustand", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250_dlm250.dlm250_geb01_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250_dlm250.dlm250_geb02_f IS '{
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
		{"name": "orig_geo_dlm250_dlm250.dlm250_geb02_f",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "LTP", "description": "Landschaftstyp", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "RGS", "description": "Regionalsprache", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250_dlm250.dlm250_geb02_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250_dlm250.dlm250_geb03_f IS '{
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
		{"name": "orig_geo_dlm250_dlm250.dlm250_geb03_f",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "Objart_Z", "description": "Objektart des ZUSO", "unit": "none" },
            {"name": "ObjID_Z", "description": "Objekt-ID des ZUSO", "unit": "none" },
            {"name": "ADF", "description": "Art der Festlegung", "unit": "none" },
            {"name": "BEZ", "description": "Bezeichnung", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "SGN", "description": "Nummer des Schutzgebietes", "unit": "none" },
            {"name": "ZON", "description": "Zone", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250_dlm250.dlm250_geb03_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250_dlm250.dlm250_rel01_l IS '{
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
		{"name": "orig_geo_dlm250_dlm250.dlm250_rel01_l",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "Objart_Z", "description": "Objektart des ZUSO", "unit": "none" },
            {"name": "ObjID_Z", "description": "Objekt-ID des ZUSO", "unit": "none" },
            {"name": "ART", "description": "Art", "unit": "none" },
            {"name": "FKT", "description": "Funktion", "unit": "none" },
            {"name": "HHL", "description": "Hoehe von Hoehenlinie", "unit": "none" },
            {"name": "HHO", "description": "Objekthoehe", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250_dlm250.dlm250_rel01_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250_dlm250.dlm250_rel01_p IS '{
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
		{"name": "orig_geo_dlm250_dlm250.dlm250_rel01_p",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "BEGINN", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "NAM", "description": "Name", "unit": "none" },
            {"name": "ZNM", "description": "Zweitname", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250_dlm250.dlm250_rel01_p' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250_dlm250.dlm250_rel02_p IS '{
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
		{"name": "orig_geo_dlm250_dlm250.dlm250_rel02_p",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "Objart", "description": "Objektart", "unit": "none" },
            {"name": "Objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "ObjID", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "HDU_X", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "Beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "Ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ART", "description": "Art des Punkt 3D", "unit": "none" },
            {"name": "Hoehe", "description": "Hoehe", "unit": "none" },
            {"name": "Bemerkung", "description": "Bemerkung", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250_dlm250.dlm250_rel02_p' ::regclass) ::json;

-- metadata
COMMENT ON TABLE orig_geo_dlm250_dlm250.dlm250_hdu01 IS '{
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
		{"name": "orig_geo_dlm250_dlm250.dlm250_hdu01",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "" },
			{"name": "year", "description": "Reference year", "unit": "" },
			{"name": "Land", "description": "Landeskennung", "unit": "none" },
            {"name": "Objart_1", "description": "Objektart", "unit": "none" },
            {"name": "ObjID_1", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "Ebene_1", "description": "Name der Ebene", "unit": "none" },
            {"name": "Objart_2", "description": "Objektart", "unit": "none" },
            {"name": "ObjID_2", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "Ebene_2", "description": "Name der Ebene", "unit": "none" },
			{"name": "geom", "description": "Geometry", "unit": "" }] }],
	"metadata_version": "1.3"}';

-- select description
SELECT obj_description('orig_geo_dlm250_dlm250.dlm250_hdu01' ::regclass) ::json;
