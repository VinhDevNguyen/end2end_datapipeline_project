-- This will be executed by the user define in POSTGRESQL_INIT_SCRIPT_USER environment variables

-- Creating user for airflow authentication

-- 1. Create a new users with login and password
CREATE USER airflow
WITH
    PASSWORD 'airflow';

-- 2. Create a new database
CREATE DATABASE airflow;

-- 3. Grant owner of database to user
ALTER DATABASE airflow OWNER TO airflow;

