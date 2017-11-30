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
COMMENT ON TABLE scenario.abbb_regions IS '{
    "title": "Regions of BBB",
    "description": "Transformer parameters",
    "language": [ ""  ],
    "spatial": {
        "location": "",
        "extend": "",
        "resolution": ""},
    "temporal": {
        "reference_date": "",
        "start": "",
        "end": "",
        "resolution": ""},
    "sources": [
            {"name": "",
            "description": "",
            "url": "",
            "license": "",
            "copyright": ""}],
    "license": {
        "id": "",
        "name": "",
        "version": "",
        "url": "",
        "instruction": "",
        "copyright": ""},
    "contributors": [
            {"name": "Elisa Gaudchau",
            "email": "elisa.gaudchau@rl-institut.de",
            "date": "2016-10-05",
            "comment": "Created table, added description"},
            {"name": "Kilian Zimmerer",
            "email": "",
            "date": "2017-10-17",
            "comment": "Update metadata to v1.3"}],
    "resources": [
            {"name": "scenario.abbb_regions",
            "format": "PostgreSQL",
            "fields": [
                {"name": "id",
                "description": "Unique identifier",
                "unit": ""},
                {"name": "region",
                "description": "Regionaler Zusammenhang der einen Knoten definiert",
                "unit": ""},
                {"name": "reg",
                "description": "Abk\u00fcrzung f\u00fcr Region",
                "unit": ""},
                {"name": "nutsID",
                "description": "id gem\u00e4\u00df der Tabelle oemof.geo_nuts_rg_2013",
                "unit": ""},
                {"name": "geom",
                "description": "Geometrie",
                "unit": "MW"}]}],
    "metadata_version": "1.3"}';
