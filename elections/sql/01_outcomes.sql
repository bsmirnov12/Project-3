-- UT-TOR-DATA-PT-01-2020-U-C Group Project 3 (final)
-- (c) Boris Smirnov

-- DROP TABLE outcomes;

create table Outcomes (
	"Year" integer,
	"FED Id" integer,
	"FED Name" varchar,
	"Winning Pid" char(3),
	"Population" integer,
	"Electors" integer,
	"Total Ballots" integer,
	"Valid Ballots" integer,
	"LIB" integer,
	"CPC" integer,
	"NDP" integer,
	"BQ" integer,
	"GRN" integer,
	"OTH" integer,
	primary key ("Year", "FED Id")
);
