/*
A description of the module (short but could be more than one line).
Modules names should have short, all-lowercase names. 
The module name may have underscores if this improves readability.

__copyright__ 	= "Copyright Reiner Lemoine Institut gGmbH"
__license__ 	= "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__ 	= "https://github.com/openego/data_processing/blob/master/LICENSE"
__author__ 	= "KilianZimmerer"
__contains__	= "url"
*/

-- metadata
COMMENT ON TABLE supply.forwind_oeko_renewable_capacity_per_federalstate IS '{
    "title": "Data record for generic feed-in time series from 2020 to 2050 for PV, wind onshore and wind offshore per federal state",
    "description": "Datensatz fuer generische Einspeisezeitreihen 2020 bis 2050 f\u00fcr PV, Wind Onshore und Wind Offshore pro Bundesland",
    "language": [ "eng", "ger"  ],
    "spatial": {
        "location": "",
        "extend": "germany",
        "resolution": "federal state"},
    "temporal": {
        "reference_date": "2016-11-23",
        "start": "",
        "end": "",
        "resolution": ""},
    "sources": [
            {"name": "\u00d6ko-Institut e.V.",
            "description": "Daten zur Einspeisung erneuerbarer Energien",
            "url": "https://www.oeko.de/aktuelles/2016/daten-zur-einspeisung-erneuerbarer-energien/",
            "license": "",
            "copyright": ""},
            {"name": "\u00d6ko-Institut e.V.",
            "description": "ForWind & \u00d6ko-Institut (2016): Generische Einspeisezeitreihen der Photovoltaik auf Bundeslandebene f\u00fcr Deutschland im Zeitraum 2020 bis 2050.",
            "url": "https://www.oeko.de/aktuelles/2016/daten-zur-einspeisung-erneuerbarer-energien/",
            "license": "",
            "copyright": ""},
            {"name": "\u00d6ko-Institut e.V.",
            "description": "Datensatz_fuer_generische_Einspeisezeitreihen_der_Offshore_Windenergie_2020_bis_2050.xlsx",
            "url": "",
            "license": "",
            "copyright": ""},
            {"name": "\u00d6ko-Institut e.V.",
            "description": "Datensatz_fuer_generische_Einspeisezeitreihen_der_Onshore_Windenergie_2020_bis_2050.xlsx",
            "url": "",
            "license": "",
            "copyright": ""},
            {"name": "\u00d6ko-Institut e.V.",
            "description": "Datensatz_fuer_generische_Einspeisezeitreihen_der_Photovoltaik_2020_bis_2050.xlsx",
            "url": "",
            "license": "",
            "copyright": ""}],
    "license": {
        "id": "GPL-3.0",
        "name": "CC BY-SA 3.0",
        "version": "3.0",
        "url": "https://creativecommons.org/licenses/by-sa/3.0/",
        "instruction": "Dieses Werk bzw. dieser Inhalt steht unter einer Creative Commons Namensnennung, Weitergabe unter gleichen Bedingungen 3.0 Lizenz (CC-BY-SA 3.0) - \u00d6ko-Institut e.V. 2016",
        "copyright": ""},
    "contributors": [
            {"name": "Ludwig H\u00fclk",
            "email": "ludwig.huelk@rl-institut.de",
            "date": "1-25-6--20",
            "comment": "import data"},
            {"name": "Ludwig H\u00fclk",
            "email": "ludwig.huelk@rl-institut.de",
            "date": "2-08-6--20",
            "comment": "updated metadata"},
            {"name": "Kilian Zimmerer",
            "email": "",
            "date": "2017-10-17",
            "comment": "Update metadata to v1.3"}],
    "resources": [
            {"name": "supply.forwind_oeko_renewable_capacity_per_federalstate",
            "format": "PostgreSQL",
            "fields": [
                {"name": "id",
                "description": "unique identifier",
                "unit": ""},
                {"name": "technology",
                "description": "renewable PV, wind onshore, wind offshore",
                "unit": ""},
                {"name": "factor",
                "description": "normiert (standardised), skaliert (scaled)",
                "unit": ""}]}],
    "metadata_version": "1.3"}';
