from sqlalchemy import create_engine
import getpass
import sys

def database_session():
    """Get SQLAlchemy session object with valid connection to OEDB"""

    # get session object by oemof.db tools (requires .oemof/config.ini
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
    """configure logging"""
    logger = logging.getLogger('EEEE')
    logger.setLevel(logging.INFO)
    ch = logging.StreamHandler()
    ch.setLevel(logging.INFO)
    formatter = logging.Formatter('%(asctime)s %(message)s',
                                    datefmt='%Y-%m-%d %I:%M:%S')
    return logger
