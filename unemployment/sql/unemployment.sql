-- UT-TOR-DATA-PT-01-2020-U-C Group Project 3 (final)
-- (c) Boris Smirnov

-- drop table unemployment;

create table unemployment (
	"Prov Id" integer,
	"Year" integer,
	"15 to 24 years" float,
	"25 to 54 years" float,
	"55 years and over" float,
	primary key ("Prov Id", "Year")
);

