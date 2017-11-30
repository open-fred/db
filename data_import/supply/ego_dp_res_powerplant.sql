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
COMMENT ON TABLE supply.ego_dp_res_powerplant IS '{
    "title": "eGo dataprocessing - Renewable powerlants",
    "description": "",
    "language": [ "eng", "ger"  ],
    "spatial": {
        "location": "",
        "extend": "Gemany",
        "resolution": " "},
    "temporal": {
        "reference_date": " ",
        "start": "",
        "end": "",
        "resolution": ""},
    "sources": [
            {"name": "eGo dataprocessing",
            "description": " ",
            "url": "https://github.com/openego/data_processing",
            "license": "",
            "copyright": "\u00a9 Reiner Lemoine Institut"},
            {"name": "OpenStreetMap",
            "description": " ",
            "url": "http://www.openstreetmap.org/",
            "license": "",
            "copyright": "\u00a9 OpenStreetMap contributors"},
            {"name": "BKG - Verwaltungsgebiete 1:250.000 (vg250)",
            "description": " ",
            "url": "http://www.geodatenzentrum.de/",
            "license": "",
            "copyright": "\u00a9 GeoBasis-DE / BKG 2016 (data changed)"},
            {"name": "Statistisches Bundesamt (Destatis) - Zensus2011",
            "description": " ",
            "url": "https://www.destatis.de/DE/Methoden/Zensus_/Zensus.html",
            "license": "",
            "copyright": "\u00a9 Statistisches Bundesamt, Wiesbaden, Genesis-Online, 2016; Datenlizenz by-2-0"}],
    "license": {
        "id": "ODbL-1.0",
        "name": "Open Data Commons Open Database License 1.0",
        "version": "1.0",
        "url": "https://opendatacommons.org/licenses/odbl/1.0/",
        "instruction": "You are free: To Share, To Create, To Adapt; As long as you: Attribute, Share-Alike, Keep open!",
        "copyright": "\u00a9 Reiner Lemoine Institut"},
    "contributors": [
            {"name": "Ludee",
            "email": " ",
            "date": "2017-04-13",
            "comment": "Create table"},
            {"name": "Kilian Zimmerer",
            "email": "",
            "date": "2017-10-17",
            "comment": "Update metadata to v1.3"}],
    "resources": [
            {"name": "supply.ego_dp_res_powerplant",
            "format": "PostgreSQL",
            "fields": [
                {"name": "version",
                "description": "Version id",
                "unit": ""},
                {"name": "id",
                "description": "Unique identifier",
                "unit": ""}]}],
    "metadata_version": "1.3"}';
