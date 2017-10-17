-- metadata
COMMENT ON TABLE scenario.abbb_constraints IS '{
    "title": "constraints for simulation",
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
            "date": "2016-10-18",
            "comment": "Created table, added description"},
            {"name": "Kilian Zimmerer",
            "email": "",
            "date": "2017-10-17",
            "comment": "Update metadata to v1.3"}],
    "resources": [
            {"name": "scenario.abbb_constraints",
            "format": "PostgreSQL",
            "fields": [
                {"name": "id",
                "description": "Unique identifier",
                "unit": ""},
                {"name": "scenario",
                "description": "Scenario name",
                "unit": ""},
                {"name": "constr",
                "description": "constraint",
                "unit": ""},
                {"name": "val",
                "description": "value for constraint",
                "unit": "different"}]}],
    "metadata_version": "1.3"}';
