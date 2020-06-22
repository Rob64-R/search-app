%dw 2.0
output application/java
---
payload.IAPDIndividualReport.Indvls.*Indvl map ( indvl , indexOfIndvl ) -> {
	Indvl: {
		Info: {
			"lastNm": indvl.Info.@lastNm default "",
			"firstNm": indvl.Info.@firstNm default "",
			"midNm": indvl.Info.@midNm default "",
			"sufNM": indvl.Info.@sufNm default "",
			"city": indvl.CrntEmps.CrntEmp.@city default "",
			"state": indvl.CrntEmps.CrntEmp.@state default "",
			"postlCd": indvl.CrntEmps.CrntEmp.@postlCd default "",
		},
		OthrNms: {
			OthrNm: indvl.OthrNms.*OthrNm map ( othrNm , indexOfOthrNm ) -> {
				"lastNm": othrNm.@lastNm default "",
				"firstNm": othrNm.@firstNm default "",
				"midNm": othrNm.@midNm default "",
				"sufNm": othrNm.@sufNm default ""
			}
		}
		
	}
}

