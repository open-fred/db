
-- rename geom
ALTER TABLE		environmental.copernicus_clc_2012_v_18_4
RENAME COLUMN 		wkb_geometry TO geom;

-- index (geom)
CREATE INDEX 		copernicus_clc_2012_v_18_4_gix 
	ON 		environmental.copernicus_clc_2012_v_18_4 USING GIST (geom);

-- metadata
COMMENT ON TABLE environmental.copernicus_clc_2012_v_18_4 IS '{
    "title": "Copernicus Land Monitoring Services  - CORINE Land Cover (CLC) - CLC 2012",
    "description": "Copernicus is a European system for monitoring the Earth. Data is collected by different sources, including Earth observation satellites and in-situ sensors. The data is processed and provides reliable and up-to-date information about six thematic areas: land, marine, atmosphere, climate change, emergency management and security.",
    "language": [ "eng" ],
    "spatial": {
        "resolution": " ",
        "location": "",
        "extend": "Europe"
    },
    "temporal": {
        "reference_date": "2012",
        "start": "",
        "end": "",
        "resolution": ""
    },
    "sources": [
        {
            "url": "http://land.copernicus.eu/pan-european/corine-land-cover/clc-2012/view",
            "copyright": "© European Union",
            "name": "Corine Land Cover (CLC) 2012, Version 18.5.1",
            "license": "COMMISSION DELEGATED REGULATION (EU) No 1159/2013",
            "description": "CLC2012 is the 4th CORINE Land Cover inventory and took 3 years to finalize. A dual coverage of satellite images were used. Computer Assisted Photo-Interpretation (CAPI) was the dominating mapping technology. The number of countries using advanced (bottom-up) solutions has slightly increased. All of the EEA39 countries have participated within the official lifetime of the project. Please note that a technical semantic check for this product is still ongoing. It is therefore possible that a minor update will follow in 2016. The product is only partially validated."
        }
    ],
    "license": {
        "name": "COMMISSION DELEGATED REGULATION (EU) No 1159/2013",
        "copyright": "© European Union",
        "url": "http://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX%3A32013R1159",
        "instruction": "Access to data is based on a principle of full, open and free access as established by the Copernicus data and information policy Regulation (EU) No 1159/2013 of 12 July 2013. This regulation establishes registration and licensing conditions for GMES/Copernicus users and can be found here. Free, full and open access to this data set is made on the conditions that: 1. When distributing or communicating Copernicus dedicated data and Copernicus service information to the public, users shall inform the public of the source of that data and information. 2. Users shall make sure not to convey the impression to the public that the users activities are officially endorsed by the Union. 3. Where that data or information has been adapted or modified, the user shall clearly state this. 4. The data remain the sole property of the European Union. Any information and data produced in the framework of the action shall be the sole property of the European Union. Any communication and publication by the beneficiary shall acknowledge that the data were produced with funding by the European Union.",
        "version": " ",
        "id": " "
    },
    "contributors": [
        {
            "date": "2015-12-09",
            "comment": "Create table",
            "name": "Ludee",
            "email": " "
        },
        {
            "date": "2017-03-30",
            "comment": "Update metadata",
            "name": "Ludee",
            "email": " "
        },
        {
            "date": "2017-04-04",
            "comment": "Update license",
            "name": "Ludee",
            "email": " "
        },
        {
            "date": "2017-8-10",
            "comment": "Update metadata to v1.3",
            "name": "KilianZimmerer",
            "email": ""
        }
    ],
    "resources": [
        {
            "fields": [
                {
                    "name": "ogc_fid",
                    "unit": "",
                    "description": "Object id"
                },
                {
                    "name": "geom",
                    "unit": "",
                    "description": "Geometry"
                },
                {
                    "name": "code_12",
                    "unit": "",
                    "description": " "
                },
                {
                    "name": "id",
                    "unit": "",
                    "description": " "
                },
                {
                    "name": "remark",
                    "unit": "",
                    "description": " "
                },
                {
                    "name": "area_ha",
                    "unit": "",
                    "description": " "
                },
                {
                    "name": "shape_length",
                    "unit": "",
                    "description": " "
                },
                {
                    "name": "shape_area",
                    "unit": "",
                    "description": " "
                }
            ],
            "name": "environmental.copernicus_clc_2012_v_18_4",
            "format": "sql"
        }
    ],
    "metadata_version": "1.3"
}';

-- select description
SELECT obj_description('environmental.copernicus_clc_2012_v_18_4' ::regclass) ::json;
