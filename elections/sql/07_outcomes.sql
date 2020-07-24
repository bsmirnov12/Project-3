-- UT-TOR-DATA-PT-01-2020-U-C Group Project 3 (final)
-- (c) Boris Smirnov

-- adding generated columns to the Outcomes table
-- new columns keep party resulys as percentage values

alter table outcomes
add column "LIB result" float GENERATED ALWAYS AS (CAST ("LIB" AS FLOAT) / CAST("Valid Ballots" AS FLOAT)) STORED,
add column "CPC result" float GENERATED ALWAYS AS (CAST ("CPC" AS FLOAT) / CAST("Valid Ballots" AS FLOAT)) STORED,
add column "NDP result" float GENERATED ALWAYS AS (CAST ("NDP" AS FLOAT) / CAST("Valid Ballots" AS FLOAT)) STORED,
add column "BQ result" float GENERATED ALWAYS AS  (CAST ("BQ" AS FLOAT) / CAST("Valid Ballots" AS FLOAT)) STORED,
add column "GRN result" float GENERATED ALWAYS AS (CAST ("GRN" AS FLOAT) / CAST("Valid Ballots" AS FLOAT)) STORED,
add column "OTH result" float GENERATED ALWAYS AS (CAST ("OTH" AS FLOAT) / CAST("Valid Ballots" AS FLOAT)) STORED;

-- alter table outcomes
-- DROP column "LIB result",
-- DROP column "CPC result",
-- DROP column "NDP result",
-- DROP column "BQ result",
-- DROP column "GRN result",
-- DROP column "OTH result";
