/*
BNetzA EEG-Anlagenstammdaten Wind Analyse

__copyright__   = "© Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = "https://www.gnu.org/licenses/agpl-3.0.en.html"
__author__      = "Ludwig Hülk"

 * This file is part of project open_FRED (https://github.com/open-fred/db).
 * It's copyrighted by the contributors recorded in the version control history:
 * dataprocessing/windpowerlib/bnetza_eeg_anlagenstammdaten_wind_analyse.sql
 * 
 * SPDX-License-Identifier: AGPL-3.0-or-later
*/


-- Windpower

-- WEA manufacturers by name
WITH wea AS (
    SELECT  "7.1_windanlagenhersteller" AS wea_manufacturer, 
            count(id) AS wea_count
    FROM    supply.bnetza_eeg_anlagenstammdaten
    WHERE   "4.1_energieträger" = 'Wind Land' 
            OR "4.1_energieträger" = 'Wind See'
    GROUP BY wea_manufacturer
    ORDER by wea_manufacturer)
SELECT  wea_manufacturer,wea_count
FROM    wea;


-- WEA manufacturers by count
WITH wea AS (
    SELECT  substring(lower("7.1_windanlagenhersteller")from 1 for 6) AS wea_manufacturer_s, count(id) AS wea_count
    FROM    supply.bnetza_eeg_anlagenstammdaten
    WHERE   "4.1_energieträger" = 'Wind Land' 
            OR "4.1_energieträger" = 'Wind See'
    GROUP BY substring(lower("7.1_windanlagenhersteller")from 1 for 6)
    ORDER by wea_count DESC)
SELECT  wea_manufacturer_s,wea_count
FROM    wea
WHERE   wea_count > 3;

-- WEA manufactures by type
WITH wea AS (
    SELECT  wea_manufacturer,
            wea_power_class,
            wea_type,
            count(*) AS wea_count,
            sum("4.2_installierte_leistung") AS wea_power_sum
    FROM    model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    GROUP BY wea_manufacturer,wea_power_class,wea_type
    ORDER by wea_manufacturer,wea_power_class,wea_type)
SELECT  wea_manufacturer,wea_power_class,wea_type,wea_count,wea_power_sum
FROM    wea;

-- WEA manufactures update by count
WITH wea AS (
    SELECT  wea_manufacturer, 
            count(id) AS wea_count
    FROM    model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    GROUP BY wea_manufacturer
    ORDER by wea_count DESC)
SELECT  wea_manufacturer,wea_count
FROM    wea;

-- WEA manufactures by name
WITH wea AS (
    SELECT  "7.1_windanlagenhersteller" AS wea_manu, 
            wea_manufacturer, 
            count(id) AS wea_count
    FROM    model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    GROUP BY wea_manu,wea_manufacturer
    ORDER by wea_manu)
SELECT  wea_manu,wea_manufacturer,wea_count
FROM    wea;

-- WEA manufactures by name
WITH wea AS (
    SELECT  wea_manufacturer,
            wea_power_class,
            count(id) AS wea_count,
            sum("4.2_installierte_leistung") AS wea_power
    FROM    model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    GROUP BY wea_manufacturer,wea_power_class
    ORDER by wea_manufacturer,wea_power_class)
SELECT  wea_manufacturer,wea_power_class,wea_count,wea_power
FROM    wea;

-- WEA by power class
WITH wea AS (
    SELECT  wea_power_class, 
            count(id) AS wea_count
    FROM    model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
    GROUP BY wea_power_class
    ORDER by wea_power_class)
SELECT  wea_power_class,wea_count
FROM    wea;

-- WEA types by count
WITH wea AS (
    SELECT  "7.1_windanlagenhersteller" AS wea_manufacturer,
            "7.2_anlagentyp" AS wea_type, 
            "4.2_installierte_leistung" AS power,
            count(id) AS wea_count
    FROM    supply.bnetza_eeg_anlagenstammdaten
    WHERE   "4.1_energieträger" = 'Wind Land' 
            OR "4.1_energieträger" = 'Wind See'
    GROUP BY "7.1_windanlagenhersteller","7.2_anlagentyp","4.2_installierte_leistung"
    ORDER by power DESC)
SELECT  wea_manufacturer,wea_type,power,wea_count
FROM    wea;


-- Meldegrund by count
SELECT  "meldegrund", 
        count(id) AS wea_count
FROM    supply.bnetza_eeg_anlagenstammdaten
WHERE   "4.1_energieträger" = 'Wind Land' 
        OR "4.1_energieträger" = 'Wind See'
GROUP BY "meldegrund"
ORDER by wea_count DESC;


-- Leistung
SELECT  "4.2_installierte_leistung",
        count(id) AS wea_count
FROM    supply.bnetza_eeg_anlagenstammdaten
WHERE   "4.1_energieträger" = 'Wind Land' 
        OR "4.1_energieträger" = 'Wind See'
GROUP BY "4.2_installierte_leistung"
ORDER by "4.2_installierte_leistung" DESC;


-- Stilllegungsdatum
SELECT  "id","4.5_stilllegungsdatum"
FROM    supply.bnetza_eeg_anlagenstammdaten
WHERE   ("4.1_energieträger" = 'Wind Land' 
               OR "4.1_energieträger" = 'Wind See') AND
        "4.5_stilllegungsdatum" IS NOT NULL 
ORDER BY "4.5_stilllegungsdatum" DESC;


-- Genehmigung
SELECT "id","3.4_geplantes_inbetriebnahme-datum"
FROM    supply.bnetza_eeg_anlagenstammdaten
WHERE   ("4.1_energieträger" = 'Wind Land' 
               OR "4.1_energieträger" = 'Wind See')
        AND ("meldegrund" = 'Genehmigung'
        AND "3.4_geplantes_inbetriebnahme-datum" < date(now()))
ORDER BY "3.4_geplantes_inbetriebnahme-datum" DESC;


-- Genehmigung
WITH a AS (
    SELECT  count(*) AS cnt_a
    FROM    supply.bnetza_eeg_anlagenstammdaten
    WHERE   ("4.1_energieträger" = 'Wind Land' 
               OR "4.1_energieträger" = 'Wind See')
            AND ("meldegrund" = 'Genehmigung'
            AND "3.4_geplantes_inbetriebnahme-datum" <= date(now()))),
    b AS (
    SELECT  count(*) AS cnt_b
    FROM    supply.bnetza_eeg_anlagenstammdaten
    WHERE   ("4.1_energieträger" = 'Wind Land' 
               OR "4.1_energieträger" = 'Wind See')
            AND ("meldegrund" = 'Genehmigung'
            AND "3.4_geplantes_inbetriebnahme-datum" >= date(now()))),
    c AS (
    SELECT  count(*) AS cnt_c
    FROM    supply.bnetza_eeg_anlagenstammdaten
    WHERE   ("4.1_energieträger" = 'Wind Land' 
               OR "4.1_energieträger" = 'Wind See')
            AND ("meldegrund" = 'Genehmigung'
            AND "3.4_geplantes_inbetriebnahme-datum" IS NULL))
SELECT  cnt_a,cnt_b,cnt_c
FROM    a,b,c;

-- Rotordurchmesser
SELECT  'D', count(*)
FROM    model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
WHERE   "7.4_rotordurch-messer" > 0
UNION ALL
SELECT  '0', count(*)
FROM    model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
WHERE   "7.4_rotordurch-messer" = 0
UNION ALL
SELECT  'NA', count(*)
FROM    model_draft.bnetza_eeg_anlagenstammdaten_wind_classification
WHERE   "7.4_rotordurch-messer" IS NULL;
