/*
This script provides metadata for the 'environment.dlm250' datasets
A definition of metadata can be found in the openmod glossary http://wiki.openmod-initiative.org/wiki/Metadata
A further description can be found on http://wiki.openmod-initiative.org/wiki/DatabaseRules

__copyright__     = "Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__     = "https://github.com/openego/data_processing/blob/master/LICENSE"
__author__     = "KilianZimmerer & Ludee"
__contains__    = "http://stackoverflow.com/questions/383692/what-is-json-and-why-would-i-use-it","https://specs.frictionlessdata.io/data-package/"
*/

-- metadata
COMMENT ON TABLE environment.dlm250_sie01_f IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Ortslage, dargestellt durch flächenhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_sie01_f",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "rgs", "description": "Regionalsprache", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_sie01_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_sie01_p IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Ortslage, dargestellt durch punkthafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_sie01_p",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "rgs", "description": "Regionalsprache", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_sie01_p' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_sie02_f IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - baulich geprägte Flächen, dargestellt durch flächenhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_sie02_f",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "agt", "description": "Abbaugut", "unit": "none" },
            {"name": "fkt", "description": "Funktion", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "rgs", "description": "Regionalsprache", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_sie02_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_sie03_f IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Bauwerke und sonstige Einrichtungen, dargestellt durch flächenhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_sie03_f",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "bwf", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "hho", "description": "Objekthöhe", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_sie03_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_sie03_l IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Bauwerke und sonstige Einrichtungen, dargestellt durch linienhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_sie03_l",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "bwf", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "pro", "description": "Produkt", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_sie03_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_sie03_p IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Bauwerke und sonstige Einrichtungen, dargestellt durch punkthafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_sie03_p",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "bwf", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "hho", "description": "Objekthöhe", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "spo", "description": "Sportart", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_sie03_p' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_sie04_f IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Bauwerke und sonstige Einrichtungen, dargestellt durch flächenhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_sie04_f",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_sie04_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_sie04_l IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - besondere Anlagen auf Siedlungsflächen, dargestellt durch linienhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_sie04_l",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "kon", "description": "Konstruktionsmerkmal/Bauart", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_sie04_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_sie04_p IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - besondere Anlagen auf Siedlungsflächen, dargestellt durch punkthafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_sie04_p",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "kon", "description": "Konstruktionsmerkmal/Bauart", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_sie04_p' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_sie05_p IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Gebäude, dargestellt durch punkthafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_sie05_p",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "bwf", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "gfk", "description": "Gebäudefunktion", "unit": "none" },
            {"name": "hho", "description": "Objekthöhe", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "znm", "description": "Zweitname", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_sie05_p' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_ver01_l IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Straßenverkehr, dargestellt durch linienhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_ver01_l",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "objart_z", "description": "Objektart des ZUSO", "unit": "none" },
            {"name": "objid_z", "description": "Objekt-ID des ZUSO", "unit": "none" },
            {"name": "bez", "description": "Bezeichnung", "unit": "none" },
            {"name": "brf", "description": "Breite der Fahrbahn", "unit": "none" },
            {"name": "bvb", "description": "besondere Verkehrsbedeutung", "unit": "none" },
            {"name": "fsz", "description": "Anzahl der Fahrstreifen", "unit": "none" },
            {"name": "ftr", "description": "Fahrbahntrennung", "unit": "none" },
            {"name": "ibd", "description": "internationale Bedeutung", "unit": "none" },
            {"name": "wdm", "description": "Widmung", "unit": "none" },
            {"name": "znm", "description": "Zweitname", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_ver01_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_ver02_l IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Wege, dargestellt durch linienhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_ver02_l",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "fkt", "description": "Funktion", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "znm", "description": "Zweitname", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_ver02_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_ver03_f IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Bahnverkehr, dargestellt durch flächenhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_ver03_f",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_ver03_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_ver03_l IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Bahnverkehr, dargestellt durch linienhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_ver03_l",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "bkt", "description": "Bahnkategorie", "unit": "none" },
            {"name": "elk", "description": "Elektrifizierung", "unit": "none" },
            {"name": "gls", "description": "Anzahl der Streckengleise", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "nrb", "description": "Nummer der Bahnstrecke", "unit": "none" },
            {"name": "spw", "description": "Spurweite", "unit": "none" },
            {"name": "znm", "description": "Zweitname", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_ver03_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_ver04_f IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Flugverkehr, dargestellt durch flächenhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_ver04_f",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "art", "description": "art", "unit": "none" },
            {"name": "bez", "description": "Bezeichnung", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "ntz", "description": "Nutzung", "unit": "none" },
            {"name": "znm", "description": "Zweitname", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_ver04_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_ver05_l IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Schiffsverkehr, dargestellt durch linienhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_ver05_l",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "art", "description": "art", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_ver05_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_ver06_f IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Verkehrsbauwerke und -anlagen, dargestellt durch flächenhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_ver06_f",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "bwf", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_ver06_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_ver06_l IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Verkehrsbauwerke und -anlagen, dargestellt durch linienhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_ver06_l",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "art", "description": "art", "unit": "none" },
            {"name": "bez", "description": "Bezeichnung", "unit": "none" },
            {"name": "bro", "description": "Breite des Objekts", "unit": "none" },
            {"name": "bwf", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "ofm", "description": "Oberflächenmaterial", "unit": "none" },
            {"name": "znm", "description": "Zweitname", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_ver06_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_ver06_p IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Verkehrsbauwerke und -anlagen, dargestellt durch punkthafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_ver06_p",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "art", "description": "art", "unit": "none" },
            {"name": "bez", "description": "Bezeichnung", "unit": "none" },
            {"name": "bfk", "description": "Bahnhofskategorie", "unit": "none" },
            {"name": "bro", "description": "Breite des Objekts", "unit": "none" },
            {"name": "bwf", "description": "Bauwerksfunktion", "unit": "none" },
            {"name": "fkt", "description": "Funktion", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "ofm", "description": "Oberflächenmaterial", "unit": "none" },
            {"name": "rgs", "description": "Regionalsprache", "unit": "none" },
            {"name": "znm", "description": "Zweitname", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_ver06_p' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_veg01_f IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Landwirtschaftliche Nutzfläche, dargestellt durch flächenhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_veg01_f",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "veg", "description": "Vegetationsmerkmal", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_veg01_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_veg02_f IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Forstwirtschaftliche Nutzfläche, dargestellt durch flächenhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_veg02_f",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "rgs", "description": "Regionalsprache", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_veg02_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_veg03_f IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Vegetationsflächen, dargestellt durch flächenhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_veg03_f",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "fkt", "description": "Funktion", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "ofm", "description": "Oberflächenmaterial", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_veg03_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_veg04_f IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Vegetationsmerkmal, dargestellt durch flächenhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_veg04_f",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "bws", "description": "Bewuchs", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_veg04_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_gew01_f IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Gewässer, dargestellt durch flächenhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_gew01_f",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "objart_z", "description": "Objektart des ZUSO", "unit": "none" },
            {"name": "objid_z", "description": "Objekt-ID des ZUSO", "unit": "none" },
            {"name": "fkt", "description": "Funktion", "unit": "none" },
            {"name": "gwk", "description": "Gewässerkennzahl", "unit": "none" },
            {"name": "hyd", "description": "hydrologisches Merkmal", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "rgs", "description": "Regionalsprache", "unit": "none" },
            {"name": "sfk", "description": "Schifffahrtskategorie", "unit": "none" },
            {"name": "skz", "description": "Seekennzahl", "unit": "none" },
            {"name": "wdm", "description": "Widmung", "unit": "none" },
            {"name": "znm", "description": "Zweitname", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_gew01_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_gew01_l IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Gewässer, dargestellt durch linienhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_gew01_l",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "objart_z", "description": "Objektart des ZUSO", "unit": "none" },
            {"name": "objid_z", "description": "Objekt-ID des ZUSO", "unit": "none" },
            {"name": "brg", "description": "Breite des Gewässers", "unit": "none" },
            {"name": "fkt", "description": "Funktion", "unit": "none" },
            {"name": "flr", "description": "Fliessrichtung", "unit": "none" },
            {"name": "gwk", "description": "Gewässerkennzahl", "unit": "none" },
            {"name": "hyd", "description": "hydrologisches Merkmal", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "rgs", "description": "Regionalsprache", "unit": "none" },
            {"name": "sfk", "description": "Schifffahrtskategorie", "unit": "none" },
            {"name": "wdm", "description": "Widmung", "unit": "none" },
            {"name": "znm", "description": "Zweitname", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_gew01_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_gew02_f IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - besondere Gewässermerkmale, dargestellt durch flächenhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_gew02_f",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "art", "description": "art", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "rgs", "description": "Regionalsprache", "unit": "none" },
            {"name": "znm", "description": "Zweitname", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_gew02_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_gew02_l IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - besondere Gewässermerkmale, dargestellt durch linienhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_gew02_l",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "flr", "description": "Fliessrichtung", "unit": "none" },
            {"name": "gwk", "description": "Gewässerkennzahl", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_gew02_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_gew02_p IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - besondere Gewässermerkmale, dargestellt durch punkthafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_gew02_p",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "art", "description": "Objektart", "unit": "none" },
            {"name": "hws", "description": "Höhe des Wasserspiegels", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "rgs", "description": "Regionalsprache", "unit": "none" },
            {"name": "znm", "description": "Zweitname", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_gew02_p' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_gew03_l IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Gewässerachse, dargestellt durch linienhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_gew03_l",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "aga", "description": "Art der Gewässerachse", "unit": "none" },
            {"name": "flr", "description": "Fliessrichtung", "unit": "none" },
            {"name": "gwk", "description": "Gewässerkennzahl", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "rgs", "description": "Regionalsprache", "unit": "none" },
            {"name": "sfk", "description": "Schifffahrtskategorie", "unit": "none" },
            {"name": "znm", "description": "Zweitname", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_gew03_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_geb01_f IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Verwaltungsgebiete, dargestellt durch flächenhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_geb01_f",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ADM", "description": "administrative Funktion", "unit": "none" },
            {"name": "bez_nat", "description": "Bezeichnung Nationalstaat", "unit": "none" },
            {"name": "bez_lan", "description": "Bezeichnung Land", "unit": "none" },
            {"name": "bez_rbz", "description": "Bezeichnung Regierungsbezirk", "unit": "none" },
            {"name": "bez_krs", "description": "Bezeichnung Kreis", "unit": "none" },
            {"name": "bez_vwg", "description": "Bezeichnung Verwaltungsgemeinschaft", "unit": "none" },
            {"name": "bez_gem", "description": "Bezeichnung Gemeinde", "unit": "none" },
            {"name": "rgs", "description": "Regionalsprache", "unit": "none" },
            {"name": "sch", "description": "Schluessel gesamt", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_geb01_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_geb01_l IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Verwaltungsgebiete, dargestellt durch linienhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_geb01_l",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "agz", "description": "Art der Gebietsgrenze", "unit": "none" },
            {"name": "zus", "description": "Zustand", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_geb01_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_geb02_f IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - geographische Gebiete, dargestellt durch flächenhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_geb02_f",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "ltp", "description": "Landschaftstyp", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "rgs", "description": "Regionalsprache", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_geb02_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_geb03_f IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Schutzgebiete, dargestellt durch flächenhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_geb03_f",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "objart_z", "description": "Objektart des ZUSO", "unit": "none" },
            {"name": "objid_z", "description": "Objekt-ID des ZUSO", "unit": "none" },
            {"name": "adf", "description": "Art der Festlegung", "unit": "none" },
            {"name": "bez", "description": "Bezeichnung", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "sgn", "description": "Nummer des Schutzgebietes", "unit": "none" },
            {"name": "zon", "description": "Zone", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_geb03_f' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_rel01_l IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Reliefformen, dargestellt durch linienhafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_rel01_l",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "objart_z", "description": "Objektart des ZUSO", "unit": "none" },
            {"name": "objid_z", "description": "Objekt-ID des ZUSO", "unit": "none" },
            {"name": "art", "description": "art", "unit": "none" },
            {"name": "fkt", "description": "Funktion", "unit": "none" },
            {"name": "hhl", "description": "Hoehe von Hoehenlinie", "unit": "none" },
            {"name": "hho", "description": "Objekthoehe", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_rel01_l' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_rel01_p IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Reliefformen, dargestellt durch punkthafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_rel01_p",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "nam", "description": "Name", "unit": "none" },
            {"name": "znm", "description": "Zweitname", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_rel01_p' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_rel02_p IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Messdaten, dargestellt durch punkthafte Objekte",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_rel02_p",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "modellart", "description": "Modellartenkennung", "unit": "none" },
            {"name": "objart", "description": "Objektart", "unit": "none" },
            {"name": "objart_txt", "description": "Objektart Text", "unit": "none" },
            {"name": "objid", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "hdu_x", "description": "Unterführungsbeziehung", "unit": "none" },
            {"name": "beginn", "description": "Lebenszeitintervall beginnt", "unit": "none" },
            {"name": "ende", "description": "Lebenszeitintervall endet", "unit": "none" },
            {"name": "art", "description": "Art des Punkt 3D", "unit": "none" },
            {"name": "hoehe", "description": "Hoehe", "unit": "none" },
            {"name": "bemerkung", "description": "Bemerkung", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_rel02_p' ::regclass) ::json;

-- metadata
COMMENT ON TABLE environment.dlm250_hdu01 IS '{
    "title": "Digitales Landschaftsmodell 1:250 000 - Referenzen",
    "description": "Das Digitale Landschaftsmodell 1:250 000 (DLM250) beschreibt die topographischen Objekte der Landschaft im Vektorformat. Die Objekte werden einer bestimmten Objektart zugeordnet und durch ihre räumliche Lage, ihren geometrischen Typ und beschreibende Attribute definiert.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "none"},
    "temporal":
        {"reference_date": "none",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Dienstleistungszentrum des Bundes für Geoinformation und Geodäsie", "description": "none", "url": "http://www.geodatenzentrum.de/geodaten/gdz_rahmen.gdz_div?gdz_spr=deu&gdz_akt_zeile=5&gdz_anz_zeile=1&gdz_unt_zeile=1&gdz_user_id=0#dok", "license": "http://www.geodatenzentrum.de/docpdf/geonutzv_deu.pdf", "copyright": "© GeoBasis - DE / BKG 2017"},
        {"name": "Übersicht über den Datenbestand", "description": "Dokumentation des Datenbestands", "url": "https://sg.geodatenzentrum.de/web_download/dlm/dlm250/dlm250.pdf", "license": "none", "copyright": "none"} ],
    "license":
        {"id": "geonutzv-de-2013-03-19",
        "name": "GeoNutzV",
        "version": "none",
        "url": "https://www.geodatenzentrum.de/docpdf/geonutzv.pdf",
        "instruction": "none",
        "copyright": "© GeoBasis - DE / BKG 2017"},
    "contributors": [
        {"name": "KilianZimmerer", "email": "", "date": "2017-11-08", "comment": "create metadata"} ],
    "resources": [
        {"name": "environment.dlm250_hdu01",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": "none" },
            {"name": "year", "description": "Reference year", "unit": "none" },
            {"name": "land", "description": "Landeskennung", "unit": "none" },
            {"name": "objart_1", "description": "Objektart", "unit": "none" },
            {"name": "objid_1", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "ebene_1", "description": "Name der Ebene", "unit": "none" },
            {"name": "objart_2", "description": "Objektart", "unit": "none" },
            {"name": "objid_2", "description": "eindeutiger Objektidentifikator", "unit": "none" },
            {"name": "ebene_2", "description": "Name der Ebene", "unit": "none" },
            {"name": "geom", "description": "Geometry", "unit": "none" }] }],
    "metadata_version": "1.3"}';

-- select description
SELECT obj_description('environment.dlm250_hdu01' ::regclass) ::json;
