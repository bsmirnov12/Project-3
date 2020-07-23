-- UT-TOR-DATA-PT-01-2020-U-C Group Project 3 (final)
-- (c) Boris Smirnov

-- Type: PartyId

DROP TYPE "PartyId";

CREATE TYPE "PartyId" AS ENUM
    ('LIB', 'CPC', 'NDP', 'BQ', 'GRN', 'OTH');
