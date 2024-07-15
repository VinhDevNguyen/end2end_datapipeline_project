# scripts/load_data.py
import pandas as pd
from sqlalchemy import create_engine

# Database connection
engine = create_engine('postgresql://root:root@localhost:5432/my_database')

# Load and insert CSV data
csv_data = pd.read_csv('/data/taxi_zone_lookup.csv')
csv_data.to_sql('my_table', engine, if_exists='append', index=False)
