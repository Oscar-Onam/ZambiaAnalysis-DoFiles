
******************************************************************************
*              Calculate Survival Rate (SR) and GPI for country              *
*                          			                                         *
******************************************************************************      

*Calculate SR from G1 to grade G7 for primary schools ***

egen survivorsm1_7 = rowtotal($prom_m7list_reg)
egen survivorsf1_7 = rowtotal($prom_f7list_reg)
egen survivorst1_7 = rowtotal($prom_t7list_reg)

gen natsrm1_7 = survivorsm1_7/mcohort_size 
label var natsrm1_7 "National Survival Rate G1-7 (Male)"

gen natsrf1_7 = survivorsf1_7/fcohort_size
label var natsrf1_7 "National Survival Rate G1-7 (Female)"

gen natsrt1_7 = survivorst1_7/tcohort_size
label var natsrt1_7 "National Survival Rate G1-7 (Male & Female)"



*Calculate SR from G8 to G12 for secondary schools ***


egen survivorsm8 = rowtotal($prom_m8list_reg)
egen survivorsf8 = rowtotal($prom_f8list_reg)
egen survivorst8 = rowtotal($prom_t8list_reg)

egen survivorsm12 = rowtotal($prom_m12list_reg)
egen survivorsf12 = rowtotal($prom_f12list_reg)
egen survivorst12 = rowtotal($prom_t12list_reg)

gen natsrm8_12 = survivorsm12/survivorsm8
label var natsrm8_12 "National Survival Rate G8-12 (Male)"

gen natsrf8_12 = survivorsf12/survivorsf8
label var natsrf8_12 "National Survival Rate G8-12 (Female)"

gen natsrt8_12 = survivorst12/survivorst8
label var natsrt8_12 "National Survival Rate G8-12 (Male & Female)"



*Calculate SR from G1 to grade G12 for primary-sec schools ***

gen natsrm1_12 = survivorsm12/mcohort_size
label var natsrm1_12 "National Survival Rate G1-7 (Male)"

gen natsrf1_12 = survivorsf12/fcohort_size
label var natsrf1_12 "National Survival Rate G1-7 (Female)"

gen natsrt1_12 = survivorst12/tcohort_size
label var natsrt1_12 "National Survival Rate G1-7 (Male & Female)"



*Calculate GPI for SR G1-7, G8-12  and G1-12 for the country

gen natgpi_sr1_7 = natsrf1_7/natsrm1_7
label var natgpi_sr1_7 "National GPI for Survival Rate Grade 1-7"

gen natgpi_sr8_12 = natsrf8_12/natsrm8_12
label var natgpi_sr8_12 "National GPI for Survival Rate Grade 8-12"

gen natgpi_sr1_12 = natsrf1_12/natsrm1_12 
label var natgpi_sr1_12 "National GPI for Survival Rate Grade 1-12"

 **********
