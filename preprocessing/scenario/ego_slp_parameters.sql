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
COMMENT ON TABLE scenario.ego_slp_parameters IS '{
    "title": "eGo dataprocessing - SLP parameters",
    "description": "Set of parameters (sometimes assumptions) that are required to calculate sectoral peak within LV grid districts. The parameters consumption_peak_{h,g,l}{0..6} (i.e. consumption_peak_g0) reflect the ratio of peak demand (in kW) to annual consumption (kWh). This parameter can be used to determine a peak load based on given annual consuption.",
    "language": [ "eng"  ],
    "spatial": {
        "location": "",
        "extend": "",
        "resolution": ""},
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
            {"name": "Repr\u00e4sentative VDEW-Lastprofile",
            "description": "Autoren: Hermann Meier and Christian F\u00fcnfgeld and Thomas Adam and Bernd Schiefdecker",
            "url": " ",
            "license": "",
            "copyright": " "}],
    "license": {
        "id": "ODbL-1.0",
        "name": "Open Data Commons Open Database License 1.0",
        "version": "1.0",
        "url": "https://opendatacommons.org/licenses/odbl/1.0/",
        "instruction": "You are free: To Share, To Create, To Adapt; As long as you: Attribute, Share-Alike, Keep open!",
        "copyright": "\u00a9 Reiner Lemoine Institut"},
    "contributors": [
            {"name": "gplssm",
            "email": "",
            "date": "19.04.2017",
            "comment": "Create table and insert initial parameters"},
            {"name": "Kilian Zimmerer",
            "email": "",
            "date": "2017-10-17",
            "comment": "Update metadata to v1.3"}],
    "resources": [
            {"name": "scenario.ego_slp_parameters",
            "format": "PostgreSQL",
            "fields": [
                {"name": "parameter",
                "description": "name of parameter",
                "unit": " "},
                {"name": "value",
                "description": "numeric value of parameter",
                "unit": "various, see column unit"},
                {"name": "unit",
                "description": "unit of parameter value in each row",
                "unit": " "}]}],
    "metadata_version": "1.3"}';
