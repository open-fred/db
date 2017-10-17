-- metadata
COMMENT ON TABLE scenario.abbb_emob IS '{
    "title": "emobility in Berlin and Brandenburg",
    "description": "A collection of simulation parameters, focus on technologies",
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
            "date": "2016-11-15",
            "comment": "Created table, added description"},
            {"name": "Kilian Zimmerer",
            "email": "",
            "date": "2017-10-17",
            "comment": "Update metadata to v1.3"}],
    "resources": [
            {"name": "scenario.abbb_emob",
            "format": "PostgreSQL",
            "fields": [
                {"name": "id",
                "description": "Unique identifier",
                "unit": ""},
                {"name": "scenario",
                "description": "Scenario name",
                "unit": ""},
                {"name": "region",
                "description": "region",
                "unit": ""},
                {"name": "energy",
                "description": "emob demand",
                "unit": "different"}]}],
    "metadata_version": "1.3"}';
