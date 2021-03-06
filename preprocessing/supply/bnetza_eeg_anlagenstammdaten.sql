/*
BNetzA EEG-Anlagenstammdaten

Import Excel file (2017_12_Veroeff_RegDaten.xlsx) in QGIS and export to database as:
model_draft.bnetza_eeg_anlagenstammdaten

__copyright__   = "© Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = "https://www.gnu.org/licenses/agpl-3.0.en.html"
__author__      = "Ludwig Hülk"

 * This file is part of project open_FRED (https://github.com/open-fred/db).
 * It's copyrighted by the contributors recorded in the version control history:
 * preprocessing/supply/bnetza_eeg_anlagenstammdaten.sql
 * 
 * SPDX-License-Identifier: AGPL-3.0-or-later
*/


-- table
DROP TABLE IF EXISTS    supply.bnetza_eeg_anlagenstammdaten CASCADE;
CREATE TABLE            supply.bnetza_eeg_anlagenstammdaten (
    "id"                                            serial NOT NULL,
    "version"                                       text,
    "meldedatum"                                    date,
    "meldegrund"                                    text,
    "anlagennummer"                                 character varying(14),
    "1.8_eeg-anlagenschlüssel"                      text,
    "3.1_genehmigungs-datum"                        date,
    "3.2_genehmigungs-behörde"                      text,
    "3.3_genehmigungs-aktenzeichen"                 text,
    "3.4_geplantes_inbetriebnahme-datum"            date,
    "3.5_errichtungs-frist"                         date,
    "4.1_energieträger"                             text,
    "4.2_installierte_leistung"                     double precision,
    "4.2.1_inst._leistung_vor_änderung"             double precision,
    "4.2.2_inst._leistung_nach_änderung"            double precision,
    "4.3_tatsächliche_inbetriebnahme"               date,
    "4.4_datum_leistungsänderung"                   date,
    "4.5_stilllegungsdatum"                         date,
    "4.6_name_der_anlage"                           text,
    "4.7_strasse_bzw._flurstück"                    text,
    "4.8_hausnummer"                                text,
    "4.9_postleitzahl"                              text,
    "4.10_ort_bzw._gemarkung"                       text,
    "4.10_1_gemeindeschlüssel"                      text,
    "4.11_bundesland"                               text,
    "4.12_utm-zonenwert"                            integer,
    "4.12_utm-east"                                 double precision,
    "4.12_utm-north"                                double precision,
    "4.13_zugehörigkeit_anlagenpark"                text,
    "4.13.1_name_des_anlagenparks"                  text,
    "4.14_spannungsebene"                           text,
    "4.15_netzanschlusspunkt"                       text,
    "4.15.1_zählpunktbezeichnung"                   text,
    "4.16_name_des_netzbetreibers"                  text,
    "4.17_fernsteuerbarkeit_durch"                  text,
    "4.18_gemeinsame_techn._einrichtung"            text,
    "4.19_inanspruchnahme_finanzielle_Förderung"    text,
    "4.20_Eigenverbrauch_geplant"                   text,
    "5.1_eingesetzte_biomasse"                      text,
    "5.2_ausschließlich_biomasse"                   text,
    "5.3_flexprämie_eeg"                            text,
    "5.4_erstmalige_inanspruchnahme_flexprämie"     date,
    "5.4.1_leistungserhöhung_flexprämie"            text,
    "5.4.2_datum_leistungserhöhung_flexprämie"      date,
    "5.4.3_umfang_der_leistungserhöhung"            text,
    "5.5_erstmalig_ausschließlich_biomethan"        text,
    "5.6_zustimmung_gesonderte_veröffentlich"       text,
    "6.1_kwk-anlage"                                text,
    "6.2_thermische_leistung"                       double precision,
    "6.3_andere_energieträger"                      text,
    "6.4_eingesetzte_andere_energieträger"          text,
    "6.5_erstmalige_stromerzeugung"                 date,
    "7.1_windanlagenhersteller"                     text,
    "7.2_anlagentyp"                                text,
    "7.3_nabenhöhe"                                 double precision,
    "7.4_rotordurch-messer"                         double precision,
    "7.5_repowering"                                text,
    "7.6_stilllegung_gemeldet"                      text,
    "7.7.1_mittlere_windgeschwindigkeit"            double precision,
    "7.7.2_formparameter_weibull-verteilung"        double precision,
    "7.7.3_skalenparameter_weibull-verteilung"      double precision,
    "7.7.4_ertrags-einschätzung"                    double precision,
    "7.7.5_ertragseinschätzung/referenzertrag"      double precision,
    "7.8.1_seelage"                                 text,
    "7.8.2_wassertiefe"                             text,
    "7.8.3_küstenentfernung"                        text,
    "7.9_pilotwindanlage"                           text,
    "8.1_ertüchtigung_wasserkraftanlage"            text,
    "8.2_art_der_ertüchtigung"                      text,
    "8.3_zulassungspflichtige_maßnahme"             text,
    "8.4._höhe_leistungssteigerung"                 double precision,
    "8.5_datum_der_ertüchtigung"                    date,
    "9.1_zuschlagnummer_pv-freifläche"              text,
    "9.2_fläche_pv-freiflächenanlage"               double precision,
    "9.3_pv-freifläche_auf_ackerland"               double precision,
    geom                                            geometry(Point,5652),
    CONSTRAINT bnetza_eeg_anlagenstammdaten_pkey PRIMARY KEY (id) );

-- access rights
ALTER TABLE supply.bnetza_eeg_anlagenstammdaten OWNER TO oeuser;

-- index
CREATE INDEX bnetza_eeg_anlagenstammdaten_geom_idx
    ON supply.bnetza_eeg_anlagenstammdaten USING gist (geom);

-- metadata
COMMENT ON TABLE supply.bnetza_eeg_anlagenstammdaten IS 
    '{"title": "BNetzA - EEG-Anlagenstammdaten (außer PV-Gebäudeanlagen) - Veröffentlichung der Registerdaten",
    "description": "In der nachfolgenden Datei werden für alle erneuerbaren Energieträger (außer für PV-Anlagen, die auf, an oder in einem Gebäude oder einer sonstigen baulichen Anlage angebracht sind) zur Überprüfung der Ausbaupfade notwendigen Veröffentlichungen der Bezugszeiträume und Zubau-Zahlen auf den Tabellenblätter 2, 3 und 4 aufgeführt.",
    "language": [ "eng", "ger" ],
    "spatial": 
        {"location": "none",
        "extent": "Germany",
        "resolution": "vector"},
    "temporal": 
        {"reference_date": "2017-12",
        "start": "2014-08",
        "end": "2017-12",
        "resolution": "none"},
    "sources": [
        {"name": "Bundesnetzagentur - EEG-Registerdaten und EEG-Fördersätze", 
            "description": "", 
            "url": "https://www.bundesnetzagentur.de/DE/Sachgebiete/ElektrizitaetundGas/Unternehmen_Institutionen/ErneuerbareEnergien/ZahlenDatenInformationen/EEG_Registerdaten/EEG_Registerdaten_node.html", 
            "license": "Namensnennung-Keine Bearbeitung 3.0 Deutschland (CC BY-ND 3.0 DE)", 
            "copyright": "© 1998-2017 Bundesnetzagentur für Elektrizität, Gas, Telekommunikation, Post und Eisenbahnen; Pressestelle"},
        {"name": "", "description": "", "url": "", "license": "", "copyright": ""} ],
    "license":
        {"id": "CC-BY-ND-3.0-DE",
        "name": "Namensnennung-Keine Bearbeitung 3.0 Deutschland (CC BY-ND 3.0 DE)",
        "version": "3.0",
        "url": "https://creativecommons.org/licenses/by-nd/3.0/de/",
        "instruction": "Die Inhalte des Internetauftritts stehen, soweit nicht anders gekennzeichnet, unter der Creative Commons Namensnennung-Keine Bearbeitung 3.0 Deutschland Lizenz.",
        "copyright": "© 1998-2017 Bundesnetzagentur für Elektrizität, Gas, Telekommunikation, Post und Eisenbahnen; Pressestelle"},
    "contributors": [
        {"name": "Ludee", "email": "none", "date": "2018-02-01", "comment": "Create table"},
        {"name": "", "email": "", "date": "", "comment": ""} ],
    "resources": [
        {"name": "supply.bnetza_eeg_anlagenstammdaten",        
        "format": "PostgreSQL",
        "fields": [
            {"name": "id", "description": "Unique identifier", "unit": ""},
            {"name": "version", "description": "Veröffentlichungsdatum", "unit": ""},
            {"name": "meldedatum", "description": "Meldedatum", "unit": ""},
            {"name": "meldegrund", "description": "Meldegrund", "unit": ""},
            {"name": "anlagennummer", "description": "Anlagennummer", "unit": ""},
            {"name": "1.8_eeg-anlagenschlüssel", "description": "1.8 EEG-Anlagenschlüssel", "unit": ""},
            {"name": "3.1_genehmigungs-datum", "description": "3.1 Genehmigungs-datum", "unit": ""},
            {"name": "3.2_genehmigungs-behörde", "description": "3.2 Genehmigungs-behörde", "unit": ""},
            {"name": "3.3_genehmigungs-aktenzeichen", "description": "3.3 Genehmigungs-Aktenzeichen", "unit": ""},
            {"name": "3.4_geplantes_inbetriebnahme-datum", "description": "3.4 Geplantes Inbetriebnahme-datum", "unit": ""},
            {"name": "3.5_errichtungs-frist", "description": "3.5 Errichtungs-frist", "unit": ""},
            {"name": "4.1_energieträger", "description": "4.1 Energieträger", "unit": ""},
            {"name": "4.2_installierte_leistung", "description": "4.2 Installierte Leistung [kW]", "unit": "kW"},
            {"name": "4.2.1_inst._leistung_vor_änderung", "description": "4.2.1 Inst. Leistung vor Leistungs-änderung (ohne Flexprämie)", "unit": ""},
            {"name": "4.2.2_inst._leistung_nach_änderung", "description": "4.2.2 Inst. Leistung nach Leistungs-änderung (ohne Flexprämie)", "unit": ""},
            {"name": "4.3_tatsächliche_inbetriebnahme", "description": "4.3 Tatsächliche Inbetrieb-nahme", "unit": ""},
            {"name": "4.4_datum_leistungsänderung", "description": "4.4 Datum Leistungs-änderung", "unit": ""},
            {"name": "4.5_stilllegungsdatum", "description": "4.5 Stilllegungs-datum", "unit": ""},
            {"name": "4.6_name_der_anlage", "description": "4.6 Name der Anlage", "unit": ""},
            {"name": "4.7_strasse_bzw._flurstück", "description": "4.7 Strasse bzw. Flurstück", "unit": ""},
            {"name": "4.8_hausnummer", "description": "4.8 Haus-nummer", "unit": ""},
            {"name": "4.9_postleitzahl", "description": "4.9 Postleit-zahl", "unit": ""},
            {"name": "4.10_ort_bzw._gemarkung", "description": "4.10 Ort bzw. Gemarkung", "unit": ""},
            {"name": "4.10_1_gemeindeschlüssel", "description": "Gemeinde-schlüssel", "unit": ""},
            {"name": "4.11_bundesland", "description": "4.11 Bundesland", "unit": ""},
            {"name": "4.12_utm-zonenwert", "description": "UTM-Zonenwert", "unit": ""},
            {"name": "4.12_utm-east", "description": "UTM-East", "unit": ""},
            {"name": "4.12_utm-north", "description": "UTM-North", "unit": ""},
            {"name": "4.13_zugehörigkeit_anlagenpark", "description": "4.13 Zugehörigkeit Anlagenpark", "unit": ""},
            {"name": "4.13.1_name_des_anlagenparks", "description": "4.13.1  Name des Anlagenparks", "unit": ""},
            {"name": "4.14_spannungsebene", "description": "4.14 Spannungsebene", "unit": ""},
            {"name": "4.15_netzanschlusspunkt", "description": "4.15 Netzanschlusspunkt", "unit": ""},
            {"name": "4.15.1_zählpunktbezeichnung", "description": "Zählpunktbezeichnung", "unit": ""},
            {"name": "4.16_name_des_netzbetreibers", "description": "4.16 Name des Netzbetreibers", "unit": ""},
            {"name": "4.17_fernsteuerbarkeit_durch", "description": "4.17 Fernsteuerbarkeit durch:", "unit": ""},
            {"name": "4.18_gemeinsame_techn._einrichtung", "description": "4.18 Gemeinsame techn. Einrichtung", "unit": ""},
            {"name": "4.19_inanspruchnahme_finanzielle_Förderung", "description": "4.19 Inanspruchnahme finanzielle Förderung", "unit": ""},
            {"name": "4.20_Eigenverbrauch_geplant", "description": "4.20 Eigenverbrauch geplant", "unit": ""},
            {"name": "5.1_eingesetzte_biomasse", "description": "5.1 Eingesetzte Biomasse", "unit": ""},
            {"name": "5.2_ausschließlich_biomasse", "description": "5.2 Ausschließlich Biomasse", "unit": ""},
            {"name": "5.3_flexprämie_eeg", "description": "5.3 Flexprämie nach § 54 EEG 2014 oder § 50b EEG 2017", "unit": ""},
            {"name": "5.4_erstmalige_inanspruchnahme_flexprämie", "description": "5.4 Erstmalige Inanspruchnahme Flexprämie", "unit": ""},
            {"name": "5.4.1_leistungserhöhung_flexprämie", "description": "5.4.1 Leistungserhöhung Flexprämie", "unit": ""},
            {"name": "5.4.2_datum_leistungserhöhung_flexprämie", "description": "5.4.2 Datum Leistungserhöhung Flexprämie", "unit": ""},
            {"name": "5.4.3_umfang_der_leistungserhöhung", "description": "5.4.3 Umfang der Leistungserhöhung [kW]", "unit": "kW"},
            {"name": "5.5_erstmalig_ausschließlich_biomethan", "description": "5.5 Erstmalig ausschließlich Biomethan", "unit": ""},
            {"name": "5.6_zustimmung_gesonderte_veröffentlich", "description": "5.6 (5.8 in alter Version) Zustimmung gesonderte Veröffentlichung Biomethanstilllegung", "unit": ""},
            {"name": "6.1_kwk-anlage", "description": "6.1 KWK-Anlage", "unit": ""},
            {"name": "6.2_thermische_leistung", "description": "6.2 Thermische Leistung [kW]", "unit": "kW"},
            {"name": "6.3_andere_energieträger", "description": "6.3 Andere Energieträger vor 01.08.2014", "unit": ""},
            {"name": "6.4_eingesetzte_andere_energieträger", "description": "6.4 Eingesetzte andere Energieträger vor 01.08.2014", "unit": ""},
            {"name": "6.5_erstmalige_stromerzeugung", "description": "6.5 Erstmalige Stromerzeugung", "unit": ""},
            {"name": "7.1_windanlagenhersteller", "description": "7.1 Windanlagenhersteller", "unit": ""},
            {"name": "7.2_anlagentyp", "description": "7.2 Anlagentyp", "unit": ""},
            {"name": "7.3_nabenhöhe", "description": "7.3 Nabenhöhe [m]", "unit": "m"},
            {"name": "7.4_rotordurch-messer", "description": "7.4 Rotordurch-messer [m]", "unit": "m"},
            {"name": "7.5_repowering", "description": "7.5 Repowering", "unit": ""},
            {"name": "7.6_stilllegung_gemeldet", "description": "7.6 Stilllegung gemeldet", "unit": ""},
            {"name": "7.7.1_mittlere_windgeschwindigkeit", "description": "7.7.1 Mittlere Windge-schwindigkeit [m/s]", "unit": "m/s"},
            {"name": "7.7.2_formparameter_weibull-verteilung", "description": "7.7.2 Formparameter Weibull-Verteilung", "unit": ""},
            {"name": "7.7.3_skalenparameter_weibull-verteilung", "description": "7.7.3 Skalenparameter Weibull-Verteilung", "unit": ""},
            {"name": "7.7.4_ertrags-einschätzung", "description": "7.7.4 Ertrags-einschätzung [kWh]", "unit": "kWh"},
            {"name": "7.7.5_ertragseinschätzung/referenzertrag", "description": "7.7.5 Ertragseinschätzung/Referenzertrag [%]", "unit": "%"},
            {"name": "7.8.1_seelage", "description": "7.8.1 Seelage", "unit": ""},
            {"name": "7.8.2_wassertiefe", "description": "7.8.2 Wassertiefe [m]", "unit": "m"},
            {"name": "7.8.3_küstenentfernung", "description": "7.8.3 Küstenentfernung [km]", "unit": "km"},
            {"name": "7.9_pilotwindanlage", "description": "7.9 Pilotwindanlage (neue Spalte seit EEG2017)", "unit": ""},
            {"name": "8.1_ertüchtigung_wasserkraftanlage", "description": "8.1 Ertüchtigung Wasserkraftanlage", "unit": ""},
            {"name": "8.2_art_der_ertüchtigung", "description": "8.2 Art der Ertüchtigung", "unit": ""},
            {"name": "8.3_zulassungspflichtige_maßnahme", "description": "8.3 Zulassungspflichtige Maßnahme", "unit": ""},
            {"name": "8.4._höhe_leistungssteigerung", "description": "8.4. HöheLeistungs-steigerung [%]", "unit": "%"},
            {"name": "8.5_datum_der_ertüchtigung", "description": "8.5 Datum der Ertüchtigung", "unit": ""},
            {"name": "9.1_zuschlagnummer_pv-freifläche", "description": "9.1 Zuschlagnummer PV-Freifläche", "unit": ""},
            {"name": "9.2_fläche_pv-freiflächenanlage", "description": "9.2 Wie viel Fläche wird durch die PV-Freiflächenanlage in Anspruch genommen? [ha] ", "unit": "ha"},
            {"name": "9.3_pv-freifläche_auf_ackerland", "description": "9.3 Wie viel der PV-Freifläche ist davon Ackerland? [ha] ", "unit": "ha"},
            {"name": "geom", "description": "Geometrie", "unit": ""} ] } ],
    "metadata_version": "1.3"}';

-- scenario log (project,version,io,schema_name,table_name,script_name,comment)
SELECT scenario_log('open_FRED','v0.1.0','import','supply','bnetza_eeg_anlagenstammdaten','supply.bnetza_eeg_anlagenstammdaten.sql',' ');


-- insert data
INSERT INTO supply.bnetza_eeg_anlagenstammdaten (
    "version",
    "meldedatum",
    "meldegrund",
    "anlagennummer",
    "1.8_eeg-anlagenschlüssel",
    "3.1_genehmigungs-datum",
    "3.2_genehmigungs-behörde",
    "3.3_genehmigungs-aktenzeichen",
    "3.4_geplantes_inbetriebnahme-datum",
    "3.5_errichtungs-frist",
    "4.1_energieträger",
    "4.2_installierte_leistung",
    "4.2.1_inst._leistung_vor_änderung",
    "4.2.2_inst._leistung_nach_änderung",
    "4.3_tatsächliche_inbetriebnahme",
    "4.4_datum_leistungsänderung",
    "4.5_stilllegungsdatum",
    "4.6_name_der_anlage",
    "4.7_strasse_bzw._flurstück",
    "4.8_hausnummer",
    "4.9_postleitzahl",
    "4.10_ort_bzw._gemarkung",
    "4.10_1_gemeindeschlüssel",
    "4.11_bundesland",
    "4.12_utm-zonenwert",
    "4.12_utm-east",
    "4.12_utm-north",
    "4.13_zugehörigkeit_anlagenpark",
    "4.13.1_name_des_anlagenparks",
    "4.14_spannungsebene",
    "4.15_netzanschlusspunkt",
    "4.15.1_zählpunktbezeichnung",
    "4.16_name_des_netzbetreibers",
    "4.17_fernsteuerbarkeit_durch",
    "4.18_gemeinsame_techn._einrichtung",
    "4.19_inanspruchnahme_finanzielle_Förderung",
    "4.20_Eigenverbrauch_geplant",
    "5.1_eingesetzte_biomasse",
    "5.2_ausschließlich_biomasse",
    "5.3_flexprämie_eeg",
    "5.4_erstmalige_inanspruchnahme_flexprämie",
    "5.4.1_leistungserhöhung_flexprämie",
    "5.4.2_datum_leistungserhöhung_flexprämie",
    "5.4.3_umfang_der_leistungserhöhung",
    "5.5_erstmalig_ausschließlich_biomethan",
    "5.6_zustimmung_gesonderte_veröffentlich",
    "6.1_kwk-anlage",
    "6.2_thermische_leistung",
    "6.3_andere_energieträger",
    "6.4_eingesetzte_andere_energieträger",
    "6.5_erstmalige_stromerzeugung",
    "7.1_windanlagenhersteller",
    "7.2_anlagentyp",
    "7.3_nabenhöhe",
    "7.4_rotordurch-messer",
    "7.5_repowering",
    "7.6_stilllegung_gemeldet",
    "7.7.1_mittlere_windgeschwindigkeit",
    "7.7.2_formparameter_weibull-verteilung",
    "7.7.3_skalenparameter_weibull-verteilung",
    "7.7.4_ertrags-einschätzung",
    "7.7.5_ertragseinschätzung/referenzertrag",
    "7.8.1_seelage",
    "7.8.2_wassertiefe",
    "7.8.3_küstenentfernung",
    "7.9_pilotwindanlage",
    "8.1_ertüchtigung_wasserkraftanlage",
    "8.2_art_der_ertüchtigung",
    "8.3_zulassungspflichtige_maßnahme",
    "8.4._höhe_leistungssteigerung",
    "8.5_datum_der_ertüchtigung",
    "9.1_zuschlagnummer_pv-freifläche",
    "9.2_fläche_pv-freiflächenanlage",
    "9.3_pv-freifläche_auf_ackerland",
    geom    ) 
    SELECT  '2017-12' AS "version",
        to_date("Meldedatum", 'DD.MM.YYYY'),
        "Meldegrund",
        "Anlagennummer",
        "1.8 EEG-Anlagenschlüssel",
        to_date("3.1 Genehmigungs-datum", 'DD.MM.YYYY'),
        "3.2 Genehmigungs-behörde",
        "3.3 Genehmigungs-Aktenzeichen",
        to_date("3.4 Geplantes Inbetriebnahme-datum", 'DD.MM.YYYY'),
        to_date("3.5 Errichtungs-frist", 'DD.MM.YYYY'),
        "4.1 Energieträger",
        cast(replace("4.2 Installierte Leistung [kW]",' ' , '') AS double precision),
        cast(replace("4.2.1 Inst. Leistung vor Leistungs-änderung (ohne Flexprämie)",' ' , '') AS double precision),
        cast(replace("4.2.2 Inst. Leistung nach Leistungs-änderung (ohne Flexprämie",' ' , '') AS double precision),
        to_date("4.3 Tatsächliche Inbetrieb-nahme", 'DD.MM.YYYY'),
        to_date("4.4 Datum Leistungs-änderung", 'DD.MM.YYYY'),
        to_date("4.5 Stilllegungs-datum", 'DD.MM.YYYY'),
        "4.6 Name der Anlage",
        "4.7 Strasse bzw. Flurstück",
        "4.8 Haus-nummer",
        "4.9 Postleit-zahl",
        "4.10 Ort bzw. Gemarkung",
        "Gemeinde-schlüssel",
        "4.11 Bundesland",
        "UTM-Zonenwert",
        cast("UTM-East" AS double precision),
        cast("UTM-North" AS double precision),
        "4.13 Zugehörigkeit Anlagenpark",
        "4.13.1  Name des Anlagenparks",
        "4.14 Spannungsebene",
        "4.15 Netzanschlusspunkt",
        "Zählpunktbezeichnung",
        "4.16 Name des Netzbetreibers",
        "4.17 Fernsteuerbarkeit durch:",
        "4.18 Gemeinsame techn. Einrichtung",
        "4.19 Inanspruchnahme finanzielle Förderung",
        "4.20 Eigenverbrauch geplant",
        "5.1 Eingesetzte Biomasse",
        "5.2 Ausschließlich Biomasse",
        "5.3 Flexprämie",
        to_date("5.4 Erstmalige Inanspruchnahme Flexprämie", 'DD.MM.YYYY'),
        "5.4.1 Leistungserhöhung Flexprämie",
        to_date("5.4.2 Datum Leistungserhöhung Flexprämie", 'DD.MM.YYYY'),
        "5.4.3 Umfang der Leistungserhöhung [kW]",
        "5.5 Erstmalig ausschließlich Biomethan",
        "5.6 (5.8 in alter Version) Zustimmung gesonderte Veröffentlich",
        "6.1 KWK-Anlage",
        cast(replace("6.2 Thermische Leistung [kW]",' ' , '') AS double precision),
        "6.3 Andere Energieträger vor 01.08.2014",
        "6.4 Eingesetzte andere Energieträger vor 01.08.2014",
        to_date("6.5 Erstmalige Stromerzeugung", 'DD.MM.YYYY'),
        "7.1 Windanlagenhersteller",
        "7.2 Anlagentyp",
        cast("7.3 Nabenhöhe [m]" AS double precision),
        cast("7.4 Rotordurch-messer [m]" AS double precision),
        "7.5 Repowering",
        "7.6 Stilllegung gemeldet",
        cast("7.7.1 Mittlere Windge-schwindigkeit [m/s]" AS double precision),
        cast("7.7.2 Formparameter Weibull-Verteilung" AS double precision),
        cast("7.7.3 Skalenparameter Weibull-Verteilung" AS double precision),
        cast("7.7.4 Ertrags-einschätzung [kWh]" AS double precision),
        cast("7.7.5 Ertragseinschätzung/Referenzertrag [%]" AS double precision),
        "7.8.1 Seelage",
        "7.8.2 Wassertiefe [m]",
        "7.8.3 Küstenentfernung [km]",
        "7.9 Pilotwindanlage",
        "8.1 Ertüchtigung Wasserkraftanlage",
        "8.2 Art der Ertüchtigung",
        "8.3 Zulassungspflichtige Maßnahme",
        cast("8.4. HöheLeistungs-steigerung [%]" AS double precision),
        to_date("8.5 Datum der Ertüchtigung", 'DD.MM.YYYY'),
        "9.1 Zuschlagnummer PV-Freifläche",
        cast("9.2 Wie viel Fläche wird durch die PV-Freiflächenanlage in An" AS double precision),
        cast("9.3 Wie viel der PV-Freifläche ist davon Ackerland? [ha]" AS double precision),
        geom
    FROM    model_draft.bnetza_eeg_anlagenstammdaten;
