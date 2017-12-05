"""OpenFRED database preprocessing.

This script gets a database connection and executes different imports.
Reads python and SQL scripts and gives logging info during the execution.
"""

__copyright__ = "Reiner Lemoine Institut"
__license__ = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__license_url__ = "https://www.gnu.org/licenses/agpl-3.0.en.html"
__author__ = "gplssm, Ludee"

import codecs
from utility.io import *


def preprocessing():
    """Execute a list of scripts (python or sql) to prepare the database."""
    
    # logger
    log = logger()

    # start time
    start_time = time.time()
    log.info('Preprocessing started...')

    # list of scripts
    scripts = [
        'preprocessing\\boundaries\\osm_postcode\\osm_postcode_setup.sql',
        'preprocessing\\boundaries\\osm_postcode\\osm_postcode_metadata.sql',
        ]

    # database connection
    conn = database_session(section='reiners_db')

    # iterate over list of scripts and execute them
    for script in scripts:
        # timing and logging
        script_time = time.time()
        log.info('...execute {}...'.format(script))
        
        # execute sql script
        if os.path.splitext(script)[1] == '.sql':
            sql_script = open(os.path.join(script)).read()
            conn.execution_options(autocommit=True).execute(sql_script)
        
        # execute python script
        elif os.path.splitext(script)[1] == '.py':
            filename = os.path.join(script)
            py_script = open(filename, "rb").read()
            exec(compile(py_script, filename, 'exec'))
        
        # error if no sql or python
        else:
            log.warning('...stopped PreProcessing!')
            raise NameError('{} is neither a python nor a sql script (at least it '
                            'has not the right extension). Please add an extension '
                            'to the script name (.py or .sql)'.format(script))
        
        # inform the user
        script_time = time.time() - script_time
        log.info('......script {} successfully executed in {:.2f} seconds...'.format(script, script_time))

    # close database connection
    conn.close()
    total_time = time.time() - start_time
    log.info('Preprocessing successfully executed in {:.2f} seconds. Godbye!'.format(total_time))


if __name__ == '__main__':
    preprocessing()
