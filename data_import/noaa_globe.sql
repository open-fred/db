-- metadata
COMMENT ON TABLE environmental.noaa_globe IS '{
	"Name": "Global Land One-km Base Elevation Project (GLOBE)",
	"Source": [{
		"Name": "National Geophysical Data Center, NOAA",
		"URL":  "http://www.ngdc.noaa.gov/mgg/topo/globe.html" }],
	"Reference date": "01.01.1999",
	"Date of collection": "24.10.2016",
	"Original file": "http://www.ngdc.noaa.gov/mgg/topo/DATATILES/elev/all10g.zip",
	"Spatial resolution": ["Global"],
	"Description": ["A 30-arc-second (1-km) gridded, quality-controlled global Digital Elevation Model (DEM)"],
	"Column": [
		{"Name": "rid", "Description": "Unique identifier", "Unit": " " },
		{"Name": "rast", "Description": "Raster tiles", "Unit": "" } ],
	"Changes":[
		{"Name": "Ludwig Hülk", "Mail": "ludwig.huelk@rl-institut.de",
		"Date":  "24.10.2016", "Comment": "Create table and import data" } ],
	"ToDo": ["Please complete"],
	"Licence": ["No License Provided"],
	"Instructions for proper use": ["GLOBE Task Team and others (Hastings, David A., Paula K. Dunbar, Gerald M. Elphingstone, Mark Bootz, Hiroshi Murakami, Hiroshi Maruyama, Hiroshi Masaharu, Peter Holland, John Payne, Nevin A. Bryant, Thomas L. Logan, J.-P. Muller, Gunter Schreier, and John S. MacDonald), eds., 1999. The Global Land One-kilometer Base Elevation (GLOBE) Digital Elevation Model, Version 1.0. National Oceanic and Atmospheric Administration, National Geophysical Data Center, 325 Broadway, Boulder, Colorado 80305-3328, U.S.A. Digital data base on the World Wide Web (URL: http://www.ngdc.noaa.gov/mgg/topo/globe.html) and CD-ROMs. Cite as: National Geophysical Data Center, 1999. Global Land One-kilometer Base Elevation (GLOBE) v.1. Hastings, D. and P.K. Dunbar. National Geophysical Data Center, NOAA. doi:10.7289/V52R3PMS [access date]."]
	}';

SELECT obj_description('environmental.noaa_globe' ::regclass) ::json;

-- grant
ALTER TABLE environmental.noaa_globe
	OWNER TO oeuser;
