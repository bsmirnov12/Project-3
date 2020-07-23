-- UT-TOR-DATA-PT-01-2020-U-C Group Project 3 (final)
-- (c) Boris Smirnov

-- Table: public.ro2003

-- DROP TABLE ro2003;

CREATE TABLE ro2003
(
    "FED Id" integer NOT NULL,
    "FED Name 2004" character varying COLLATE pg_catalog."default",
    "FED Name 2006" character varying COLLATE pg_catalog."default",
    CONSTRAINT ro2003_pkey PRIMARY KEY ("FED Id")
)
