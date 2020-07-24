#!/bin/bash

source ../config.sh
export PGPASSWORD
for f in elections_2000.csv elections_2004.csv elections_2006.csv elections_2008.csv elections_2011.csv elections_2015.csv elections_2019.csv; do
    psql -h project-3.c0wevqvgoxbl.us-east-2.rds.amazonaws.com -U postgres -d project3 --command "\\COPY Outcomes FROM '${f}' DELIMITER ',' CSV HEADER ENCODING 'UTF8' QUOTE '\"' ESCAPE '''';" 
done
