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
COMMENT ON TABLE scenario.abbb_demand IS '{
    "title": "oemof app brandenburg berlin - demand per sector",
    "description": "aggregated and modified demand data (electricity and heat) for every technology, region and scenario",
    "language": [ "eng", "ger"  ],
    "spatial": {
        "location": "",
        "extend": "Brandenburg and Berlin",
        "resolution": "Regionale Planungsgemeinschaften und Berlin"},
    "temporal": {
        "reference_date": "2016-11-24",
        "start": "",
        "end": "",
        "resolution": ""},
    "sources": [
            {"name": "Amt f\u00fcr Statistik Berlin-Brandenburg: Statistischer Bericht E IV 4 \u2013 j / 12; Energie- und CO2-Bilanz im Land Brandenburg 2012; 2015",
            "description": "Energiebilanz Brandenburg",
            "url": "http://www.lak-energiebilanzen.de/seiten/download/Archiv%20Bilanzen/Brandenburg/2012/Energiebilanz%20Brandenburg%202012.pdf",
            "license": "",
            "copyright": ""},
            {"name": "Ministerium f\u00fcr Wirtschaft und Energie des Landes Brandenburg: 6. Monitoringbericht zur Energiestrategie des Landes Brandenburg; Berichtsjahr 2014 , M\u00e4rz 2016",
            "description": "",
            "url": "https://www.zab-energie.de/de/system/files/media-downloads/6._monitoringbericht_zur_energiestrategie_-_berichtsjahr_2014_1.pdf",
            "license": "",
            "copyright": ""},
            {"name": "Ministerium f\u00fcr Wirtschaft und Europaangelegenheiten des Landes Brandenburg: Energiestrategie 2030 des Landes Brandenburg; Februar 2012",
            "description": "",
            "url": "http://www.energie.brandenburg.de/media/bb1.a.2865.de/Energiestrategie_2030.pdf",
            "license": "",
            "copyright": ""},
            {"name": "ZAB ZukunftsAgentur Brandenburg GmbH",
            "description": "nicht \u00f6ffentlich",
            "url": "",
            "license": "",
            "copyright": ""},
            {"name": "Hirschl, Reusswig, Wei\u00df et.al: Entwurf f\u00fcr ein Berliner Energie- und Klimaschutzprogramm (BEK) \u2013 technischer Anhang B; Dezember 2015; im Auftrag des Landes Berlin, Senats-verwaltung f\u00fcr Stadtentwicklung und Umwelt;",
            "description": "",
            "url": "http://www.stadtentwicklung.berlin.de/umwelt/klima-schutz/bek_berlin/",
            "license": "",
            "copyright": ""}],
    "license": {
        "id": "ODbL-1.0",
        "name": "Open Database License (ODbL) v1.0",
        "version": "1.0",
        "url": "http://www.opendefinition.org/licenses/odc-odbl",
        "instruction": "You are free to share, to create and to adapt as long as you attribute, share-alike and keep open. Copyright 2016 Reiner Lemoine Institut",
        "copyright": ""},
    "contributors": [
            {"name": "Elisa Gaudchau",
            "email": "elisa.gaudchau@rl-institut.de",
            "date": "2-08-6--20",
            "comment": "create metadata"},
            {"name": "Elisa Gaudchau",
            "email": "elisa.gaudchau@rl-institut.de",
            "date": "2-12-6--20",
            "comment": "update metadata"},
            {"name": "Kilian Zimmerer",
            "email": "",
            "date": "2017-10-17",
            "comment": "Update metadata to v1.3"}],
    "resources": [
            {"name": "scenario.abbb_demand",
            "format": "PostgreSQL",
            "fields": [
                {"name": "id",
                "description": "unique identifier",
                "unit": ""},
                {"name": "scenario",
                "description": "name of scenario",
                "unit": ""},
                {"name": "region",
                "description": "abbreviation of region",
                "unit": ""},
                {"name": "sector",
                "description": "abbreviation of demand sector",
                "unit": ""},
                {"name": "type",
                "description": "type of demand or technology",
                "unit": ""},
                {"name": "demand",
                "description": "demand",
                "unit": "MWh"}]}],
    "metadata_version": "1.3"}';

