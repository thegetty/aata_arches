CREATE DATABASE template_postgis_20 WITH ENCODING 'UTF8' LC_COLLATE='en_US.utf8' LC_CTYPE='en_US.utf8' TEMPLATE=template0;
UPDATE pg_database SET datistemplate='true' WHERE datname='template_postgis_20';

\c template_postgis_20

CREATE EXTENSION IF NOT EXISTS postgis;
GRANT ALL ON geometry_columns TO PUBLIC;
GRANT ALL ON geography_columns TO PUBLIC;
GRANT ALL ON spatial_ref_sys TO PUBLIC;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";