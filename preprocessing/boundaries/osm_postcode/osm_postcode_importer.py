import sys
sys.path.insert(0, './../../../')

from utility.io import download

# code execution
# - the automatic download moves files to the target directory
# - for non automatic download files must be moved to the target directory

# download links. Assign 'None' for non-automatic download:
links = ["http://spatialkeydocs.s3.amazonaws.com/FL_insurance_sample.csv.zip"]
download_files = ['plz_1stellig.zip']
schema = 'boundaries'
tablename = 'osm_postcode'

if links == None:
    pass
else:
    download(links, download_files)