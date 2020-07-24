-- drop table election_census_ro

-- Table sets correspondence between election years, census years and representation order years
create table election_census_ro (
	election_year integer,
	census_year integer,
	ro_year integer,
	primary key (election_year, census_year, ro_year)
);

insert into election_census_ro values
	(2000, 2001, 1996),
	(2004, 2001, 2003),
	(2006, 2006, 2003),
	(2008, 2006, 2003),
	(2011, 2011, 2003),
	(2015, 2011, 2013),
	(2019, 2016, 2013);
