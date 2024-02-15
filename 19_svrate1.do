******************************************************************************
*          Calculate Survival Rate (SR) and GPI for each school              *
*                          			                                         *
******************************************************************************      

*Calculate SR from G1 to grade G7 for primary schools ***

egen survivorsm1_7 = rowtotal($prom_m7list)
egen survivorsf1_7 = rowtotal($prom_f7list)
egen survivorst1_7 = rowtotal($prom_t7list)

gen srm1_7 = 0
replace srm1_7 = survivorsm1_7/mcohort_size if elevel == 1 | elevel == 4
label var srm1_7 "Survival Rate G1-7 (Male)"

gen srf1_7 = 0
replace srf1_7 = survivorsf1_7/fcohort_size if elevel == 1 | elevel == 4
label var srf1_7 "Survival Rate G1-7 (Female)"

gen srt1_7 = 0
replace srt1_7 = survivorst1_7/tcohort_size if elevel == 1 | elevel == 4
label var srt1_7 "Survival Rate G1-7 (Male & Female)"



*Calculate SR from G8 to G12 for secondary schools ***

egen survivorsm8 = rowtotal($prom_m8list)
egen survivorsf8 = rowtotal($prom_f8list)
egen survivorst8 = rowtotal($prom_t8list)

egen survivorsm12 = rowtotal($prom_m12list)
egen survivorsf12 = rowtotal($prom_f12list)
egen survivorst12 = rowtotal($prom_t12list)


gen srm8_12 = 0
replace srm8_12 = survivorsm12/mcohort_size if elevel == 2 | elevel == 3
replace srm8_12 = survivorsm12/survivorsm8 if elevel == 4
label var srm8_12 "Survival Rate G8-12 (Male)"

gen srf8_12 = 0
replace srf8_12 = survivorsf12/fcohort_size if elevel == 2 | elevel == 3
replace srf8_12 = survivorsf12/survivorsf8 if elevel == 4
label var srf8_12 "Survival Rate G8-12 (Female)"

gen srt8_12 = 0
replace srt8_12 = survivorst12/tcohort_size if elevel == 2 | elevel == 3 
replace srt8_12 = survivorst12/survivorst8 if elevel == 4
label var srt8_12 "Survival Rate G8-12 (Male & Female)"


*Calculate SR from G1 to grade G12 for primary-sec schools ***

gen srm1_12 = 0
replace srm1_12 = survivorsm12/mcohort_size if elevel == 4
label var srm1_12 "Survival Rate G1-7 (Male)"

gen srf1_12 = 0
replace srf1_12 = survivorsf12/fcohort_size if elevel == 4
label var srf1_12 "Survival Rate G1-7 (Female)"

gen srt1_12 = 0
replace srt1_12 = survivorst12/tcohort_size if elevel == 4
label var srt1_12 "Survival Rate G1-7 (Male & Female)"



*Calculate GPI for SR G1-7, G8-12  and G1-12 for each school

gen gpi_sr1_7 = 0
replace gpi_sr1_7 = srf1_7/srm1_7 if elevel == 1 | elevel == 4
label var gpi_sr1_7 "GPI for Survival Rate Grade 1-7"


gen gpi_sr8_12 = 0
replace gpi_sr8_12 = srf8_12/srm8_12 if elevel == 2 | elevel == 3
label var gpi_sr8_12 "GPI for Survival Rate Grade 8-12"


gen gpi_sr1_12 = 0
replace gpi_sr1_12 = srf1_12/srm1_12 if elevel == 4
label var gpi_sr1_12 "GPI for Survival Rate Grade 1-12"


