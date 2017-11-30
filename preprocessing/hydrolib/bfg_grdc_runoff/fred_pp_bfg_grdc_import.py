#!/usr/bin/env python3

"""read data from excel and write to database"""

__copyright__   = "Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = ""
__author__      = "Ludee"

import os
import sys
import getpass
import logging
import time
import pandas as pd
import numpy as np
from sqlalchemy import create_engine

# configure logging
logger = logging.getLogger('EEEE')
logger.setLevel(logging.INFO)
ch = logging.StreamHandler()
ch.setLevel(logging.INFO)
formatter = logging.Formatter('%(asctime)s %(message)s',
                                datefmt='%Y-%m-%d %I:%M:%S')

# logging
start_time = time.time()
logger.info('script started...')

def oedb_session(section='oedb'):
    """SQLAlchemy session object with valid connection to oedb"""

    # get session object by oemof.db tools (requires .oemof/config.ini)
    from oemof import db
    conn = db.connection(section=section)

    return conn
    logger.info('...oedb connection active...')


def ts_dataframe(station_id,station):
    """read excel file and sheets and make dataframe"""

    logger.info('...read file for %s as dataframe...' % (station))

    # file
    #path = (r'F:\\DOCUMENTA\\OPERARE\\RLI\\oedb\\environment\\bfg_hydaba_mosel\\')
    file = 'data\\%s_Q_Day.Cmd.txt' % (station_id)
    
    # meta = pd.read_excel(xls, sheet, index_col=None, header=1, skipfooter=8765, parse_cols='A:B')
    # logger.info('...read metadata...')
    # print(meta)
    
    # make dataframe
    df = pd.read_csv(file, sep=";", header=35)
    df.index.names = ['id']
    df.columns = ['time','hour','value']
    del df['hour']
    print(df.head())
    #print(df.head())

    # add year
    df['time'] = pd.to_datetime(df['time'])
    df['year'] = df['time'].dt.year
    #print(df.head())

    logger.info('...extract list of years...')
    years = df.groupby(['year']).size().to_frame(name = 'count').reset_index()
    #print(years.head())
    completeyears = years.query('count >= 365 & count <= 366')
    #print(completeyears.head())
    yearlist = completeyears['year'].values.tolist()
    #yearlist = [2014,2015]
    print(yearlist)

    # some year
    for year in yearlist:
        dfy = df.loc[df['year'] == year]
        #print(dfy.head())

        # reshape dataframe as time series (list)
        ts = dfy['value'].values.tolist()
        #print(ts)

        # database dataframe
        type = 'Q'
        columns=['station','type','year','time_series']
        data = {'station':station,'type':type,'year':year} 
        #logger.info('...reshape dataframe...')
        #print(data)
        dbdf = pd.DataFrame(data=data, index=[1], columns=columns)
        dbdf.set_value(1,'time_series',ts)
        #logger.info('...create database dataframe...')
        print(dbdf)

        # copy dataframe to database
        dbdf.to_sql(con=conn, 
            schema='hydrolib', 
            name='bfg_grdc_runoff', 
            if_exists='append',
            index=False)
        logger.info('...dataframe sucessfully imported in database table...')

def loop_dataframe():
    # """list for the loops"""
    
    # settings
    stations = {6337310: 'EISENACH-PETERSBERG', 
        6337320: 'DORNDORF 2',
        6337330: 'MITTELSCHMALKALDEN',
        6337340: 'ELLINGSHAUSEN',
        6337350: 'RAPPELSDORF',
        6337542: 'ARENSHAUSEN',
        6337610: 'MEININGEN',
        6340220: 'WASSERTHALEBEN',
        6340225: 'ZOELLNITZ',
        6340302: 'RUDOLSTADT',
        6340310: 'SUNDHAUSEN',
        6340315: 'NORDHAUSEN', 
        6340320: 'NIEDERTREBRA',
        6340330: 'FREIENORLA',
        6340335: 'KAULSDORF-EICHICHT',
        6340340: 'MOESCHLITZ',
        6340360: 'WEIDA',
        6340366: 'GOESSNITZ'}

    if __name__ == '__main__':
        for station in stations:
            ts_dataframe(station,stations[station])


if __name__ == '__main__':
    conn = oedb_session()
    loop_dataframe()
    
    # close connection
    conn.close()
    logger.info('...oedb connection closed...')

# logging
logger.info('...script successfully executed in {:.2f} seconds!'.format(
    time.time() - start_time))


# # access time series
# conn = oedb_session(section='oedb')
# table = pd.read_sql_table(table_name='forwind_oeko_renewable_feedin_per_federalstate', 
#     con=conn, schema='supply', index_col='id')
# print(table)
# conn.close()
# logger.info('...oedb connection closed...')