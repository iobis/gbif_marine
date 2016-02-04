﻿select 
	d.title as title,
	d.records,
	d.taxa,
	d.description as description,
	d.datasetkey as key,
	d.taxonomiccoverage,
	d.geographiccoverage,
	o.description as org_description,
	o.homepage as org_homepage,
	o.city as org_city,
	o.country as org_country,
	o.url as org_url
from gbif.datasets d
left join gbif.organizations o
on d.publishingorganizationkey = o.key
order by d.records desc;