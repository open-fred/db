/*
BNetzA EEG-Anlagenstammdaten Windfarms / Local Turbine Type Clusters (LTTC)

__copyright__   = "© Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = "https://www.gnu.org/licenses/agpl-3.0.en.html"
__author__      = "Ludwig Hülk"

 * This file is part of project open_FRED (https://github.com/open-fred/db).
 * It's copyrighted by the contributors recorded in the version control history:
 * dataprocessing/windpowerlib/bnetza_eeg_anlagenstammdaten_wind_lttc.sql
 * 
 * SPDX-License-Identifier: AGPL-3.0-or-later
*/


-- BNetzA windfarms / Local Turbine Type Clusters (LTTC) 
DROP TABLE IF EXISTS    model_draft.bnetza_eeg_anlagenstammdaten_wind_lttc CASCADE;
CREATE TABLE            model_draft.bnetza_eeg_anlagenstammdaten_wind_lttc (
    lttc_id                                         SERIAL,
    version                                         text,
    wea_count                                       integer,
    lttc_power_sum                                  double precision,
    lttc_area_ha                                    double precision,
    wea_manufacturer                                text,
    wea_power_class                                 double precision,
    wea_power_avg                                   double precision,
    wea_hubhight_avg                                double precision,
    wea_rotor_avg                                   double precision,
    wea_rotor_area_avg                              double precision,
    wea_specific_power                              double precision,
    wea_type                                        text,
    geom                                            geometry(Polygon,3035),
    CONSTRAINT bnetza_eeg_anlagenstammdaten_wind_lttc_pkey PRIMARY KEY (lttc_id) );

-- access rights
ALTER TABLE model_draft.bnetza_eeg_anlagenstammdaten_wind_lttc OWNER TO oeuser;

-- index
CREATE INDEX bnetza_eeg_anlagenstammdaten_wind_lttc_geom_idx
    ON model_draft.bnetza_eeg_anlagenstammdaten_wind_lttc USING gist (geom);


-- insert windfarm geom
INSERT INTO model_draft.bnetza_eeg_anlagenstammdaten_wind_lttc (version,lttc_area_ha,wea_manufacturer,wea_power_class,geom)
    SELECT  b.version,
            ST_AREA(b.geom),
            b.wea_manufacturer,
            b.wea_power_class,
            b.geom
    FROM    (SELECT 
                a.version,
                a.wea_manufacturer,
                a.wea_power_class,
                (ST_DUMP(ST_MULTI(
                ST_UNION(ST_BUFFER(a.geom, 500)
                )))).geom ::geometry(Polygon,3035) AS geom
            FROM    model_draft.bnetza_eeg_anlagenstammdaten_wind_classification AS a
            WHERE   a.version = '2017-12'
            GROUP BY a.version,a.wea_manufacturer,a.wea_power_class
            ) AS b;

-- update windfarm data
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_lttc AS t1
    SET wea_count = t2.wea_count,
        lttc_power_sum = t2.lttc_power_sum,
        wea_power_avg = t2.wea_power_avg,
        wea_hubhight_avg = t2.wea_hubhight_avg,
        wea_rotor_avg = t2.wea_rotor_avg,
        wea_rotor_area_avg = (pi() * power(t2.wea_rotor_avg,2)) / 4,
        wea_type = t2.wea_type
    FROM (
        SELECT  b.lttc_id AS lttc_id,
                COUNT(a.geom) AS wea_count,
                SUM(a."4.2_installierte_leistung") AS lttc_power_sum,
                AVG(a."4.2_installierte_leistung") AS wea_power_avg,
                AVG(a."7.3_nabenhöhe") AS wea_hubhight_avg,
                AVG(a."7.4_rotordurch-messer") AS wea_rotor_avg,
                string_agg(a.wea_type, ';') AS wea_type
        FROM    model_draft.bnetza_eeg_anlagenstammdaten_wind_classification AS a,
                model_draft.bnetza_eeg_anlagenstammdaten_wind_lttc AS b
        WHERE   b.geom && a.geom AND ST_CONTAINS(b.geom,a.geom)
        GROUP BY b.lttc_id
        ) AS t2
    WHERE   t1.lttc_id = t2.lttc_id;

-- update specific power
UPDATE  model_draft.bnetza_eeg_anlagenstammdaten_wind_lttc
    SET wea_specific_power = wea_power_avg / wea_rotor_area_avg
    WHERE   wea_rotor_area_avg <> 0 
            OR wea_rotor_area_avg <> NULL;
