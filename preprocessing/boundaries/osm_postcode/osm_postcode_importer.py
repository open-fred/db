import sys
sys.path.insert(0, './../../../')

from utility.io import download, extraction

# code execution
# - the automatic download moves files to the target directory
# - for non automatic download files must be moved to the target directory

# download links. Assign 'None' for non-automatic download:
links = None
download_files = ['plz_2stellig.zip'] # not possible to download https files
schema = 'boundaries'
tablename = 'osm_postcode'

if links == None:
    # (1) decompress and extract files
    # (2) write to database and do things in between (in this case add 'stelle')
    extraction(download_files)
else:
    download(links, download_files)
    extraction(download_files)