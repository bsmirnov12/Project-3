-- UT-TOR-DATA-PT-01-2020-U-C Group Project 3 (final)
-- (c) Boris Smirnov

-- drop table FED_Names

create table FED_Names (
	"Year" integer,
	"FED Id" integer,
	"FED Name" varchar,
	PRIMARY KEY ("Year", "FED Id")
);

insert into FED_Names ("Year", "FED Id", "FED Name")
select "Year", "FED Id", "FED Name"
from outcomes
where "Year" != 2004;

insert into FED_Names ("Year", "FED Id", "FED Name")
select 2004, "FED Id", "FED Name 2004"
from ro2003;

-- select "Year", count(*)
-- from FED_Names
-- group by "Year"
-- order by "Year";
