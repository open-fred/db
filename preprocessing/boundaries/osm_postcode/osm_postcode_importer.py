import sys
sys.path.insert(0, './../../../')

from utility.io import download

# code execution
# - the automatic download moves files to the target directory
# - for non automatic download files must be moved to the target directory

# download links. Assign 'None' for non-automatic download:
links = None
download_files = None # not possible to download https files
schema = 'boundaries'
tablename = 'osm_postcode'

if links == None:
    # (1) decompress files
    # (2) write to database and do things in between (in this case add 'stelle')
    pass
else:
    download(links, download_files)