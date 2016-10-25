-- metadata
COMMENT ON TABLE environmental.ecjrc_glc2000 IS '{
	"Name": "Global Land Cover 2000 (GLC2000)",
	"Source": [{
		"Name": "European Commission, Joint Research Centre",
		"URL":  "http://www.ngdc.noaa.gov/mgg/topo/globe.html" }],
	"Reference date": "2000",
	"Date of collection": "25.10.2016",
	"Original file": "http://www.ngdc.noaa.gov/mgg/topo/DATATILES/elev/all10g.zip imported with https://github.com/open-fred/db/blob/master/data_import/setup_ecjrc_glc2000_raster.txt",
	"Spatial resolution": ["Global"],
	"Description": ["The general objective is to provide for the year 2000 a harmonized land cover database over the whole globe. The year Two Thousand is considered as a reference year for environmental assessment in relation to various activities, in particular the United Nations Ecosystem-related International Conventions."],
	"Column": [
		{"Name": "rid", "Description": "Unique identifier", "Unit": " " },
		{"Name": "rast", "Description": "Raster tiles", "Unit": "" } ],
	"Changes":[
		{"Name": "Ludwig Hülk", "Mail": "ludwig.huelk@rl-institut.de",
		"Date":  "25.10.2016", "Comment": "Create table and import data" } ],
	"ToDo": [""],
	"Licence": ["No License Provided"],
	"Instructions for proper use": ["Global Land Cover 2000 database. European Commission, Joint Research Centre, 2003. See disclaimer and copyright notice: http://forobs.jrc.ec.europa.eu/products/glc2000/disclaimer.php"]
	}';

SELECT obj_description('environmental.ecjrc_glc2000' ::regclass) ::json;

-- index (rast)
CREATE INDEX ecjrc_glc2000_rast_idx
	ON environmental.ecjrc_glc2000 USING GIST (ST_ConvexHull(rast));

-- public.raster_columns
SELECT AddRasterConstraints('environmental'::name, 'ecjrc_glc2000'::name, 'rast'::name, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE);

-- grant
ALTER TABLE environmental.ecjrc_glc2000
	OWNER TO oeuser;


-- MView (filter and projection)
DROP MATERIALIZED VIEW IF EXISTS  	environmental.ecjrc_glc2000_germany_mview CASCADE;
CREATE MATERIALIZED VIEW         	environmental.ecjrc_glc2000_germany_mview AS
	SELECT	rid, ST_CLIP(ST_TRANSFORM(ng.rast,3035),vg.geom) AS rast
	FROM	environmental.ecjrc_glc2000 AS ng,
		political_boundary.bkg_vg250_1_sta_bbox_mview AS vg
	WHERE	vg.geom && ST_TRANSFORM(ST_ConvexHull(ng.rast),3035);

-- index (rast)
CREATE INDEX noaa_globe_germany_mview_rast_idx
	ON environmental.ecjrc_glc2000_germany_mview USING GIST (ST_ConvexHull(rast));

-- grant
ALTER TABLE environmental.ecjrc_glc2000_germany_mview
	OWNER TO oeuser;
