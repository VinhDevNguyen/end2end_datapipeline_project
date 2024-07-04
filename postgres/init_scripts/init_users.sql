-- This will be executed by the user define in 
-- 2. Create a new users with login and password\
CREATE USER airflow
WITH
    PASSWORD 'airflow';

-- 3. Create a new database
CREATE DATABASE airflow;

-- 4. Grant owner of database to user
ALTER DATABASE airflow OWNER TO airflow;
