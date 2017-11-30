"""Database IO
This script contains functions for the database connection
"""

__copyright__   = "Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = "https://github.com/openego/data_processing/blob/master/LICENSE"
__author__      = "Ludee"

import sys
import os
from sqlalchemy import create_engine
import getpass
import logging
import urllib.request

def database_session(section):
    """
    Get SQLAlchemy session object with valid connection to OEDB
    
    Parameters
    ----------
    section : str
        section (database) in config file
    
    Returns
    -------
    conn : SQLAlchemy connection object
    """

    # get session object by oemof.db tools (requires .oemof/config.ini)
    try:
        from oemof import db
        conn = db.connection(section=section)

    except:
        print('Please provide connection parameters to database:\n' +
              'Hit [Enter] to take defaults')

        host = input('host (default 141.44.24.88): ') or 'oe.iws.cs.ovgu.de'
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


def log():
    """
    Configure logging in console and log file
    
    Parameters
    ----------
    None
    
    Returns
    -------
    None
    """

    # set logger
    logger = logging.getLogger('PreProcessingLogger')
    logger.setLevel(logging.INFO)
    # file handler (fh)
    fh = logging.FileHandler(r'openfred_preprocessing.log')
    fh.setLevel(logging.INFO)
    # console handler (ch)
    ch = logging.StreamHandler()
    ch.setLevel(logging.INFO)
    # create date format
    formatter = logging.Formatter('%(asctime)s %(message)s',
                                    datefmt='%Y-%m-%d %I:%M:%S')
    fh.setFormatter(formatter)
    ch.setFormatter(formatter)
    # add fh & ch
    logger.addHandler(fh)
    logger.addHandler(ch)

    return loggerq

#TODO:
def download(links, download_files):
    """Download files from links

    :return:
    """

    target = './download_data/'


    if not os.path.exists(target):
        os.mkdir(target)

    for i, link in enumerate(links):
        urllib.request.urlretrieve(link, target + download_files[i])

def decompression():
    """Decompresses files

    :return:
    """
    pass

def write_to_db():
    """Write file to database using dataframe to sql from pandas

    :return:
    """
    pass

