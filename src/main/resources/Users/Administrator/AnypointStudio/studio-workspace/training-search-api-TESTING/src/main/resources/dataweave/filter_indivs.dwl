%dw 2.0
output application/json
---

(payload filter ($.Indvl.Info[vars.qParams.search_key] contains upper(vars.qParams.search_value))) orderBy ($.Indvl.Info.lastNm)