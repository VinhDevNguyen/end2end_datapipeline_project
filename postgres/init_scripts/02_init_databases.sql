-- Connect to Database
\c devdatabase;

-- Create Schema
CREATE SCHEMA devschema;

-- Create Table in Schema
CREATE TABLE
    devschema.person (
        id SERIAL PRIMARY KEY, -- SERIAL is auto-incrementing in PostgreSQL
        name VARCHAR(50) NOT NULL,
        age INT
    );

-- Insert some data into the table
INSERT INTO
    devschema.person (name, age)
VALUES
    ('Alice', 30),
    ('Bob', 25),
    ('Charlie', 35);

-- Change owner of schemas and tables to  user devtesting -- owner of database

ALTER SCHEMA devschema OWNER TO devtesting;

ALTER TABLE devschema.person OWNER TO devtesting;