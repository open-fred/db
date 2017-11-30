/*
Metadata for OSM postcode (PLZ)
Postleitzahlen Deutschland

__copyright__   = "Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = "https://github.com/openego/data_processing/blob/master/LICENSE"
__author__      = "Ludee"
*/


-- metadata
COMMENT ON TABLE boundaries.osm_postcode IS '{
    "title": "BKG - Geographische Namen 1:250 000 - GN250 - Darstellung als Punktgeometrie (Point)",
    "description": "In unserem Postleitzahlenverzeichnis bekommen Sie eine umfangreiche PLZ-Übersicht einzelner Bundesländer, Städte und Gemeinden in Deutschland. Die Ortsseiten enthalten eine Liste aller Stadteile, eine Kartenansicht mit eingezeichneten PLZ-Gebieten samt Straßensuche zur Orientierung und nützliche Links zu Webseiten mit weiterführenden, ortsspezifischen Informationen - Einen Überblick aller Orte bekommen Sie in unserem Ortsverzeichnis.",
    "language": [ "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "vector"},
    "temporal": 
        {"reference_date": "2017-03-23",
        "start": "none",
        "end": "none",
        "resolution": "none"},
    "sources": [
        {"name": "Postleitzahlen Deutschland", 
        "description": "Hier finden Sie Postleitzahlen von Städten und Gemeinden aus Deutschland. Zur Postleitzahlensuche können Sie entweder das Suchfeld verwenden oder innerhalb der Bundesländer Ihren gesuchten Ort wählen. Neben der Postleitzahl bekommen Sie zusätzlich die Telefonvorwahl, das Autokennzeichen und die Lage mit Koordinaten auf einer Karte angezeigt.", 
        "url": "https://www.suche-postleitzahl.org/downloads", 
        "license": "Open Data Commons Open Database License 1.0 (ODbL-1.0)", 
        "copyright": "© suche-postleitzahl.org"},
        {"name": "OpenStreetMap", 
        "description": "", 
        "url": "https://www.openstreetmap.org/copyright", 
        "license": "Open Data Commons Open Database License 1.0 (ODbL-1.0)", 
        "copyright": "© OpenStreetMap contributors"} ],
    "license": 
        {"id": "ODbL-1.0",
        "name": "Open Data Commons Open Database License 1.0",
        "version": "1.0",
        "url": "https://opendatacommons.org/licenses/odbl/1.0/",
        "instruction": "You are free: To Share, To Create, To Adapt; As long as you: Attribute, Share-Alike, Keep open!",
        "copyright": "© OpenStreetMap contributors"},
    "contributors": [
        {"name": "Ludee", "email": "", "date": "2017-08-17", "comment": "Create table"},
        {"name": "Ludee", "email": "", "date": "2017-08-17", "comment": "Add metadata v1.3"} ],
    "resources": [
        {"name": "boundaries.osm_postcode",
        "format": "PostgreSQL",
        "fields": [
            {"name": "reference_date", "description": "Reference date", "unit": "none"},
            {"name": "id", "description": "Unique identifier", "unit": "none"},
            {"name": "stellen", "description": "Level", "unit": "none"},
            {"name": "plz", "description": "Postleitzahl; Postcode", "unit": "none"},
            {"name": "note", "description": "Comment and name", "unit": "none"},
            {"name": "geom", "description": "Geometrie", "unit": "none"} ] } ],
    "metadata_version": "1.3"}';

-- ego scenario log (version,io,schema_name,table_name,script_name,comment)
SELECT ego_scenario_log('v0.2.10','output','boundaries','osm_postcode','osm_postcode_metadata.sql','metadata');
