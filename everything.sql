CREATE VIEW everything AS
select 
	o."Year", o."FED Id", g."Prov Id", o."Winning Pid",
	o."LIB result", o."CPC result", o."NDP result", o."BQ result", o."GRN result", o."OTH result",
	g."latitude", g."longitude", g."metroarea",
	c."Fresh or frozen meat", c."Fresh or frozen poultry", c."Processed meat", c."Fish, seafood and other marine products",
	c."Fresh milk", c."Butter", c.Cheese", c."Eggs", c."Bakery products", c."Cereal products", c."Fresh fruit",
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
	u."15 to 24 years", u."25 to 54 years", u."55 years and over"
from outcomes as o
left join election_geography as g on o."Year" = g."Year" and o."FED Id" = g."FED Id"
left join cpi as c on o."Year" = c."Year" and g."Prov Id" = c."Prov Id"
left join unemployment as u on o."Year" = u."Year" and g."Prov Id" = u."Prov Id";
