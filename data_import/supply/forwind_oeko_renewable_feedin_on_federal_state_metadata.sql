/*
create tables for re feed-in timeseries

__copyright__ = "tba"
__license__ = "tba"
__auhtor__ = "Ludee"
*/

DROP TABLE IF EXISTS supply.forwind_oeko_renewable_feedin_per_federalstate CASCADE;
CREATE TABLE supply.forwind_oeko_renewable_feedin_per_federalstate (
	id SERIAL NOT NULL,
	technology text,
	factor text,
	year smallint NOT NULL,
	federal_state text,
	comment text,
	time_series real[],
	CONSTRAINT forwind_oeko_renewable_feedin_per_federalstate_pkey PRIMARY KEY (id));

ALTER TABLE 		supply.forwind_oeko_renewable_feedin_per_federalstate OWNER TO oeuser;
GRANT ALL ON TABLE 	supply.forwind_oeko_renewable_feedin_per_federalstate TO oeuser;

-- metadata
COMMENT ON TABLE supply.forwind_oeko_renewable_feedin_per_federalstate IS '{
	"title": "Data record for generic feed-in time series from 2020 to 2050 for PV, wind onshore and wind offshore per federal state",
	"description": "Datensatz fuer generische Einspeisezeitreihen 2020 bis 2050 für PV, Wind Onshore und Wind Offshore pro Bundesland",
	"language": [ "eng", "ger"],
	"reference_date": "2016-11-23",
	"sources": [
		{"name": "Öko-Institut e.V.","description": "Daten zur Einspeisung erneuerbarer Energien","url": "https://www.oeko.de/aktuelles/2016/daten-zur-einspeisung-erneuerbarer-energien/"},
		{"name": "Öko-Institut e.V.","description": "ForWind & Öko-Institut (2016): Generische Einspeisezeitreihen der Photovoltaik auf Bundeslandebene für Deutschland im Zeitraum 2020 bis 2050.","url": "https://www.oeko.de/aktuelles/2016/daten-zur-einspeisung-erneuerbarer-energien/"},
		{"name": "Öko-Institut e.V.","description": "Datensatz_fuer_generische_Einspeisezeitreihen_der_Offshore_Windenergie_2020_bis_2050.xlsx","url": ""},
		{"name": "Öko-Institut e.V.","description": "Datensatz_fuer_generische_Einspeisezeitreihen_der_Onshore_Windenergie_2020_bis_2050.xlsx","url": ""},
		{"name": "Öko-Institut e.V.","description": "Datensatz_fuer_generische_Einspeisezeitreihen_der_Photovoltaik_2020_bis_2050.xlsx","url": ""} ],
	"spatial": [
		{"extend": "germany",
		"resolution": "federal state"} ],
	"license": [
		{"id": "GPL-3.0",
		"name": "CC BY-SA 3.0",
		"version": "3.0",
		"url": "https://creativecommons.org/licenses/by-sa/3.0/",
		"instruction": "Dieses Werk bzw. dieser Inhalt steht unter einer Creative Commons Namensnennung, Weitergabe unter gleichen Bedingungen 3.0 Lizenz (CC-BY-SA 3.0) - Öko-Institut e.V. 2016"} ],
	"contributors": [
		{"name": "Ludwig Hülk",	"email": "ludwig.huelk@rl-institut.de",
		"date": "2016-11-25", "comment": "import data"},
		{"name": "Ludwig Hülk", "email": "ludwig.huelk@rl-institut.de",
		"date": "2016-12-08", "comment": "updated metadata"} ],
	"resources": [{
		"schema": {
			"fields": [
				{"name": "id", "description": "unique identifier", "unit": "" },
				{"name": "technology", "description": "renewable PV, wind onshore, wind offshore", "unit": "" },
				{"name": "factor", "description": "normiert (standardised), skaliert (scaled)", "unit": "" },
				{"name": "year", "description": "reference year", "unit": "" },
				{"name": "federal_state", "description": "german federal state", "unit": "" },
				{"name": "comment", "description": "comment on time series", "unit": "" },
				{"name": "time_series", "description": "time series as list with 8760 hours per year", "unit": "normiert=no unit, skaliert=MW" } ]},
		"meta_version": "1.0"}] }';

-- select description
SELECT obj_description('supply.forwind_oeko_renewable_feedin_per_federalstate' ::regclass) ::json;


DROP TABLE IF EXISTS supply.forwind_oeko_renewable_capacity_per_federalstate CASCADE;
CREATE TABLE supply.forwind_oeko_renewable_capacity_per_federalstate (
	id SERIAL NOT NULL,
	technology text,
	year smallint NOT NULL,
	federal_state text,
	comment text,
	capacity integer,
	CONSTRAINT forwind_oeko_renewable_capacity_per_federalstate_pkey PRIMARY KEY (id));

ALTER TABLE 		supply.forwind_oeko_renewable_capacity_per_federalstate OWNER TO oeuser;
GRANT ALL ON TABLE 	supply.forwind_oeko_renewable_capacity_per_federalstate TO oeuser;

-- metadata
COMMENT ON TABLE supply.forwind_oeko_renewable_capacity_per_federalstate IS '{
	"title": "Data record for generic feed-in time series from 2020 to 2050 for PV, wind onshore and wind offshore per federal state",
	"description": "Datensatz fuer generische Einspeisezeitreihen 2020 bis 2050 für PV, Wind Onshore und Wind Offshore pro Bundesland",
	"language": [ "eng", "ger"],
	"reference_date": "2016-11-23",
	"sources": [
		{"name": "Öko-Institut e.V.","description": "Daten zur Einspeisung erneuerbarer Energien","url": "https://www.oeko.de/aktuelles/2016/daten-zur-einspeisung-erneuerbarer-energien/"},
		{"name": "Öko-Institut e.V.","description": "ForWind & Öko-Institut (2016): Generische Einspeisezeitreihen der Photovoltaik auf Bundeslandebene für Deutschland im Zeitraum 2020 bis 2050.","url": "https://www.oeko.de/aktuelles/2016/daten-zur-einspeisung-erneuerbarer-energien/"},
		{"name": "Öko-Institut e.V.","description": "Datensatz_fuer_generische_Einspeisezeitreihen_der_Offshore_Windenergie_2020_bis_2050.xlsx","url": ""},
		{"name": "Öko-Institut e.V.","description": "Datensatz_fuer_generische_Einspeisezeitreihen_der_Onshore_Windenergie_2020_bis_2050.xlsx","url": ""},
		{"name": "Öko-Institut e.V.","description": "Datensatz_fuer_generische_Einspeisezeitreihen_der_Photovoltaik_2020_bis_2050.xlsx","url": ""},],
	"spatial": [
		{"extend": "germany",
		"resolution": "federal state"} ],
	"license": [
		{"id": "GPL-3.0",
		"name": "CC BY-SA 3.0",
		"version": "3.0",
		"url": "https://creativecommons.org/licenses/by-sa/3.0/",
		"instruction": "Dieses Werk bzw. dieser Inhalt steht unter einer Creative Commons Namensnennung, Weitergabe unter gleichen Bedingungen 3.0 Lizenz (CC-BY-SA 3.0) - Öko-Institut e.V. 2016"} ],
	"contributors": [
		{"name": "Ludwig Hülk",	"email": "ludwig.huelk@rl-institut.de",
		"date": "2016-11-25", "comment": "import data"},
		{"name": "Ludwig Hülk", "email": "ludwig.huelk@rl-institut.de",
		"date": "2016-12-08", "comment": "updated metadata"} ],
	"resources": [{
		"schema": {
			"fields": [
				{"name": "id", "description": "unique identifier", "unit": "" },
				{"name": "technology", "description": "renewable PV, wind onshore, wind offshore", "unit": "" },
				{"name": "factor", "description": "normiert (standardised), skaliert (scaled)", "unit": "" },
				{"name": "year", "description": "reference year", "unit": "" },
				{"name": "federal_state", "description": "german federal state", "unit": "" },
				{"name": "comment", "description": "comment on time series", "unit": "" },
				{"name": "time_series", "description": "time series as list with 8760 hours per year", "unit": "normiert=no unit, skaliert=MW" } ]},
		"meta_version": "1.0"}] }';

-- select description
SELECT obj_description('supply.forwind_oeko_renewable_capacity_per_federalstate' ::regclass) ::json;
