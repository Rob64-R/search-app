output application/java
var princ = payload mapObject ()->{i: $$, val: $ }
---
vars.result filter ($.Indvl.Info[princ.i] contains upper(princ.val))
