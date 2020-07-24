#!/bin/bash

source ../config.sh
export PGPASSWORD
psql -h project-3.c0wevqvgoxbl.us-east-2.rds.amazonaws.com -U postgres -d project3 --command "\\COPY Census FROM 'Census.csv' DELIMITER ',' CSV HEADER ENCODING 'UTF8' QUOTE '\"' ESCAPE '''';" 
