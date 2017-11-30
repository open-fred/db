#!/usr/bin/env python3

"""read data from excel and write to database"""

__copyright__   = "Reiner Lemoine Institut"
__license__     = "GNU Affero General Public License Version 3 (AGPL-3.0)"
__url__         = ""
__author__      = "Ludee, Birgit Schachler"

import pandas as pd
import xarray as xr
import numpy as np
from shapely.geometry import Point
import pickle
import oemof.db as db
from geoalchemy2 import Geometry, WKTElement

import logging
import time

# configure logging
logging.getLogger().setLevel(logging.INFO)
ch = logging.StreamHandler()
ch.setLevel(logging.INFO)
formatter = logging.Formatter('%(asctime)s %(message)s',
                                datefmt='%Y-%m-%d %I:%M:%S')

# logging
start_time = time.time()
logging.info('script started...')


def oedb_session(section='oedb'):
    """SQLAlchemy session object with valid connection to oedb"""

    # get session object by oemof.db tools (requires .oemof/config.ini)
    conn = db.connection(section=section)

    return conn


def read_netcdf():
    """read watergap netcdf file and make dataframe for each year"""

    logging.info('start function "read_netcdf"...')
    logging.info('...read netcdf file as dataframe...')

    # file
    file_path = 'watergap3_discharge_de_2006_2010.nc'

    with xr.open_mfdataset(file_path) as ds_watergap:
        df_watergap = ds_watergap.to_dataframe()
    del(ds_watergap)

    logging.info('...successfully read netcdf')

    logging.info('...modify dataframe')
    df_watergap = df_watergap.reset_index()
    df_watergap['time'] = pd.to_datetime(df_watergap['time'])
    df_watergap['year'] = [i.year for i in df_watergap['time']]

    logging.info('...generate dataframe for each year...')
    years = pd.unique([i for i in df_watergap['year']])
    for year in years:
        df_year = df_watergap[df_watergap.year == year]
        pickle.dump(df_year, open('df_watergap_{}.p'.format(str(year)), 'wb'))
        logging.info('...year {} done...'.format(year))
    logging.info('...successfully generated dataframe for each year')

    # create dataframe with unique latitude/longitude pairs to write to db
    # table 'watergap_geoms'
    logging.info('...generate dataframe with all unique coordinates')
    df_lat_lon = df_watergap.groupby(
        ['lat', 'lon']).size().reset_index().drop(0, 1)
    pickle.dump(df_lat_lon, open('df_watergap_lat_lon.p', 'wb'))
    logging.info('...function "read_netcdf" done')


def write_lat_lon_to_db(section):

    conn = oedb_session(section=section)

    logging.info('start function "write_lat_lon_to_db"...')

    df_lat_lon = pickle.load(open('df_watergap_lat_lon.p', 'rb'))
    df_geom_db = pd.DataFrame(data=None, columns=['gid', 'geom'])
    for i in range(len(df_lat_lon)):
        longitude = df_lat_lon.loc[i, 'lon']
        latitude = df_lat_lon.loc[i, 'lat']
        df_geom_db = df_geom_db.append(
            pd.DataFrame(data={'gid': [int(i + 1)],
                               'geom': [Point(longitude, latitude)]},
                         index=[i + 1]))

    logging.info('...add SRID information to geom column...')
    # create a geom with SRID
    def create_wkt_element(geom):
        return WKTElement(geom.wkt, srid=4326)
    df_geom_db['geom'] = df_geom_db['geom'].apply(create_wkt_element)
    logging.info('...successfully created dataframe to write to database...')

    logging.info('...start writing to database...')
    # copy dataframe to database
    df_geom_db.to_sql(con=conn,
        schema='hydrolib',
        name='watergap_geoms',
        if_exists='append',
        index=False,
        dtype={'geom': Geometry('POINT', srid=4326)})
    logging.info('...dataframe sucessfully imported in database table...')

    conn.close()


def write_discharge_data_to_db(section, years):

    logging.info('start function "write_discharge_data_to_db"...')

    df_lat_lon = pickle.load(open('df_watergap_lat_lon.p', 'rb'))
    number_of_coords = len(df_lat_lon)
    logging.info('...total number of coordinates: {}...'.format(
        str(number_of_coords)))

    conn = None
    for year in years:
        df_watergap = pickle.load(open(
            'df_watergap_{}.p'.format(str(year)), 'rb'))
        for point in range(number_of_coords):
            if point % 300 == 0:
                if conn:
                    conn.close()
                    logging.info('...reconnect to database...')
                conn = oedb_session(section=section)
            if point % 100 == 0:
                logging.info('...point {} of {} in year {}...'.format(
                        str(point), str(number_of_coords), str(year)))
            try:
                longitude = df_lat_lon.loc[point, 'lon']
                latitude = df_lat_lon.loc[point, 'lat']
                time_series = df_watergap[(df_watergap.lat == latitude) &
                                          (df_watergap.lon == longitude) &
                                          (df_watergap.year == year)]
                time_series = time_series.sort_values('time')
                time_series = time_series.Dis.tolist()

                if len(time_series) != 365 and len(time_series) != 366:
                    logging.info(
                        '...Data for year {} and point {}{} incomplete...'.format(
                            str(year), str(df_lat_lon.loc[point, 'lon']),
                            str(df_lat_lon.loc[point, 'lat'])))

                # database dataframe
                columns=['year', 'geom_id', 'type', 'time_series']
                data = {'year': year, 'geom_id': int(point + 1),
                        'type': 'discharge', 'time_series': [time_series]}
                dbdf = pd.DataFrame(data=data, index=[1], columns=columns)

                # copy dataframe to database
                dbdf.to_sql(con=conn,
                    schema='hydrolib',
                    name='watergap_runoff',
                    if_exists='append',
                    index=False)
            except:
                logging.info('...No data for year {} and point {} {}...'.format(
                    str(year), str(df_lat_lon.loc[point, 'lon']),
                    str(df_lat_lon.loc[point, 'lat'])))
        logging.info('...year {} done...'.format(str(year)))
        if conn:
            conn.close()
    return


if __name__ == '__main__':
    read_netcdf()
    section = 'open_edb'
    write_lat_lon_to_db(section)
    write_discharge_data_to_db(section, np.arange(2010, 2011, 1))
    logging.info('...script successfully executed in {:.2f} seconds!'.format(
        time.time() - start_time))
