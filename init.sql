-- init.sql
CREATE DATABASE my_database;

\c my_database

CREATE TABLE my_table (
    id SERIAL PRIMARY KEY,
    LocationID VARCHAR(100),
    Borough VARCHAR(100).
    Zone VARCHAR(100),
    service_zone VARCHAR(100)
);
