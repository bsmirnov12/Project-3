-- UT-TOR-DATA-PT-01-2020-U-C Group Project 3 (final)
-- (c) Boris Smirnov

DROP TABLE Elections;

CREATE TABLE Elections
(
    Year integer NOT NULL,
	Date date NOT NULL,
	LIB_leader integer NOT NULL,
	LIB_age integer NULL,
	LIB_tenure integer NULL,
	CPC_leader integer NOT NULL,
	CPC_age integer NULL,
	CPC_tenure integer NULL,
	NDP_leader integer NOT NULL,
	NDP_age integer NULL,
	NDP_tenure integer NULL,
	BQ_leader integer NOT NULL,
	BQ_age integer NULL,
	BQ_tenure integer NULL,
	GRN_leader integer NOT NULL,
	GRN_age integer NULL,
	GRN_tenure integer NULL,
    PRIMARY KEY (Year),
	FOREIGN KEY (LIB_leader) REFERENCES Politicians(Id),
	FOREIGN KEY (CPC_leader) REFERENCES Politicians(Id),
	FOREIGN KEY (NDP_leader) REFERENCES Politicians(Id),
	FOREIGN KEY (BQ_leader) REFERENCES Politicians(Id),
	FOREIGN KEY (GRN_leader) REFERENCES Politicians(Id)
);

INSERT INTO Elections(
	Year, Date, LIB_leader, CPC_leader, NDP_leader, BQ_leader, GRN_leader)
	VALUES (1997, '1997-06-02', 1, 8, 18, 23, 28),
		(2000, '2000-11-27', 1, 9, 18, 23, 28),
		(2004, '2004-06-28', 2, 15, 19, 23, 30),
		(2006, '2006-01-23', 2, 15, 19, 23, 30),
		(2008, '2008-10-14', 4, 15, 19, 23, 31),
		(2011, '2011-05-02', 5, 15, 19, 23, 31),
		(2015, '2015-10-19', 7, 15, 21, 23, 31),
		(2019, '2019-10-21', 7, 17, 22, 27, 31);
