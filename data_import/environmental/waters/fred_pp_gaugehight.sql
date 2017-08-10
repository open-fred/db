/*
Setup river gauge height

__copyright__   = "Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = ""
__author__      = "Ludee"
*/

DROP TABLE IF EXISTS    hydrolib.fred_gaugeheight_station;
CREATE TABLE            hydrolib.fred_gaugeheight_station (
    id          serial NOT NULL,
    station_id  bigint,
    station     text,
    name        text,
    plz         varchar(5),
    water       text,
    kilometer   double precision,
    comment     text,
    gk3_zone    integer,
    rechts      bigint,
    hoch        bigint,
    geom        geometry(Point,3035),
    CONSTRAINT fred_gaugeheight_station_pkey PRIMARY KEY (station_id));

-- grant (oeuser)
ALTER TABLE hydrolib.fred_gaugeheight_station OWNER TO oeuser;

-- index GIST (geom)
CREATE INDEX fred_gaugeheight_station_gidx
    ON hydrolib.fred_gaugeheight_station USING GIST (geom);


INSERT INTO hydrolib.fred_gaugeheight_station (station_id,station,water,kilometer,geom)
    SELECT  station_id ::bigint,
            station,
            water,
            kilometer,
            geom
    FROM    hydrolib.pegelonline_messpunkte_stammdaten
    ORDER BY station_id;

UPDATE hydrolib.fred_gaugeheight_station AS t1
    SET     name = t2.name,
            comment = t2.comment,
            rechts = t2.rechts,
            hoch = t2.hoch,
            gk3_zone = t2.gk3_zone
    FROM    hydrolib.fred_gaugeheight_location AS t2
    WHERE   t1.station = UPPER(t2.name);

-- metadata
COMMENT ON TABLE hydrolib.fred_gaugeheight_station IS '{
	"title": "Gauge height stations",
	"description": "",
	"language": [ "eng", "ger" ],
	"spatial": 
		{"location": "none",
		"extent": "Germany",
		"resolution": "vector"},
	"temporal": 
		{"reference_date": "2017",
		"start": "none",
		"end": "none",
		"resolution": "none"},
	"sources": [
		{"name": "PEGELONLINE", "description": "PEGELONLINE publiziert mit verschiedenen Diensten tagesaktuelle Rohwerte unterschiedlicher gewässerkundlicher Parameter (z.B. Wasserstand) von Binnen- und Küstenpegeln der Wasserstraßen des Bundes bis maximal 30 Tage rückwirkend.", "url": "https://www.pegelonline.wsv.de/", "license": "", "copyright": ""},
		{"name": "PEGELONLINE Web Feature Service Aktuell (WFS Aktuell)", "description": "PEGELONLINE WFS Aktuell stellt kostenfrei tagesaktuelle Wasserstände der Binnen- und Küstenpegel der Wasserstraßen des Bundes als WFS zur Verfügung. Hierbei können aktuelle Wasserstände der Pegel als Vektordaten bezogen werden und in eine Kartenanwendung integriert werden.", "url": "https://www.pegelonline.wsv.de/webservice/wfsAktuell", "license": "", "copyright": ""} ],
	"license": 
		{"id": "",
		"name": "",
		"version": "",
		"url": "",
		"instruction": "",
		"copyright": ""},
	"contributors": [
		{"name": "LudEE", "email": "", "date": "2017-07-27", "comment": "Create table and metadata"},
		{"name": "", "email": "", "date": "", "comment": ""} ],
	"resources": [
		{"name": "hydrolib.fred_gaugeheight_station",		
		"format": "PostgreSQL",
		"fields": [
			{"name": "id", "description": "Unique identifier", "unit": "none"},
			{"name": "station_id", "description": "Pegelnummer", "unit": "none"},
			{"name": "station", "description": "Name des Pegels (groß)", "unit": "none"},
            {"name": "name", "description": "Name des Pegels", "unit": "none"},
            {"name": "plz", "description": "Postleitzahl", "unit": "none"},
            {"name": "water", "description": "Name des Gewässers", "unit": "none"},
            {"name": "kilometer", "description": "Flusskilometer", "unit": "none"},
            {"name": "gk3_zone", "description": "GK3 Zone", "unit": "none"},
            {"name": "rechts", "description": "GK3 Rechtswert (x)", "unit": "none"},
            {"name": "hoch", "description": "GK3 Hochwert (y)", "unit": "none"},
			{"name": "geom", "description": "Geometry", "unit": "none"} ] } ],
	"metadata_version": "1.3"}';
