******************************************************************************
*   Calculate Coefficient of Internal Efficiency (CoIE) for each school      *
*                      									                     *
******************************************************************************      

*Pupils retained in the system by end of primary education

****** boys

gen ret_mpri = enrolees_gm1_2023 + enrolees_gm2_2023 + /// 
			   enrolees_gm3_2023 + enrolees_gm4_2023 + ///
			   enrolees_gm5_2023 + enrolees_gm6_2023 + ///
			   enrolees_gm7_2023

gen retr_mpri = 0
replace retr_mpri = ret_mpri/mcohort_size if elevel == 1 | elevel == 4

label var retr_mpri "Retention rate for male pupils after 7 years of primary education"


****** girls

gen ret_fpri = enrolees_gf1_2023 + enrolees_gf2_2023 + /// 
			   enrolees_gf3_2023 + enrolees_gf4_2023 + ///   
			   enrolees_gf5_2023 + enrolees_gf6_2023 + ///
			   enrolees_gf7_2023

gen retr_fpri = 0
replace retr_fpri = ret_fpri/fcohort_size if elevel == 1 | elevel == 4

label var retr_fpri "Retention rate for female pupils after 7 years of primary education"


****** boys and girls

gen ret_tpri = enrolees_gt1_2023 + enrolees_gt2_2023 + /// 
			   enrolees_gt3_2023 + enrolees_gt4_2023 + ///   
			   enrolees_gt5_2023 + enrolees_gt6_2023 + /// 
			   enrolees_gt7_2023

gen retr_tpri = 0
replace retr_tpri = ret_tpri/tcohort_size if elevel == 1 | elevel == 4

label var retr_tpri "Retention rate for male & female pupils after 7 years of primary education"


*Pupils retained in the system by end of secondary education (G1 - 12)

****** boys

gen ret_mprisec = 	enrolees_gm2_2028 + enrolees_gm3_2028 + /// 
					enrolees_gm4_2028 + enrolees_gm5_2028 + /// 
					enrolees_gm6_2028 + enrolees_gm7_2028 + /// 
					enrolees_gm8_2028 + enrolees_gm9_2028 + /// 
					enrolees_gm10_2028 + enrolees_gm11_2028 + /// 
					enrolees_gm12_2028 

gen retr_mprisec =  0        
replace retr_mprisec = ret_mprisec/mcohort_size  if elevel == 4

label var retr_mprisec "Retention rate for male pupils after 12 years of education"


****** girls

gen ret_fprisec = 	enrolees_gf2_2028 + enrolees_gf3_2028 + /// 
					enrolees_gf4_2028 + enrolees_gf5_2028 + /// 
					enrolees_gf6_2028 + enrolees_gf7_2028 + /// 
					enrolees_gf8_2028 + enrolees_gf9_2028 + /// 
					enrolees_gf10_2028 + enrolees_gf11_2028 + /// 
					enrolees_gf12_2028 

gen retr_fprisec =  0        
replace retr_fprisec = ret_fprisec/fcohort_size  if elevel == 2 | elevel == 3 

label var retr_fprisec "Retention rate for female pupils after 12 years of education"


****** boys and girls

gen ret_tprisec = 	enrolees_gt2_2028 + enrolees_gt3_2028 + /// 
					enrolees_gt4_2028 + enrolees_gt5_2028 + /// 
					enrolees_gt6_2028 + enrolees_gt7_2028 + /// 
					enrolees_gt8_2028 + enrolees_gt9_2028 + /// 
					enrolees_gt10_2028 + enrolees_gt11_2028 + /// 
					enrolees_gt12_2028 

gen retr_tprisec =  0        
replace retr_tprisec = ret_tprisec/tcohort_size  if elevel == 2 | elevel == 3

label var retr_tprisec "Retention rate for male & female pupils after 12 years of education"


*Pupils retained in the system from G8 to G12

****** boys

gen ret_msec =  enrolees_gm8_2021 + enrolees_gm9_2021 + enrolees_gm10_2021 + /// 
				enrolees_gm11_2021 + enrolees_gm12_2021 + enrolees_gm8_2028 + /// 
				enrolees_gm9_2028 + enrolees_gm10_2028 + enrolees_gm11_2028 + ///
				enrolees_gm12_2028

gen retr_msec = 0			
replace retr_msec = ret_msec/enrolees_gm8_2024 if elevel != 4 
replace retr_msec = 0 		
label var retr_msec "Retention rate for male pupils after 5 years of secondary education"


****** girls

gen ret_fsec =  enrolees_gf8_2021 + enrolees_gf9_2021 + enrolees_gf10_2021 + /// 
				enrolees_gf11_2021 + enrolees_gf12_2021 + enrolees_gf8_2028 + /// 
				enrolees_gf9_2028 + enrolees_gf10_2028 + enrolees_gf11_2028 + ///
				enrolees_gf12_2028

gen retr_fsec = 			ret_fsec/enrolees_gf8_2024
replace retr_fsec = 0 		if elevel != 4 
label var retr_fsec "Retention rate for female pupils after 5 years of secondary education"


****** boys and girls

gen ret_tsec = 	enrolees_gt8_2021 + enrolees_gt9_2021 + enrolees_gt10_2021 + /// 
				enrolees_gt11_2021 + enrolees_gt12_2021 + enrolees_gt8_2028 + /// 
				enrolees_gt9_2028 + enrolees_gt10_2028 + enrolees_gt11_2028 + ///
				enrolees_gt12_2028

gen retr_tsec = 			ret_tsec/enrolees_gt8_2024
replace retr_tsec = 0 		if elevel != 4 
label var retr_tsec "Retention rate for male & female pupils after 5 years of secondary education"



*Drop out rates 

gen dr_mpri = 1 - retr_mpri
gen dr_fpri = 1 - retr_fpri
gen dr_tpri = 1 - retr_tpri

gen dr_msec = 1 - retr_msec
gen dr_fsec = 1 - retr_fsec
gen dr_tsec = 1 - retr_tsec

gen dr_mprisec = 1 - retr_mprisec
gen dr_fprisec = 1 - retr_fprisec
gen dr_tprisec = 1 - retr_tprisec

gen gpi_dr_pri = dr_fpri/dr_mpri
gen gpi_dr_sec = dr_fsec/dr_msec
gen gpi_dr_prisec = dr_fprisec/dr_mprisec

label var dr_mpri "Dropout rate male before completing primary"
label var dr_fpri "Dropout rate female before completing primary"
label var dr_tpri "Dropout rate male & female before completing primary"

label var dr_msec "Dropout rate male in secondary"
label var dr_fsec "Dropout rate female in secondary"
label var dr_tsec "Dropout rate male & female in secondary"

label var dr_mprisec "Dropout rate male before completing secondary"
label var dr_fprisec "Dropout rate female before completing secondary"
label var dr_tprisec "Dropout rate male & female before completing secondary"

label var gpi_dr_pri "GPI for dropout rate before completing primary"
label var gpi_dr_sec "GPI for dropout rate in secondary"
label var gpi_dr_prisec "GPI for dropout rate before completing secondary"


****** GPI (retention rates)

gen gpi_retr_pri = retr_fpri/retr_mpri
gen gpi_retr_sec = retr_fsec/retr_msec
gen gpi_retr_prisec = retr_fprisec/retr_mprisec


label var gpi_retr_pri "GPI for retention rate after 7 years of primary education"
label var gpi_retr_sec "GPI for retention rate after 5 years of secondary education"
label var gpi_retr_prisec "GPI for retention rate after 12 years (G1-12) of education"

					
*Cohort graduation rate at end of primary and secondary 

* Primary
egen grads_gm7 = rowtotal ($prom_m8list)
egen grads_gf7 = rowtotal ($prom_f8list)
egen grads_gt7 = rowtotal ($prom_t8list)

gen gradr_gm7 = grads_gm7/mcohort_size
gen gradr_gf7 = grads_gf7/fcohort_size
gen gradr_gt7 = grads_gt7/tcohort_size
gen gpi_gradr_g7 = gradr_gf7/gradr_gm7

label var grads_gm7 "Number of grade 7 male graduates"
label var grads_gf7 "umber of grade 7 female graduates"
label var grads_gt7 "umber of grade 7 male & female graduates"

label var gradr_gm7 "Graduation rate for male pupils for grade 7"
label var gradr_gf7 "Graduation rate for female pupils for grade 7"
label var gradr_gt7 "Graduation rate for male & female pupils for grade 7"
label var gpi_gradr_g7 "GPI for graduation rate for grade 7"

*Secondary
egen grads_gm12 = rowtotal ($grad_m12list)
egen grads_gf12 = rowtotal ($grad_f12list)
egen grads_gt12 = rowtotal ($grad_t12list)

gen gradr_gm12 = grads_gm12/mcohort_size
gen gradr_gf12 = grads_gf12/fcohort_size
gen gradr_gt12 = grads_gt12/tcohort_size
gen gpi_gradr_g12= gradr_gf12/gradr_gm12

label var grads_gm12 "Number of grade 12 male graduates"
label var grads_gf12 "Number of grade 12 female graduates"
label var grads_gt12 "Number of grade 12 male & female graduates"

label var gradr_gm12 "Graduation rate for male pupils for grade 12"
label var gradr_gf12 "Graduation rate for female pupils for grade 12"
label var gradr_gt12 "Graduation rate for male & female pupils for grade 12"
label var gpi_gradr_g12 "GPI for graduation rate for grade 12"



* Total pupil-years studied by the cohort by 7th and 12th grade

gen pupil_yrs_grad7m = 0
replace pupil_yrs_grad7m = (total_enrol_m1list + total_enrol_m2list + ///
						   total_enrol_m3list + total_enrol_m4list + ///
					       total_enrol_m5list + total_enrol_m6list + /// 
					       total_enrol_m7list) if elevel == 1 | elevel == 4 
					   
gen pupil_yrs_grad7f = 0
replace pupil_yrs_grad7f = (total_enrol_f1list + total_enrol_f2list + ///
						   total_enrol_f3list + total_enrol_f4list + ///
					       total_enrol_f5list + total_enrol_f6list + /// 
					       total_enrol_f7list) if elevel == 1 | elevel == 4
					   
gen pupil_yrs_grad7t = 0
replace pupil_yrs_grad7t = (total_enrol_t1list + total_enrol_t2list + ///
						   total_enrol_t3list + total_enrol_t4list + ///
					       total_enrol_t5list + total_enrol_t6list + /// 
					       total_enrol_t7list) if elevel == 1 | elevel == 4 


						   
gen pupil_yrs_grad12m = 0
replace pupil_yrs_grad12m = (total_enrol_m1list + total_enrol_m2list + ///
						   total_enrol_m3list + total_enrol_m4list + ///
					       total_enrol_m5list + total_enrol_m6list + /// 
					       total_enrol_m7list + total_enrol_m8list + /// 
						   total_enrol_m9list + total_enrol_m10list + /// 
						   total_enrol_m11list + total_enrol_m12list) /// 
						   if elevel == 4 
replace pupil_yrs_grad12m = (total_enrol_m8list + total_enrol_m9list + /// 
						   total_enrol_m10list + total_enrol_m11list + /// 
						   total_enrol_m12list) /// 
						   if elevel == 2 | elevel == 3 	 						   
						   
gen pupil_yrs_grad12f = 0
replace pupil_yrs_grad12f = (total_enrol_f1list + total_enrol_f2list + ///
						   total_enrol_f3list + total_enrol_f4list + ///
					       total_enrol_f5list + total_enrol_f6list + /// 
					       total_enrol_f7list + total_enrol_f8list + /// 
						   total_enrol_f9list + total_enrol_f10list + /// 
						   total_enrol_f11list + total_enrol_f12list) /// 
						   if elevel == 4 					   
replace pupil_yrs_grad12f = (total_enrol_f8list + total_enrol_f9list + /// 
						   total_enrol_f10list + total_enrol_f11list + /// 
						   total_enrol_f12list) /// 
						   if elevel == 2 | elevel == 3 						   
						   
gen pupil_yrs_grad12t = 0
replace pupil_yrs_grad12t = (total_enrol_t1list + total_enrol_t2list + ///
						   total_enrol_t3list + total_enrol_t4list + ///
					       total_enrol_t5list + total_enrol_t6list + /// 
					       total_enrol_t7list + total_enrol_t8list + /// 
						   total_enrol_t9list + total_enrol_t10list + /// 
						   total_enrol_t11list + total_enrol_t12list) /// 
						   if elevel == 4 	
replace pupil_yrs_grad12t = (total_enrol_t8list + total_enrol_t9list + /// 
						   total_enrol_t10list + total_enrol_t11list + /// 
						   total_enrol_t12list) /// 
						   if elevel == 2 | elevel == 3 						   
				  
label var pupil_yrs_grad7m "Total pupil-years studied by male cohort to complete primary"
label var pupil_yrs_grad7f "Total pupil-years studied by female cohort to complete primary"
label var pupil_yrs_grad7t "Total pupil-years studied by male & female cohort to complete primary"
				  
label var pupil_yrs_grad12m "Total pupil-years studied by male cohort to complete secondary"
label var pupil_yrs_grad12f "Total pupil-years studied by female cohort to complete secondary"
label var pupil_yrs_grad12t "Total pupil-years studied by male & female cohort to complete secondary"	

				  
* Average no. of pupil-years invested per Grade graduate

gen py_grad7_m = 0
replace py_grad7_m = pupil_yrs_grad7m/grads_gm7 	if elevel == 1 | elevel == 4

gen py_grad7_f = 0
replace py_grad7_f = pupil_yrs_grad7f/grads_gf7 	if elevel == 1 | elevel == 4

gen py_grad7_t = 0
replace py_grad7_t = pupil_yrs_grad7t/grads_gt7 	if elevel == 1 | elevel == 4

gen py_grad12_m = 0
replace py_grad12_m = pupil_yrs_grad12m/grads_gm12   if elevel != 1

gen py_grad12_f = 0
replace py_grad12_f = pupil_yrs_grad12f/grads_gf12 	 if elevel != 1

gen py_grad12_t = 0
replace py_grad12_t = pupil_yrs_grad12t/grads_gt12   if elevel != 1


label var py_grad7_m "Average no. of pupil-years invested per grade 7 male graduate"
label var py_grad7_f "Average no. of pupil-years invested per grade 7 female graduate"
label var py_grad7_t "Average no. of pupil-years invested per grade 7 male & female graduate"

label var py_grad12_m "Average no. of pupil-years invested per grade 7 male graduate"
label var py_grad12_f "Average no. of pupil-years invested per grade 7 female graduate"
label var py_grad12_t "Average no. of pupil-years invested per grade 7 male & female graduate"


* Coefficient of internal efficiency and GPI

gen 	pri_coie_m1 = 0
replace pri_coie_m1 = 7/py_grad7_m 			if elevel == 1 | elevel == 4

gen 	sec_coie_m1 = 0
replace sec_coie_m1 = 5/py_grad12_m 			if elevel == 2 | elevel == 3
replace sec_coie_m1 = 12/py_grad12_m 			if elevel == 4


gen 	pri_coie_f1 = 0
replace pri_coie_f1 = 7/py_grad7_f 			if elevel == 1 | elevel == 4

gen 	sec_coie_f1 = 0
replace sec_coie_f1 = 5/py_grad12_f 			if elevel == 2 | elevel == 3
replace sec_coie_f1 = 12/py_grad12_f 			if elevel == 4


gen 	pri_coie_t1 = 0
replace pri_coie_t1 = 7/py_grad7_t 			if elevel == 1 | elevel == 4

gen 	sec_coie_t1 = 0
replace sec_coie_t1 = 5/py_grad12_t 			if elevel == 2 | elevel == 3
replace sec_coie_t1 = 12/py_grad12_t 			if elevel == 4


gen gpi_pri_coie_1 = pri_coie_f1/pri_coie_m1
gen gpi_sec_coie_1 = sec_coie_f1/sec_coie_m1

label var pri_coie_m1 "Coefficient of internal efficiency for male pupils in primary"
label var pri_coie_f1 "Coefficient of internal efficiency for female pupils in primary"
label var pri_coie_t1 "Coefficient of internal efficiency for male & female pupils in primary"
label var gpi_pri_coie_1 "GPI for CoIE in primary"

label var sec_coie_m1 "Coefficient of internal efficiency for male pupils in secondary"
label var sec_coie_f1 "Coefficient of internal efficiency for female pupils in secondary"
label var sec_coie_t1 "Coefficient of internal efficiency for male & female pupils in secondary"
label var gpi_sec_coie_1 "GPI for CoIE in secondary"

* Some graphs and quick analysis

*Correlation test
corr mean_scorem pri_coie_m1 if pri_coie_m1 > 0 & pri_coie_m1 < 1
corr mean_scoref pri_coie_f1 if pri_coie_f1 > 0 & pri_coie_f1 < 1
corr mean_scoret pri_coie_t1 if pri_coie_t1 > 0 & pri_coie_t1 < 1


*scatter
twoway (scatter mean_scoret pri_coie_t1 if pri_coie_t1 >0 & pri_coie_t1<1, /// 
		mcolor(gs8) msize(vsmall) msymbol(circle_hollow)) ///
		(qfit mean_scoret pri_coie_t1 if pri_coie_t1 >0 & pri_coie_t1<1, /// 
		lwidth(thin) lcolor(red) lpattern(dash)), ///
		ytitle("School mean score for female pupils") /// 
		ytitle(, size(6-pt) color(black)) /// 
		ylabel(, labsize(4-pt) angle(horizontal) nogrid) /// 
		xtitle("Coefficient of Interal Efficiency for female pupil") /// 
		xtitle(, size(6-pt) justification(center)) /// 
		xlabel(, labsize(4-pt)) /// 
		title("Relationship Between School Mean Score and Internal Efficiency Coefficient", ///  
			  size(6-pt) justification(center) alignment(top)) /// 
		subtitle("- Female pupils -", size(4-pt) /// 
				color(black) justification(center) alignment(top)) /// 
		note("Source: Zambia National EMIS, 2018/19", /// 
			size(4-pt) color(gs6) position(7) /// 
			orientation(horizontal) justification(left) alignment(bottom)) /// 
		scale(1) ///
		legend(col(1) ring(0) position (5) order (2) size(4-pt) ///
			   label(2 "Quadratic Fit") ///
			   region(lcolor(white))) ///
		graphregion(fcolor(white))

		
twoway (scatter mean_scorem pri_coie_m1 if pri_coie_m1 >0 & pri_coie_m1<1, /// 
		mcolor(cyan) msize(vsmall) msymbol(circle_hollow)) ///
	   (scatter mean_scoref pri_coie_f1 if pri_coie_f1 >0 & pri_coie_f1<1, /// 
		mcolor(gs3) msize(vsmall) msymbol(circle_hollow)) ///
	   (qfit mean_scorem pri_coie_m1 if pri_coie_m1 >0 & pri_coie_m1<1, /// 
		lwidth(thin) lcolor(red) lpattern(dash)) ///
	   (qfit mean_scoref pri_coie_f1 if pri_coie_f1 >0 & pri_coie_f1<1, /// 
		lwidth(thin) lcolor(gold) lpattern(dash)), ///
		ytitle("School mean score") /// 
		ytitle(, size(6-pt) color(black)) /// 
		ylabel(, labsize(4-pt) angle(horizontal) nogrid) /// 
		xtitle("Coefficient of Interal Efficiency") /// 
		xtitle(, size(6-pt) justification(center)) /// 
		xlabel(, labsize(4-pt)) /// 
		title("Relationship Between School Mean Score and Internal Efficiency Coefficient", ///  
			  size(6-pt) justification(center) alignment(top)) /// 
		subtitle("- Male and Female pupils -", size(4-pt) /// 
				color(black) justification(center) alignment(top)) /// 
		note("Source: Zambia National EMIS, 2018/19", /// 
			size(4-pt) color(gs6) position(7) /// 
			orientation(horizontal) justification(left) alignment(bottom)) /// 
		scale(1) ///
		legend(col(1) ring(0) position (5) order (1 2 3 4) size(4-pt) ///
			   label(1 "Male pupils") ///
			   label(2 "Female pupils") ///
			   label(3 "Quadratic fit - Male pupils") ///
			   label(4 "Quadratic fit - Female pupils") ///
			   region(lcolor(white))) ///
		graphregion(fcolor(white))

		
* boxplots

graph box pri_coie_t1 if pri_coie_t1 >0 & pri_coie_t1<1, /// 
	  over(exam_quintilest, label(labsize(vsmall))) ///
	  marker(1, msize(vsmall)) ///
	  marker(2, msize(vsmall)) /// 
	  marker(3, msize(vsmall)) ///
	  marker(4, msize(vsmall)) /// 
	  marker(5, msize(vsmall)) ///
	  ytitle("pri_coie for male and female pupils") /// 
			  ytitle(, size(4-pt)) /// 
			  ylabel(, labels labsize(vsmall) angle(horizontal) nogrid) /// 
	  title("Relationship between school performance and pri_coie", /// 
			size(6-pt) justification(center) alignment(top)) /// 
	  note("Source: Zambia National EMIS, 2018/19", /// 
			size(4-pt) color(gs6) position(7)) /// 
	  graphregion(fcolor(white))


********************************************************************************
************************************** Models **********************************
********************************************************************************




*Vars transformation:

global sk_vars 	distance 		   class_size2017 	class_size2018	ptr2018 ///
				ptr2017  		   g_t_r2018  		g_t_r2017 		G7p_txtbk_r2017 /// 
				G12p_txtbk_r2017   p_t_r2017		mean_scorem     mean_scoref /// 
				mean_scoret 	   srm1_7 			srf1_7 			srt1_7 /// 
				srm8_12 		   srf8_12 			srt8_12 		gpi_sr1_7 /// 
				gpi_sr8_12 	   	   retr_mpri 		retr_fpri 		retr_tpri /// 
				gpi_retr_pri	   retr_msec		retr_fsec 		retr_tsec /// 
				gpi_retr_sec	   pri_coie_m1 		pri_coie_f1 	pri_coie_t1 /// 
				sec_coie_m1 	   sec_coie_f1     	sec_coie_t1     gpi_pri_coie_1 /// 	    
				gpi_sec_coie_1     f_index			e_index		    
				

				
foreach var in $sk_vars {
							quietly: sktest `var'
							gen sk_`var' = r(p_skew) 
							gen log_`var' = log(`var') if sk_`var'< 0.05 
							set graphics off
							hist `var', normal name(hist_`var', replace) 
							hist log_`var', normal name(hist_log_`var', replace)
						}	
						

foreach var in pri_coie_m1 pri_coie_f1 pri_coie_t1 sec_coie_m1 sec_coie_f1 sec_coie_t1 {
				   gen z_`var' =.
				   gen out_`var'= 0
				   forvalues i = 1/4 {
					   quietly: sum `var' if elevel == `i'
					   replace z_`var' = (`var'-r(mean))/r(sd) if elevel ==`i'
				   }
			   }						

			   
* Some corr tests
pwcorr mean_scoret f_index if (elevel == 1 | elevel == 4) & mean_scoret != ., sig star(.05)	
pwcorr mean_scoret e_index if (elevel == 1 | elevel == 4) & mean_scoret != ., sig star(.05)

pwcorr mean_scoret log_f_index if (elevel == 1 | elevel == 4) & mean_scoret != ., sig star(.05)	
pwcorr mean_scoret log_e_index if (elevel == 1 | elevel == 4) & mean_scoret != ., sig star(.05)		

pwcorr mean_scoret z_f_index if (elevel == 1 | elevel == 4) & mean_scoret != ., sig star(.05)	
pwcorr mean_scoret z_e_index if (elevel == 1 | elevel == 4) & mean_scoret != ., sig star(.05)

pwcorr log_mean_scoret log_f_index if (elevel == 1 | elevel == 4) & mean_scoret != ., sig star(.05)	
pwcorr log_mean_scoret log_e_index if (elevel == 1 | elevel == 4) & mean_scoret != ., sig star(.05)			   

pwcorr mean_scoret pri_coie_t1 if (elevel == 1 | elevel == 4) & mean_scoret != ., sig star(.05)	
pwcorr mean_scoret pri_coie_t1 if (elevel == 1 | elevel == 4) & mean_scoret != ., sig star(.05)	

pwcorr log_mean_scoret log_pri_coie_t1 if (elevel == 1 | elevel == 4) & mean_scoret != ., sig star(.05)	
pwcorr z_mean_scoret z_pri_coie_t1 if (elevel == 1 | elevel == 4) & mean_scoret != ., sig star(.05)							


	
*OUTCOME VAR AS CONTINUOUS****************************************************
 	
*Generalized Linear Modelling (multiple linear regression)
	
 glm mean_scoret ///  	 
			ib(7).region i.location log_G7p_txtbk_r2017 z_class_size2017 /// 
			log_g_t_r2017 i.elec_in_sch i.water_in_sch f_index /// 
			e_index /// 
					b(0).location#b(0).elec_in_sch ///
					b(0).location#b(0).waste_disposal ///
					b(0).location#b(0).mensthygiene ///
					b(0).location#b(0).sani_disposal ///
					b(0).elec_in_sch#c.class_size2017 ///
					i.waste_disposal#c.log_g_t_r2017 ///
					if (elevel == 1 | elevel == 4), ///  
	 family(gaussian) link(identity) ///  
	 eform
	 

 glm mean_scorem ///  	 
			z_distance ib(7).region i.location log_G7p_txtbk_r2017 /// 
			z_class_size2017 log_g_t_r2017 i.elec_in_sch i.water_in_sch /// 
			i.vpoor_furn i.vpoor_equip i.waste_disposal i.hand_washpractice /// 
			i.soap_handwashing i.mensthygiene i.sani_towels /// 
					b(0).location#c.z_G7p_txtbk_r2017 /// 
					b(0).location#c.z_class_size2017 /// 
					b(0).location#b(0).elec_in_sch ///
					b(0).location#b(0).waste_disposal ///
					b(0).location#b(0).mensthygiene ///
					b(0).location#b(0).sani_disposal ///
					b(0).elec_in_sch#c.f_index /// 
					b(0).elec_in_sch#c.class_size2017 ///
					b(0).water_in_sch#b(0).hygiene_edu ///
					b(0).water_in_sch#b(0).mensthygiene ///
					b(0).water_in_sch#b(0).soap_handwashing ///
					b(0).water_in_sch#b(0).sani_disposal ///
					i.waste_disposal#c.log_g_t_r2017 ///
					if (elevel == 1 | elevel == 4) & mean_scoret !=., ///  
	 family(gaussian) link(identity) ///  
	 eform
	 
	 
  glm mean_scoref ///  	 
			z_distance ib(7).region i.location log_G7p_txtbk_r2017 /// 
			z_class_size2017 log_g_t_r2017 i.elec_in_sch i.water_in_sch /// 
			i.vpoor_furn i.vpoor_equip i.waste_disposal i.hand_washpractice /// 
			i.soap_handwashing i.mensthygiene i.sani_towels /// 
					b(0).location#c.z_G7p_txtbk_r2017 /// 
					b(0).location#c.z_class_size2017 /// 
					b(0).location#b(0).elec_in_sch ///
					b(0).location#b(0).waste_disposal ///
					b(0).location#b(0).mensthygiene ///
					b(0).location#b(0).sani_disposal ///
					b(0).elec_in_sch#c.f_index /// 
					b(0).elec_in_sch#c.class_size2017 ///
					b(0).water_in_sch#b(0).hygiene_edu ///
					b(0).water_in_sch#b(0).mensthygiene ///
					b(0).water_in_sch#b(0).soap_handwashing ///
					b(0).water_in_sch#b(0).sani_disposal ///
					i.waste_disposal#c.log_g_t_r2017 ///
					if (elevel == 1 | elevel == 4) & mean_scoret !=., ///  
	 family(gaussian) link(identity) ///  
	 eform
	 
*Generalized Linear Mixed Model (GLMM)	

  meglm mean_scoret ///  	 
			z_distance i.location log_G7p_txtbk_r2017 /// 
			z_class_size2017 log_g_t_r2017 i.elec_in_sch i.water_in_sch /// 
			i.vpoor_furn i.vpoor_equip i.waste_disposal i.hand_washpractice /// 
			i.soap_handwashing i.mensthygiene i.sani_towels /// 
					b(0).location#c.z_G7p_txtbk_r2017 /// 
					b(0).location#c.z_class_size2017 /// 
					b(0).location#b(0).elec_in_sch ///
					b(0).location#b(0).waste_disposal ///
					b(0).location#b(0).mensthygiene ///
					b(0).location#b(0).sani_disposal ///
					b(0).elec_in_sch#c.f_index /// 
					b(0).elec_in_sch#c.class_size2017 ///
					b(0).water_in_sch#b(0).hygiene_edu ///
					b(0).water_in_sch#b(0).mensthygiene ///
					b(0).water_in_sch#b(0).soap_handwashing ///
					b(0).water_in_sch#b(0).sani_disposal ///
					i.waste_disposal#c.log_g_t_r2017 ///
					if (elevel == 1 | elevel == 4) & mean_scoret !=. /// 
					|| region:, ///  
	 family(gaussian) link(identity)


*Multivariate regression (Linear Modelling)

mvreg mean_scorem mean_scoref = z_distance ib(7).region /// 
			i.location log_G7p_txtbk_r2017 z_class_size2017 log_g_t_r2017 /// 
			i.elec_in_sch i.water_in_sch vpoor_furn vpoor_equip /// 
			waste_disposal hand_washpractice soap_handwashing mensthygiene sani_towels /// 
					b(0).location#c.z_G7p_txtbk_r2017 /// 
					b(0).location#c.z_class_size2017 /// 
					b(0).location#b(0).elec_in_sch ///
					b(0).location#b(0).waste_disposal ///
					b(0).location#b(0).mensthygiene ///
					b(0).location#b(0).sani_disposal ///
					b(0).elec_in_sch#c.f_index /// 
					b(0).elec_in_sch#c.class_size2017 ///
					b(0).water_in_sch#b(0).hygiene_edu ///
					b(0).water_in_sch#b(0).mensthygiene ///
					b(0).water_in_sch#b(0).soap_handwashing ///
					b(0).water_in_sch#b(0).sani_disposal ///
					i.waste_disposal#c.log_g_t_r2017 ///
					if elevel == 1 | elevel == 4

					
						
* Multivariate regression (GLM)			
	
    /* In r or SPSS */
	
	
	
*OUTCOME VAR AS BINARY ****************************************************


*Binary logistics regression

 logistic top_quint ///  	 
			z_distance ib(7).region i.location log_G7p_txtbk_r2017 /// 
			z_class_size2017 log_g_t_r2017 i.elec_in_sch i.water_in_sch /// 
			i.vpoor_furn i.vpoor_equip i.waste_disposal i.hand_washpractice /// 
			i.soap_handwashing i.mensthygiene i.sani_towels /// 
					b(0).location#c.z_G7p_txtbk_r2017 /// 
					b(0).location#c.z_class_size2017 /// 
					b(0).location#b(0).elec_in_sch ///
					b(0).location#b(0).waste_disposal ///
					b(0).location#b(0).mensthygiene ///
					b(0).location#b(0).sani_disposal ///
					b(0).elec_in_sch#i.vpoor_equip /// 
					b(0).elec_in_sch#i.vpoor_furn /// 
					b(0).elec_in_sch#c.class_size2017 ///
					b(0).water_in_sch#b(0).hygiene_edu ///
					b(0).water_in_sch#b(0).mensthygiene ///
					b(0).water_in_sch#b(0).soap_handwashing ///
					b(0).water_in_sch#b(0).sani_disposal ///
					i.waste_disposal#c.log_g_t_r2017 ///
					if (elevel == 1 | elevel == 4)


*Generalized Linear Modelling (Binomial/logit)
	
 glm top_quint ///  	 
			z_distance ib(7).region i.location log_G7p_txtbk_r2017 /// 
			z_class_size2017 log_g_t_r2017 i.elec_in_sch i.water_in_sch /// 
			i.vpoor_furn i.vpoor_equip i.waste_disposal i.hand_washpractice /// 
			i.soap_handwashing i.mensthygiene i.sani_towels /// 
					b(0).location#c.z_G7p_txtbk_r2017 /// 
					b(0).location#c.z_class_size2017 /// 
					b(0).location#b(0).elec_in_sch ///
					b(0).location#b(0).waste_disposal ///
					b(0).location#b(0).mensthygiene ///
					b(0).location#b(0).sani_disposal ///
					b(0).elec_in_sch#c.f_index /// 
					b(0).elec_in_sch#c.class_size2017 ///
					b(0).water_in_sch#b(0).hygiene_edu ///
					b(0).water_in_sch#b(0).mensthygiene ///
					b(0).water_in_sch#b(0).soap_handwashing ///
					b(0).water_in_sch#b(0).sani_disposal ///
					i.waste_disposal#c.log_g_t_r2017 ///
					if (elevel == 1 | elevel == 4), ///  
	 family(binomial 1) link(logit) ///  
	 eform
	 

*Generalized Estimating Equations (GEE)

  xtset region
	 
  xtgee top_quint ///  	 
			z_distance i.location log_G7p_txtbk_r2017 /// 
			z_class_size2017 log_g_t_r2017 i.elec_in_sch i.water_in_sch /// 
			i.vpoor_furn i.vpoor_equip i.waste_disposal i.hand_washpractice /// 
			i.soap_handwashing i.mensthygiene i.sani_towels /// 
					b(0).location#c.z_G7p_txtbk_r2017 /// 
					b(0).location#c.z_class_size2017 /// 
					b(0).location#b(0).elec_in_sch ///
					b(0).location#b(0).waste_disposal ///
					b(0).location#b(0).mensthygiene ///
					b(0).location#b(0).sani_disposal ///
					b(0).elec_in_sch#c.f_index /// 
					b(0).elec_in_sch#c.class_size2017 ///
					b(0).water_in_sch#b(0).hygiene_edu ///
					b(0).water_in_sch#b(0).mensthygiene ///
					b(0).water_in_sch#b(0).soap_handwashing ///
					b(0).water_in_sch#b(0).sani_disposal ///
					i.waste_disposal#c.log_g_t_r2017 ///
					if (elevel == 1 | elevel == 4), ///  
	 family(binomial 1) link(logit) corr(independent)	 	



************************COIE

* Primary

* Generalized Linear Modelling (multiple linear regression)
	
 glm pri_coie_t1 ///  	 
			z_distance ib(7).region i.location /// 
			z_class_size2017 log_g_t_r2017 i.elec_in_sch i.water_in_sch /// 
			i.vpoor_furn i.vpoor_equip i.waste_disposal i.hand_washpractice /// 
			i.soap_handwashing i.mensthygiene i.sani_towels /// 
					b(0).location#c.z_class_size2017 /// 
					b(0).location#b(0).elec_in_sch ///
					b(0).location#b(0).waste_disposal ///
					b(0).location#b(0).mensthygiene ///
					b(0).location#b(0).sani_disposal ///
					b(0).elec_in_sch#c.f_index /// 
					b(0).elec_in_sch#c.class_size2017 ///
					b(0).water_in_sch#b(0).hygiene_edu ///
					b(0).water_in_sch#b(0).mensthygiene ///
					b(0).water_in_sch#b(0).soap_handwashing ///
					b(0).water_in_sch#b(0).sani_disposal ///
					i.waste_disposal#c.log_g_t_r2017 ///
					if (elevel == 1 | elevel == 4), ///  
	 family(gaussian) link(identity) ///  
	 eform


* Secondary

 glm sec_coie_t1 ///  	 
			z_distance ib(7).region i.location /// 
			z_class_size2017 log_g_t_r2017 i.elec_in_sch i.water_in_sch /// 
			i.vpoor_furn i.vpoor_equip i.waste_disposal i.hand_washpractice /// 
			i.soap_handwashing i.mensthygiene i.sani_towels /// 
					b(0).location#c.z_class_size2017 /// 
					b(0).location#b(0).elec_in_sch ///
					b(0).location#b(0).waste_disposal ///
					b(0).location#b(0).mensthygiene ///
					b(0).location#b(0).sani_disposal ///
					b(0).elec_in_sch#c.f_index /// 
					b(0).elec_in_sch#c.class_size2017 ///
					b(0).water_in_sch#b(0).hygiene_edu ///
					b(0).water_in_sch#b(0).mensthygiene ///
					b(0).water_in_sch#b(0).soap_handwashing ///
					b(0).water_in_sch#b(0).sani_disposal ///
					i.waste_disposal#c.log_g_t_r2017 ///
					if (elevel == 2 | elevel == 3 | elevel == 4), ///  
	 family(gaussian) link(identity) ///  
	 eform


************************  GPI


* Primary

*Multivariate regression (Linear Modelling)

mvreg gpi_mean_score gpi_pri_coie_1 = z_distance ib(7).region /// 
			i.location log_G7p_txtbk_r2017 z_class_size2017 log_g_t_r2017 /// 
			i.elec_in_sch i.water_in_sch vpoor_furn vpoor_equip /// 
			waste_disposal hand_washpractice soap_handwashing mensthygiene sani_towels /// 
					b(0).location#c.z_G7p_txtbk_r2017 /// 
					b(0).location#c.z_class_size2017 /// 
					b(0).location#b(0).elec_in_sch ///
					b(0).location#b(0).waste_disposal ///
					b(0).location#b(0).mensthygiene ///
					b(0).location#b(0).sani_disposal ///
					b(0).elec_in_sch#c.f_index /// 
					b(0).elec_in_sch#c.class_size2017 ///
					b(0).water_in_sch#b(0).hygiene_edu ///
					b(0).water_in_sch#b(0).mensthygiene ///
					b(0).water_in_sch#b(0).soap_handwashing ///
					b(0).water_in_sch#b(0).sani_disposal ///
					i.waste_disposal#c.log_g_t_r2017 ///
					if elevel == 1 | elevel == 4


					
					
* Secondary					
					
 * Generalized Linear Modelling (multiple linear regression)
	
 glm gpi_sec_coie_1 ///  	 
			z_distance ib(7).region i.location log_G7p_txtbk_r2017 /// 
			z_class_size2017 log_g_t_r2017 i.elec_in_sch i.water_in_sch /// 
			i.vpoor_furn i.vpoor_equip i.waste_disposal i.hand_washpractice /// 
			i.soap_handwashing i.mensthygiene i.sani_towels /// 
					b(0).location#c.z_G7p_txtbk_r2017 /// 
					b(0).location#c.z_class_size2017 /// 
					b(0).location#b(0).elec_in_sch ///
					b(0).location#b(0).waste_disposal ///
					b(0).location#b(0).mensthygiene ///
					b(0).location#b(0).sani_disposal ///
					b(0).elec_in_sch#c.f_index /// 
					b(0).elec_in_sch#c.class_size2017 ///
					b(0).water_in_sch#b(0).hygiene_edu ///
					b(0).water_in_sch#b(0).mensthygiene ///
					b(0).water_in_sch#b(0).soap_handwashing ///
					b(0).water_in_sch#b(0).sani_disposal ///
					i.waste_disposal#c.log_g_t_r2017 ///
					if (elevel == 1 | elevel == 4), ///  
	 family(gaussian) link(identity) ///  
	 eform					
					