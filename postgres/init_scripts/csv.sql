-- Connect to Database
\c taxi_postgres;

-- Create Schema
CREATE SCHEMA taxi_schema;

-- Create Table in Schema
CREATE TABLE
    taxi_schema.taxi_zone (
        id SERIAL PRIMARY KEY, -- SERIAL is auto-incrementing in PostgreSQL
        LocationID  VARCHAR(50),
        Borough  VARCHAR(50),
        Zone VARCHAR(50),
        service_zone VARCHAR(50)
    );

-- Copy CSV data into the table
COPY locations(LocationID, Borough, Zone, service_zone)
FROM '/data/taxi_zone_lookup.csv' DELIMITER ',' CSV HEADER;

-- Change owner of schemas and tables to  user devtesting -- owner of database

-- ALTER SCHEMA taxi_schema OWNER TO devtesting;

-- ALTER TABLE taxi_schema.taxi_zone OWNER TO devtesting;