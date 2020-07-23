-- UT-TOR-DATA-PT-01-2020-U-C Group Project 3 (final)
-- (c) Boris Smirnov

DROP TABLE Politicians;

CREATE TABLE Politicians
(
    Id integer NOT NULL GENERATED ALWAYS AS IDENTITY,
    Name varchar NOT NULL,
    Party char(3) NOT NULL,
    DOB date NOT NULL,
    Tenure_start date NOT NULL,
    Tenure_end date,
    PRIMARY KEY (Id)
);

INSERT INTO Politicians(Name, Party, DOB, Tenure_start, Tenure_end)
VALUES ('Jean Chrétien', 'LIB', '1934-01-11', '1990-06-23', '2003-12-12'),
	('Paul Martin', 'LIB', '1938-08-28', '2003-11-14', '2006-03-19'),
	('Bill Graham', 'LIB', '1939-03-17', '2006-03-18', '2006-12-02'),
	('Stéphane Dion', 'LIB', '1955-09-28', '2006-12-02', '2008-12-10'),
	('Michael Ignatieff', 'LIB', '1947-05-12', '2008-12-10', '2011-05-02'),
	('Bob Rae', 'LIB', '1948-08-02', '2011-05-25', '2013-04-14'),
	('Justin Trudeau', 'LIB', '1971-12-25', '2013-04-14', NULL),
	('Preston Manning', 'CPC', '1942-06-10', '1987-11-01', '2000-03-26'), -- Reform Party of Canada (52 seats)
	('Stockwell Day', 'CPC', '1950-08-16', '2000-07-08', '2001-12-11'), -- Canadian Alliance (60 seats)
	('Jean Charest', 'CPC', '1958-06-24', '1993-12-14', '1998-04-02'), -- Progressive Conservative (2 seats)
	('Elsie Wayne', 'CPC', '1932-04-20', '1998-04-02', '1998-11-14'),
	('Joe Clark', 'CPC', '1939-06-05', '1998-11-14', '2003-05-31'), -- Progressive Conservative (20 seats)
	('Peter MacKay', 'CPC', '1965-09-27', '2003-05-31', '2003-12-07'),
	('John Lynch-Staunton', 'CPC', '1930-06-19', '2003-12-08', '2004-03-20'),
	('Stephen Harper', 'CPC', '1959-04-30', '2004-03-20', '2015-10-19'),
	('Rona Ambrose', 'CPC', '1969-03-15', '2015-11-05', '2017-05-27'),
	('Andrew Scheer', 'CPC', '1979-05-20', '2017-05-27', NULL),
	('Alexa McDonough', 'NDP', '1944-08-11', '1995-10-14', '2003-01-25'),
	('Jack Layton', 'NDP', '1950-07-18', '2003-01-25', '2011-08-22'),
	('Nycole Turmel', 'NDP', '1942-09-01', '2011-07-28', '2012-03-24'),
	('Tom Mulcair', 'NDP', '1954-10-24', '2012-03-24', '2017-10-01'),
	('Jagmeet Singh', 'NDP', '1979-01-02', '2017-10-01', NULL),
	('Gilles Duceppe', 'BQ', '1947-06-22', '1997-03-15', '2015-10-22'),
	('Rhéal Fortin', 'BQ', '1959-01-01', '2015-10-22', '2017-03-18'),
	('Martine Ouellet', 'BQ', '1969-04-08', '2017-03-18', '2018-06-11'),
	('Mario Beaulieu', 'BQ', '1959-02-01', '2018-06-11', '2019-01-17'),
	('Yves-François Blanchet', 'BQ', '1965-04-16', '2019-01-17', NULL),
	('Joan Russow', 'GRN', '1938-11-01', '1997-04-13', '2001-01-01'),
	('Chris Bradshaw', 'GRN', '1944-05-20', '2001-01-01', '2003-02-14'),
	('Jim Harris', 'GRN', '1961-02-12', '2003-02-14', '2006-08-26'),
	('Elizabeth May', 'GRN', '1954-06-09', '2006-08-26', '2019-11-04'),
	('Jo-Ann Roberts', 'GRN', '1956-01-01', '2019-11-04', NULL);
