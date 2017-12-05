# run with python 3.x
# TODO: test it with database connection

import sys
sys.path.insert(0, './../../../')

from utility.io import download, extraction, write_to_db, database_session

# links: Assign 'None' for non-automatic download:
# not possible to download https files yet
links = None
files = ['plz-1stellig.shp.zip']
schema = 'boundaries'
tablename = 'osm_postcode'
conn = database_session(section='reiners_db')

if links == None:
    pass
else:
    download(links, files)

data_files1 = extraction(files[0]) # exctracts data_file from download files
write_to_db(data_files1[0], conn, tablename = tablename, schemaname = schema) # write data_file to database
# add 'stellen': here somethin can be added to this table
# data_file2 = extraction(files[1])
# ...