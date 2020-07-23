-- UT-TOR-DATA-PT-01-2020-U-C Group Project 3 (final)
-- (c) Boris Smirnov

drop table Election_RO;

create table Election_RO (
	election_year integer,
	ro_year integer,
	primary key(election_year, ro_year)
);

insert into Election_RO values
	(2000, 1996),
	(2004, 2003),
	(2006, 2003),
	(2008, 2003),
	(2011, 2003),
	(2015, 2013),
	(2019, 2013);


drop view election_geography;

create view election_geography as
	select e."Year", e."FED Id", g."Prov Id", g.Latitude, g.Longitude, g.Metroarea
	from outcomes as e
	left join election_ro as er
		on e."Year" = er.election_year
	left join ro_geography as g
		on er.ro_year = g."Year" and e."FED Id" = g."FED Id";
