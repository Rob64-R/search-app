%dw 2.0
output application/json
---

{
	results: (payload filter ($.Indvl.Info[vars.qParams.search_key] contains upper(vars.qParams.search_value))) orderBy ($.Indvl.Info.lastNm),
	filters:[vars.qParams.search_key,
		vars.qParams.search_value
	]
	
}

