output application/json
var princ = vars.current_query mapObject ()->{i: $$, val: $ }
---
vars.result filter ($.Indvl.Info[princ.i] == upper(princ.val))
