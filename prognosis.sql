DROP VIEW prognosis;

CREATE VIEW prognosis AS
select 
	p."FED Id", p."Winning Pid",
	e.LIB_age, e.LIB_tenure, e.CPC_age, e.CPC_tenure, e.NDP_age, e.NDP_tenure, e.BQ_age, e.BQ_tenure, e.GRN_age, e.GRN_tenure,
	g."Prov Id", g."latitude", g."longitude", g."metroarea",
	c."Fresh or frozen meat", c."Fresh or frozen poultry", c."Processed meat", c."Fish, seafood and other marine products",
	c."Fresh milk", c."Butter", c."Cheese", c."Eggs", c."Bakery products", c."Cereal products", c."Fresh fruit",
	c."Preserved fruit and fruit preparations", c."Fresh vegetables", c."Preserved vegetables and vegetable preparations",
	c."Sugar and confectionery", c."Edible fats and oils", c."Coffee and tea", c."Non-alcoholic beverages",
	c."Food purchased from restaurants", c."Rented accommodation", c."Homeowners replacement cost", c."Property taxes and other special charges",
	c."Homeowners home and mortgage insurance", c."Homeowners maintenance and repairs", c."Electricity", c."Water", c."Natural gas",
	c."Fuel oil and other fuels", c."Telephone services", c."Internet access services", c."Child care and housekeeping services",
	c."Household cleaning products", c."Paper, plastic and aluminum foil supplies", c."Other household goods and services",
	c."Household furnishings and equipment", c."Clothing", c."Footwear", c."Clothing accessories, watches and jewellery",
	c."Clothing material, notions and services", c."Purchase, leasing and rental of passenger vehicles", c."Operation of passenger vehicles",
	c."Gasoline", c."Public transportation", c."Health care", c."Personal care", c."Recreation", c."Education and reading",
	c."Alcoholic beverages", c."Tobacco products and smokers supplies",
	u."15 to 24 years", u."25 to 54 years", u."55 years and over",
	cr."population age 0-4",
	cr."population age 5-9",
	cr."population age 10-14 years",
	cr."population age 15-17",
	cr."population age 18-19",
	cr."population age 20-24",
	cr."population age 25-29",
	cr."population age 30-34",
	cr."population age 35-39",
	cr."population age 40-44",
	cr."population age 45-49",
	cr."population age 50-54",
	cr."population age 55-59",
	cr."population age 60-64",
	cr."population age 70-74",
	cr."population age 75-79",
	cr."population age 80-84",
	cr."population age 85+",
	cr."couple families with 1 child",
	cr."couple families with 2 children",
	cr."couple families with 3 or more children",
	cr."average num of persons per family",
	cr."private households by household size 1 person",
	cr."private households by household size 2 persons",
	cr."private households by household size 3 persons",
	cr."mother tongue single responses english",
	cr."mother tongue single responses french",
	cr."mother tongue multiple responses english and french",
	cr."knowledge of official languages english only",
	cr."knowledge of official languages french only",
	cr."knowledge of official languages english and french",
	cr."knowledge of official languages neither english nor french",
	cr."first official language spoken english",
	cr."first official language spoken french",
	cr."first official language spoken english and french",
	cr."first official language spoken neither english nor french",
	cr."first official language spoken official language minority num",
	cr."home language spoken single responses english",
	cr."home language spoken single responses french",
	cr."population 1 year and over by mobility status 1 year ago movers",
	cr."populati...over by mobility status 1 year ago migrants 250516AB",
	cr."populati...obility status 1 year ago internal migrants E5731743",
	cr."populati... status 1 year ago intraprovincial migrants 9412EDCF",
	cr."populati...obility status 1 year ago external migrants C5DD2868",
	cr."canadian citizenship",
	cr."citizenship other than canadian",
	cr."population 15+ by generation status 1st generation",
	cr."population 15+ by generation status 2nd generation",
	cr."population 15+ by generation status 3rd generation and over",
	cr."first nations north american indian single identity",
	cr."métis single identity",
	cr."inuit single response identity",
	cr."labour force 15+ by occupation not applicable",
	cr."labour f...ness finance and administration occupations 2B82C03E",
	cr."labour f...nd applied sciences and related occupations BF041023",
	cr."labour force 15+ by occupation health occupations",
	cr."labour f...pations in art culture recreation and sport E6577C9B",
	cr."labour force 15+ by occupation sales and service occupations",
	cr."population aged 15+ by place of work status worked at home",
	cr."populati... place of work status worked outside canada B2E16A0B",
	cr."populati...e of work status no fixed workplace address 90CEDF61",
	cr."populati... place of work status worked at usual place C99B477F",
	cr."employed...nsportation car truck or van as a passenger 0212B8C0",
	cr."employed...5+ by mode of transportation public transit B18141EA",
	cr."employed labour force 15+ by mode of transportation walked",
	cr."employed labour force 15+ by mode of transportation bicycle",
	cr."employed...15+ by mode of transportation other methods FC108373"
from projection as p
natural join today_elections as e
left join (
		select * from election_geography where "Year" = 2019
	) as g on p."FED Id" = g."FED Id"
left join cpi_202006 as c on g."Prov Id" = c."Prov Id"
left join unemployment_202006 as u on g."Prov Id" = u."Prov Id"
left join (
		select * from census where "Year" = 2016
	) as cr on p."FED Id" = cr."FED Id";