-- UT-TOR-DATA-PT-01-2020-U-C Group Project 3 (final)
-- (c) Boris Smirnov

update elections as el
set
	LIB_age = s.lib_age, LIB_tenure = s.lib_tenure,
	CPC_age = s.cpc_age, CPC_tenure = s.cpc_tenure,
	NDP_age = s.ndp_age, NDP_tenure = s.ndp_tenure,
	BQ_age = s.bq_age, BQ_tenure = s.bq_tenure,
	GRN_age = s.grn_age, GRN_tenure = s.grn_tenure
from (
	select
		e.Year, e.Date,
		extract(year from age(e.Date, lib.DOB)) as lib_age,
		extract(year from age(e.Date, lib.Tenure_start)) * 12 + extract(month from age(e.Date, lib.Tenure_start)) as lib_tenure,
		extract(year from age(e.Date, cpc.DOB)) as cpc_age,
		extract(year from age(e.Date, cpc.Tenure_start)) * 12 + extract(month from age(e.Date, cpc.Tenure_start)) as cpc_tenure,
		extract(year from age(e.Date, ndp.DOB)) as ndp_age,
		extract(year from age(e.Date, ndp.Tenure_start)) * 12 + extract(month from age(e.Date, ndp.Tenure_start)) as ndp_tenure,
		extract(year from age(e.Date,  bq.DOB)) as  bq_age,
		extract(year from age(e.Date,  bq.Tenure_start)) * 12 + extract(month from age(e.Date,  bq.Tenure_start)) as  bq_tenure,
		extract(year from age(e.Date, grn.DOB)) as grn_age,
		extract(year from age(e.Date, grn.Tenure_start)) * 12 + extract(month from age(e.Date, grn.Tenure_start)) as grn_tenure
	from Elections as e
	left join Politicians as lib
		on e.LIB_leader = lib.Id
	left join Politicians as cpc
		on e.CPC_leader = cpc.Id
	left join Politicians as ndp
		on e.NDP_leader = ndp.Id
	left join Politicians as  bq
		on e.BQ_leader = bq.Id
	left join Politicians as grn
		on e.GRN_leader = grn.Id
) as s
where el.Year = s.Year;
