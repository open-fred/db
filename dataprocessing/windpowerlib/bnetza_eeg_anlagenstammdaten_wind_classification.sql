/*
BNetzA EEG-Anlagenstammdaten Hersteller und Typen Analyse

__copyright__   = "© Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = "https://www.gnu.org/licenses/agpl-3.0.en.html"
__author__      = "Ludwig Hülk"

 * This file is part of project open_FRED (https://github.com/open-fred/db).
 * It's copyrighted by the contributors recorded in the version control history:
 * dataprocessing/windpowerlib/bnetza_eeg_anlagenstammdaten_wind_classification.sql
 * 
 * SPDX-License-Identifier: AGPL-3.0-or-later
*/


-- BNetzA EEG-Anlagenstammdaten
DROP TABLE IF EXISTS    model_draft.bnetza_eeg_anlagenstammdaten_wind_classification CASCADE;
CREATE TABLE            model_draft.bnetza_eeg_anlagenstammdaten_wind_classification (
    "id"                                            integer NOT NULL,
    "version"                                       text,
    "meldegrund"                                    text,
    "anlagennummer"                                 character varying(14),
    "1.8_eeg-anlagenschlüssel"                      text,
    "4.2_installierte_leistung"                     double precision,
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
    wea_manufacturer                                text,
    wea_power_class                                 double precision,
    wea_rotor_area                                  double precision,
    wea_specific_power                              double precision,
    wea_type                                        text,
    wea_type_comment                                text,
    geom                                            geometry(Point,3035),
    CONSTRAINT bnetza_eeg_anlagenstammdaten_wind_classification_pkey PRIMARY KEY (id) );

-- access rights
ALTER TABLE model_draft.bnetza_eeg_anlagenstammdaten_wind_classification OWNER TO oeuser;

-- index
CREATE INDEX bnetza_eeg_anlagenstammdaten_wind_classification_geom_idx
    ON model_draft.bnetza_eeg_anlagenstammdaten_wind_classification USING gist (geom);

-- insert test data
INSERT INTO model_draft.bnetza_eeg_anlagenstammdaten_wind_classification (
        "id",
        "version",
        "meldegrund",
        "anlagennummer",
        "1.8_eeg-anlagenschlüssel",
        "4.2_installierte_leistung",
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
        "geom")
    SELECT
        "id",
        "version",
        "meldegrund",
        "anlagennummer",
        "1.8_eeg-anlagenschlüssel",
        "4.2_installierte_leistung",
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
        ST_TRANSFORM(geom,3035) ::geometry(Point,3035)
    FROM    supply.bnetza_eeg_anlagenstammdaten
    WHERE   ("4.1_energieträger" = 'Wind Land' 
                OR "4.1_energieträger" = 'Wind See')
            AND ("meldegrund" <> 'Endgültige Stilllegung') ;


-- WEA 'Enercon'
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_manufacturer = 'Enercon'
    WHERE   "7.1_windanlagenhersteller" = 'Enercon'
        OR  "7.1_windanlagenhersteller" = 'ENERCON'
        OR  "7.1_windanlagenhersteller" = 'EnerconENERCON GmbH'
        OR  "7.1_windanlagenhersteller" = 'enercon gmbh'
        OR  "7.1_windanlagenhersteller" = 'Enercon GmbH'
        OR  "7.1_windanlagenhersteller" = 'ENERCON gmbH'
        OR  "7.1_windanlagenhersteller" = 'ENERCON Gmbh'
        OR  "7.1_windanlagenhersteller" = 'ENERCON GmbH'
        OR  "7.1_windanlagenhersteller" = 'ENERCON  GmbH'
        OR  "7.1_windanlagenhersteller" = 'ENERCON GMbH'
        OR  "7.1_windanlagenhersteller" = 'ENERCON GmbH GmbH'
        OR  "7.1_windanlagenhersteller" = 'ENERON GmbH'
        OR  "7.1_windanlagenhersteller" = 'ENRERCON GmbH';


-- WEA 'Vestas'
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_manufacturer = 'Vestas'
    WHERE   "7.1_windanlagenhersteller" = 'Vestas'
        OR  "7.1_windanlagenhersteller" = 'VESTAS'
        OR  "7.1_windanlagenhersteller" = 'Vestas Deuitschland GmbH'
        OR  "7.1_windanlagenhersteller" = 'Vestas Deutsachland GmbH'
        OR  "7.1_windanlagenhersteller" = 'Vestas Deutschland GmbH'
        OR  "7.1_windanlagenhersteller" = 'VESTAS Deutschland GmbH'
        OR  "7.1_windanlagenhersteller" = 'Vestas Wind System A/S'
        OR  "7.1_windanlagenhersteller" = 'Vestas Wind Systems A/S';

-- WEA 'Nordex'
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_manufacturer = 'Nordex'
    WHERE   "7.1_windanlagenhersteller" = 'Nordex'
        OR  "7.1_windanlagenhersteller" = 'NORDEX'
        OR  "7.1_windanlagenhersteller" = 'Nordex Energy GmbH'
        OR  "7.1_windanlagenhersteller" = 'Nordex se'
        OR  "7.1_windanlagenhersteller" = 'Nordex SE'
        OR  "7.1_windanlagenhersteller" = 'Nordex  SE';

-- WEA 'Senvion/REpower'
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_manufacturer = 'Senvion/REpower'
    WHERE   "7.1_windanlagenhersteller" = 'Repower'
        OR  "7.1_windanlagenhersteller" = 'REpower'
        OR  "7.1_windanlagenhersteller" = 'Repower jetzt Senvion'
        OR  "7.1_windanlagenhersteller" = 'Repower/ jetzt Senvion'
        OR  "7.1_windanlagenhersteller" = 'REpower/Senvion'
        OR  "7.1_windanlagenhersteller" = 'Repower Systems'
        OR  "7.1_windanlagenhersteller" = 'Senvion'
        OR  "7.1_windanlagenhersteller" = 'Senvion  Deutschland GmbH'
        OR  "7.1_windanlagenhersteller" = 'Senvion Deutschland GmbH'
        OR  "7.1_windanlagenhersteller" = 'SenvionDeutschland GmbH'
        OR  "7.1_windanlagenhersteller" = 'SENVION Deutschland GmbH'
        OR  "7.1_windanlagenhersteller" = 'Senvion GmbH'
        OR  "7.1_windanlagenhersteller" = 'Senvion (REpower)'
        OR  "7.1_windanlagenhersteller" = 'SENVION (REpower)'
        OR  "7.1_windanlagenhersteller" = 'Senvion S.A.'
        OR  "7.1_windanlagenhersteller" = 'Senvion SE';

-- WEA 'GE Wind'
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_manufacturer = 'GE Wind'
    WHERE   "7.1_windanlagenhersteller" = 'GE'
        OR  "7.1_windanlagenhersteller" = 'GE General Electric'
        OR  "7.1_windanlagenhersteller" = 'General Electric'
        OR  "7.1_windanlagenhersteller" = 'General Electric (GE)'
        OR  "7.1_windanlagenhersteller" = 'GE Renewable Energy'
        OR  "7.1_windanlagenhersteller" = 'GE Wind Energy'
        OR  "7.1_windanlagenhersteller" = 'GE Wind Energy GmbH'
        OR  "7.1_windanlagenhersteller" = 'GE Wind GmbH';

-- WEA 'Siemens'
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_manufacturer = 'Siemens'
    WHERE   "7.1_windanlagenhersteller" = 'Siemens'
        OR  "7.1_windanlagenhersteller" = 'Siemens AG'
        OR  "7.1_windanlagenhersteller" = 'Siemens Windpower'
        OR  "7.1_windanlagenhersteller" = 'Siemens Wind Power'
        OR  "7.1_windanlagenhersteller" = 'Siemens Wind Power GmbH & Co. KG'
        OR  "7.1_windanlagenhersteller" = 'Siemes Wind Power GmbH & Co. KG';

-- WEA 'Eno'
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_manufacturer = 'Eno'
    WHERE   "7.1_windanlagenhersteller" = 'eno energy GmbH'
        OR  "7.1_windanlagenhersteller" = 'eno energy systems'
        OR  "7.1_windanlagenhersteller" = 'eno energy systems GmbH'
        OR  "7.1_windanlagenhersteller" = 'ene energy systems GmbH';

-- WEA 'Adwen'
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_manufacturer = 'Adwen'
    WHERE   "7.1_windanlagenhersteller" = 'ADWEN'
        OR  "7.1_windanlagenhersteller" = 'Adwen GmbH'
        OR  "7.1_windanlagenhersteller" = 'AREVA GmbH';

-- WEA 'Vensys'
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_manufacturer = 'Vensys'
    WHERE   "7.1_windanlagenhersteller" = 'Vensys'
        OR  "7.1_windanlagenhersteller" = 'Vensys Energy AG'
        OR  "7.1_windanlagenhersteller" = 'VENSYS Energy AG'
        OR  "7.1_windanlagenhersteller" = 'Vensys Energy AG Im Langental 6    66539 Neuenkirchen';

-- WEA 'Other'
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_manufacturer = 'Other'
    WHERE   wea_manufacturer IS NULL;


-- wea_power_class 1
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_power_class = '1'   -- 0-1 MW
    WHERE   "4.2_installierte_leistung" <= 1000;

-- wea_power_class 2
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_power_class = '2'   -- 1-2 MW
    WHERE   ("4.2_installierte_leistung" > 1000
                AND "4.2_installierte_leistung" <= 2000);

-- wea_power_class 3
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_power_class = '3'   -- 2-3 MW
    WHERE   ("4.2_installierte_leistung" > 2000
                AND "4.2_installierte_leistung" <= 3000);

-- wea_power_class 4
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_power_class = '4'   -- 3-5 MW
    WHERE   ("4.2_installierte_leistung" > 3000
                AND "4.2_installierte_leistung" <= 5000);

-- wea_power_class 5
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_power_class = '5'   -- 5-8 MW
    WHERE   ("4.2_installierte_leistung" > 5000
                AND "4.2_installierte_leistung" <= 8000);

-- wea types
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_type = upper(replace(replace(replace("7.2_anlagentyp",' ' , ''),'-' , ''),',' , '.'));


-- rotor diameter
SELECT	*
FROM	model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
WHERE	"7.4_rotordurch-messer" > 200;

-- Update rotor area
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     "7.4_rotordurch-messer" = 80
    WHERE   id = 13189;
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     "7.4_rotordurch-messer" = 82
    WHERE   id = 18483 OR id = 18485 OR id = 18486 OR id = 18487 OR id = 12466;

-- rotor diameter
SELECT  *
FROM    model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
WHERE   "7.4_rotordurch-messer" = 0 OR "7.4_rotordurch-messer" IS NULL;

-- update rotor area
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET     wea_rotor_area = (pi() * power("7.4_rotordurch-messer",2)) / 4;

-- update specific power
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    SET wea_specific_power = "4.2_installierte_leistung" / wea_rotor_area
    WHERE   (wea_rotor_area <> 0 
            OR wea_rotor_area <> NULL)
            AND "4.2_installierte_leistung" > 1000;
