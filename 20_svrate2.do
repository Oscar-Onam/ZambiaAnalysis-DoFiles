
******************************************************************************
*           Calculate Survival Rate (SR) and GPI for each district           *
*                          			                                         *
******************************************************************************      

*Calculate SR from G1 to grade G7 for primary schools ***

egen survivorsm1_7 = rowtotal($prom_m7list_reg)
egen survivorsf1_7 = rowtotal($prom_f7list_reg)
egen survivorst1_7 = rowtotal($prom_t7list_reg)

gen regsrm1_7 = survivorsm1_7/mcohort_size 
label var regsrm1_7 "District Survival Rate G1-7 (Male)"

gen regsrf1_7 = survivorsf1_7/fcohort_size
label var regsrf1_7 "District Survival Rate G1-7 (Female)"

gen regsrt1_7 = survivorst1_7/tcohort_size
label var regsrt1_7 "District Survival Rate G1-7 (Male & Female)"



*Calculate SR from G8 to G12 for secondary schools ***

egen survivorsm8 = rowtotal($prom_m8list_reg)
egen survivorsf8 = rowtotal($prom_f8list_reg)
egen survivorst8 = rowtotal($prom_t8list_reg)

egen survivorsm12 = rowtotal($prom_m12list_reg)
egen survivorsf12 = rowtotal($prom_f12list_reg)
egen survivorst12 = rowtotal($prom_t12list_reg)


gen regsrm8_12 = survivorsm12/survivorsm8
label var regsrm8_12 "District Survival Rate G8-12 (Male)"

gen regsrf8_12 = survivorsf12/survivorsf8
label var regsrf8_12 "District Survival Rate G8-12 (Female)"

gen regsrt8_12 = survivorst12/survivorst8
label var regsrt8_12 "District Survival Rate G8-12 (Male & Female)"



*Calculate SR from G1 to grade G12 for primary-sec schools ***

gen regsrm1_12 = survivorsm12/mcohort_size
label var regsrm1_12 "District Survival Rate G1-7 (Male)"

gen regsrf1_12 = survivorsf12/fcohort_size
label var regsrf1_12 "District Survival Rate G1-7 (Female)"

gen regsrt1_12 = survivorst12/tcohort_size
label var regsrt1_12 "District Survival Rate G1-7 (Male & Female)"



*Calculate GPI for SR G1-7, G8-12  and G1-12 for each region

gen reggpi_sr1_7 = regsrf1_7/regsrm1_7
label var reggpi_sr1_7 "District GPI for Survival Rate Grade 1-7"

gen reggpi_sr8_12 = regsrf8_12/regsrm8_12
label var reggpi_sr8_12 "District GPI for Survival Rate Grade 8-12"

gen reggpi_sr1_12 = regsrf1_12/regsrm1_12 
label var reggpi_sr1_12 "District GPI for Survival Rate Grade 1-12"


 **********