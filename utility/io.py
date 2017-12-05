"""Database IO

This script contains functions for the database connection and other utilities.
"""

__copyright__ = "Reiner Lemoine Institut"
__license__ = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__license_url__ = "https://www.gnu.org/licenses/agpl-3.0.en.html"
__author__ = "Ludee"

import os
import sys
import time
from sqlalchemy import create_engine
import getpass
import logging
import urllib.request
import zipfile
import pandas as pd


def database_session(section):
    """Get SQLAlchemy session object with valid connection to database.

    Parameters
    ----------
    section : str
        Section (database) in config file.

    Returns
    -------
    conn : connection
        SQLAlchemy connection object.
    """

    # get session object by oemof.db tools (requires .oemof/config.ini)
    try:
        from oemof import db
        conn = db.connection(section=section)
    
    # provide connection parameters manually
    except:
        print('Please provide connection parameters to database:\n' +
              'Hit [Enter] to take defaults')
        
        host = input('host (default 141.44.24.88): ') or 'oe2.iws.cs.ovgu.de'
        port = input('port (default 5432): ') or '5432'
        database = input("database name (default 'oedb'): ") or 'oedb'
        user = input('user (default postgres): ')
        # password = input('password: ')
        password = getpass.getpass(prompt='password: ',
                                   stream=sys.stderr)
        conn = create_engine(
            'postgresql://' + '%s:%s@%s:%s/%s' % (user,
                                                  password,
                                                  host,
                                                  port,
                                                  database)).connect()
    
    return conn


def logger():
    """Configure logging in console and log file.

    Returns
    -------
    rl
        Logging in console and file.
    """

    # set root logger (rl)
    rl = logging.getLogger('PreProcessingLogger')
    rl.setLevel(logging.INFO)
    rl.propagate = False

    # format
    formatter = logging.Formatter(
        '%(asctime)s %(levelname)s %(message)s',
        datefmt='%Y-%m-%d %H:%M:%S')

    # console handler (ch)
    ch = logging.StreamHandler()
    ch.setLevel(logging.INFO)
    ch.setFormatter(formatter)
    rl.addHandler(ch)

    # file handler (fh)
    fh = logging.FileHandler(r'openfred_preprocessing.log')
    fh.setLevel(logging.INFO)
    fh.setFormatter(formatter)
    rl.addHandler(fh)

    return rl


def download(links, download_files):
    """Download files from links.

    Note
    ----
    TODO: https downloads not possbile yet

    Parameters
    ----------
    links : list
        The URL to download from.
    download_files : list
        The files to download.

    """

    # directory in that data is downloaded
    target = './download_data/'

    # create directory if not existent
    if not os.path.exists(target):
        os.mkdir(target)

    # perform download
    for i, link in enumerate(links):
        urllib.request.urlretrieve(link, target + download_files[i])


def extraction(file):
    """Decompresses files and exctract relevant files.

    Note
    ----
    TODO: return

    Parameters
    ----------
    file : :obj:`list` of :obj:`str`
        A list with files to extract.

    Returns
    -------
    file_list : :obj:`list` of :obj:`str`
        A list with files that are in the zipped file.

    """

    # download directory
    # TODO: automize directory path!
    download_dir = './download_data/'

    # unzip files
    file_list = []
    if file.endswith('.zip'):
        zip_ref = zipfile.ZipFile(download_dir + file, 'r')
        zip_ref.extractall(download_dir + '{}_unzipped/'.format(file))
        zip_ref.close()
    else:
        raise NotImplementedError(
            'Decompression of this format not implemented')

    # go through directory and find files (.csv, .shp, .xlsx)
    for root, dirs, files in os.walk(download_dir + '{}_unzipped/'.format(file)):
        print(root, dirs, files)
        for f in files:
            # Include .csv, .shp and .xlsx files. Exclude private files.
            if f.endswith(('.csv', '.shp', '.xlsx')) and not f.startswith('.'):
                file_list.append(root + '/' + f)

    return file_list


def write_to_db(file, db_con, tablename = 'table_name_fir_file', schemaname = 'schema_name'):
    """Write file to database using pandas dataframe to sql.

    Note
    ----
    TODO: shapefile to database, csv to database, xlsx to database

    Parameters
    ----------

    Returns
    -------


    """

    if file.endswith('.csv'):
        df = pd.read_csv(file)
        df.to_sql(con=db_con, name=tablename, schema=schemaname, if_exists='append')
    elif file.endswith('.xlsx'):
        # TODO:
        raise NotImplementedError(
            '.xlsx format not implemented yet')
    elif file.endswith('.shp'):
        raise NotImplementedError(
            '.shp format not implemented yet')

