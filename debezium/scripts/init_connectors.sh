#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status
log_file="/kafka/scripts.log"
echo "Starting init scripts" > $log_file

echo "Waiting for Kafka Connect to start..." >> $log_file
until [[ "$(curl -s -o /dev/null -w '%{http_code}' localhost:8083/connectors)" -eq 200 ]]; do
    sleep 1
done

echo "Kafka Connect is up and running." >> $log_file
echo "Sending connector configuration..." >> $log_file

# Post the connector configuration to Kafka Connect
curl -i -X POST -H "Accept:application/json" -H "Content-Type:application/json" \
     --data @/kafka/connectors_conf/postgresql.json http://localhost:8083/connectors/

echo "Sending connector configuration succeed..." >> $log_file