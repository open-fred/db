# run with python 3.x
# TODO: test it with database connection

import sys
sys.path.insert(0, './../../../')

from utility.io import download, extraction, write_to_db, database_session

# links: Assign 'None' for non-automatic download:
# not possible to download https files yet
links = ['http://spatialkeydocs.s3.amazonaws.com/FL_insurance_sample.csv.zip']
files = ['plz_2stellig.zip']
schema = 'test_schema'
tablename = 'testtable'
conn = database_session(section='reiners_db')


if links == None:
    # (1) decompress and extract files
    # (2) write to database and do things in between (in this case add 'stelle')
    extraction(files)
else:
#    download(links, files) #downloads all data from list 'links'
    data_files1 = extraction(files[0]) # exctracts data_file from download files
    print(data_files1)
    write_to_db(data_files1[0], conn, tablename = tablename, schemaname = schema) # write data_file to database
    # add 'stellen': here somethin can be added to this table
    # data_file2 = extraction(files[1])
    # ...
