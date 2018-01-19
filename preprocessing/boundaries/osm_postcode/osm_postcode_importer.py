# run with python 3.x
# TODO: test it with database connection

import sys
sys.path.insert(0, './../../../') # enables import of utility.io

from utility.io import download, extraction, write_to_db, database_session

# urls: Assign 'None' for non-automatic download:
# !!!not possible to download https files yet!!!
urls = [None]

# filenames of downloaded files
files = ['plz-1stellig.shp.zip','plz-2stellig.shp.zip', 'plz-3stellig.shp.zip', 'plz-gebiete.shp.zip']



# database parameters
schema = 'boundaries'
#tablename = 'osm_postcode'
tablename = 'osm_postcode'

conn = database_session(section='reiners_db')


# In the following automatic download is either performed or not
if urls == [None] or None:
    pass
else:
    download(urls, files)

data_file1 = extraction(files[0]) # exctracts 1st data_file from 'files' list
write_to_db(data_file1[0], conn, tablename = tablename, schemaname = schema, stellen=1) # write data_file to database

data_file2 = extraction(files[1]) # exctracts 2nd data_file from 'files' list
write_to_db(data_file2[0], conn, tablename = tablename, schemaname = schema, stellen=2) # write data_file to database

data_file3 = extraction(files[2]) # exctracts 3rd data_file from 'files' list
write_to_db(data_file3[0], conn, tablename = tablename, schemaname = schema, stellen=3) # write data_file to database

data_file4 = extraction(files[3]) # exctracts 4th data_file from 'files' list
write_to_db(data_file4[0], conn, tablename = tablename, schemaname = schema, stellen=5) # write data_file to database