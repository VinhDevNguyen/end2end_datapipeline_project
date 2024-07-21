-- Create pg_stat_statements so that Prometheus can scrape metrics related to pg_stat_statements
\c postgres;

CREATE EXTENSION IF NOT EXISTS pg_stat_statements;