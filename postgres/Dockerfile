# postgres/Dockerfile
FROM bitnami/postgresql:16.3.0

# # Ensure the required directory exists and install necessary packages
# USER root
# RUN mkdir -p /var/lib/apt/lists/partial
# RUN apt-get clean
# RUN apt-get update
# RUN apt-get install -y python3 python3-pip
# RUN apt-get install -y sudo


# # Create and activate a virtual environment
# RUN sudo python3 -m venv /opt/venv
# ENV PATH="/opt/venv/bin:$PATH"

# # Install Python packages needed to load CSV data in the virtual environment
# RUN pip install --upgrade pip
# RUN pip install pandas sqlalchemy

# # Switch back to the default non-root user provided by the Bitnami image
# # USER 1001

# # # Copy the initialization SQL script to the special directory
# # COPY ../init.sql /docker-entrypoint-initdb.d/

# # # Copy the Python script to load data into the special directory
# # COPY ../scripts/load_data.py /docker-entrypoint-initdb.d/

# # # Copy the data directory containing the CSV file
# # COPY ../data /data
