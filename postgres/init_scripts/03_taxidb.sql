-- 2. Create a new database
CREATE DATABASE taxidb;

-- Create Schema
CREATE SCHEMA taxi_schema;

-- Create Table in Schema
CREATE TABLE
    taxi_schema.taxi_zone (
        LocationID VARCHAR(50),
        Borough  VARCHAR(50),
        Zone VARCHAR(50),
        service_zone VARCHAR(50)
    );


CREATE TABLE taxi_schema.yello_taxi (
    VendorID VARCHAR(50),
    tpep_pickup_datetime VARCHAR(50),
    tpep_dropoff_datetime VARCHAR(50),
    passenger_count VARCHAR(50),
    trip_distance VARCHAR(50),
    RatecodeID VARCHAR(50),
    store_and_fwd_flag VARCHAR(50),
    PULocationID VARCHAR(50),
    DOLocationID VARCHAR(50),
    payment_type VARCHAR(50),
    fare_amount VARCHAR(50),
    extra VARCHAR(50),
    mta_tax VARCHAR(50),
    tip_amount VARCHAR(50),
    tolls_amount VARCHAR(50),
    improvement_surcharge VARCHAR(50),
    total_amount VARCHAR(50),
    congestion_surcharge VARCHAR(50),
    Airport_fee VARCHAR(50)
);


CREATE TABLE taxi_schema.green_taxi (
    VendorID VARCHAR(50),
    lpep_pickup_datetime VARCHAR(50),
    lpep_dropoff_datetime VARCHAR(50),
    store_and_fwd_flag VARCHAR(50),
    RatecodeID VARCHAR(50),
    PULocationID VARCHAR(50),
    DOLocationID VARCHAR(50),
    passenger_count VARCHAR(50),
    trip_distance VARCHAR(50),
    fare_amount VARCHAR(50),
    extra VARCHAR(50),
    mta_tax VARCHAR(50),
    tip_amount VARCHAR(50),
    tolls_amount VARCHAR(50),
    ehail_fee VARCHAR(50),
    improvement_surcharge VARCHAR(50),
    total_amount VARCHAR(50),
    payment_type VARCHAR(50),
    trip_type VARCHAR(50),
    congestion_surcharge VARCHAR(50)
);


CREATE TABLE taxi_schema.fhvhv_tripdata (
    hvfhs_license_num VARCHAR(50),
    dispatching_base_num VARCHAR(50),
    originating_base_num VARCHAR(50),
    request_datetime VARCHAR(50),
    on_scene_datetime VARCHAR(50),
    pickup_datetime VARCHAR(50),
    dropoff_datetime VARCHAR(50),
    PULocationID VARCHAR(50),
    DOLocationID VARCHAR(50),
    trip_miles VARCHAR(50),
    trip_time VARCHAR(50),
    base_passenger_fare VARCHAR(50),
    tolls VARCHAR(50),
    bcf VARCHAR(50),
    sales_tax VARCHAR(50),
    congestion_surcharge VARCHAR(50),
    airport_fee VARCHAR(50),
    tips VARCHAR(50),
    driver_pay VARCHAR(50),
    shared_request_flag VARCHAR(50),
    shared_match_flag VARCHAR(50),
    access_a_ride_flag VARCHAR(50),
    wav_request_flag VARCHAR(50),
    wav_match_flag VARCHAR(50)
);


