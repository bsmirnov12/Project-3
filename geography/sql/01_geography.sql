-- UT-TOR-DATA-PT-01-2020-U-C Group Project 3 (final)
-- (c) Boris Smirnov

-- Temporary table used for importing CSV files
-- N.B. CSV files are inconsistent regarding columnt order, thus for each RO year the temporary table should be modified
-- drop table ro_geo_buffer;

-- create table ro_geo_buffer (
-- 	fid integer,
-- 	FEDUID integer,
-- 	FEDENAME varchar,
-- 	PRUID integer,
-- 	Metroarea integer,
-- 	Latitude float,
-- 	Longitude float,
-- 	RO integer
-- );

create table ro_geography (
	"Year" integer,
	"FED Id" integer,
	"FED Name" varchar,
	"Prov Id" integer,
	Latitude float,
	Longitude float,
	Metroarea integer,
	primary key ("Year", "FED Id")
);

insert into ro_geography ("Year", "FED Id", "FED Name", "Prov Id", Latitude, Longitude, Metroarea)
select RO, FEDUID, FEDENAME, PRUID, Latitude, Longitude, Metroarea
from ro_geo_buffer
order by FEDUID;
