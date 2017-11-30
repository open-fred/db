"""Database PreProcessing
This script opens a database connection and executes different imports.
Reads python and SQL scripts and gives logging infos during the execution.
"""

__copyright__   = "Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = "https://github.com/openego/data_processing/blob/master/LICENSE"
__author__      = "gplssm, Ludee"

import pandas as pd

import time
import os
import codecs
from utility.io import *

def preprocessing():
    """prepare database and import data """
    
    logger = log()

    # get current time and inform about start
    total_time = time.time()
    logger.info('PreProcessing started...')

    # list of sql- and python-snippets that process the data in correct order

    snippets = [
    'preprocessing\\boundaries\\osm_postcode\\osm_postcode_setup.sql',
    'preprocessing\\boundaries\\osm_postcode\\osm_postcode_metadata.sql',
    ]

    # get database connection
    conn = database_session(section='reiners_db')

    # iterate over list of sql- and python-snippets and execute them
    for snippet in snippets:
        # timing and logging
        snippet_time = time.time()
        logger.info("Execute '{}' ...".format(snippet))
        if os.path.splitext(snippet)[1] == '.sql':
            snippet_str = open(os.path.join(snippet)).read()

            # execute desired sql snippet
            conn.execution_options(autocommit=True).execute(snippet_str)
        elif os.path.splitext(snippet)[1] == '.py':
            filename = os.path.join(snippet)
            script_str = open(filename, "rb").read()

            # execute desired sql snippet
            exec(compile(script_str, filename, 'exec'))
        else:
            raise NameError('{} is neither a python nor a sql script (at least it '
                            'has not the right extension). Please add an extension '
                            'to the script name (.py or .sql)'.format(snippet))

        # inform the user
        logger.info('...successfully done in {:.2f} seconds.'.format(
            time.time() - snippet_time))

    # close database connection
    conn.close()

    logger.info('PreProcessing script successfully executed in {:.2f} seconds'.format(
        time.time() - total_time))


if __name__ == '__main__':
    preprocessing()
