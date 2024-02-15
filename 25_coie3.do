******************************************************************************
*   Calculate Coefficient of Internal Efficiency (CoIE) for each province    *
*                      					      			                     *
******************************************************************************      


*Pupils retained in the system by end of primary education

****** boys

gen ret_mpri = enrolees_gm1_2023 + enrolees_gm2_2023 + /// 
			   enrolees_gm3_2023 + enrolees_gm4_2023 + ///
			   enrolees_gm5_2023 + enrolees_gm6_2023 + ///
			   enrolees_gm7_2023

gen retr_mpri = ret_mpri/mcohort_size
label var retr_mpri "Retention rate for male pupils after 7 years of primary education"


****** girls

gen ret_fpri = enrolees_gf1_2023 + enrolees_gf2_2023 + /// 
			   enrolees_gf3_2023 + enrolees_gf4_2023 + ///
			   enrolees_gf5_2023 + enrolees_gf6_2023 + ///
			   enrolees_gf7_2023

gen retr_fpri = ret_fpri/fcohort_size
label var retr_fpri "Retention rate for female pupils after 7 years of primary education"


****** boys and girls

gen ret_tpri = enrolees_gt1_2023 + enrolees_gt2_2023 + /// 
			   enrolees_gt3_2023 + enrolees_gt4_2023 + ///
			   enrolees_gt5_2023 + enrolees_gt6_2023 + ///
			   enrolees_gt7_2023

gen retr_tpri = ret_tpri/tcohort_size
label var retr_tpri "Retention rate for male & female pupils after 7 years of primary education"



*Pupils retained in the system by end of secondary education (after 12 years of education)

****** boys

gen ret_mprisec = 		enrolees_gm2_2028 + enrolees_gm3_2028 + /// 
						enrolees_gm4_2028 + enrolees_gm5_2028 + /// 
						enrolees_gm6_2028 + enrolees_gm7_2028 + /// 
						enrolees_gm8_2028 + enrolees_gm9_2028 + /// 
						enrolees_gm10_2028 + enrolees_gm11_2028 + /// 
						enrolees_gm12_2028 

gen retr_mprisec = 		ret_mprisec/mcohort_size
label var retr_mprisec 	"Retention rate for male pupils after 12 years of education"


****** girls

gen ret_fprisec = 		enrolees_gf2_2028 + enrolees_gf3_2028 + /// 
						enrolees_gf4_2028 + enrolees_gf5_2028 + /// 
						enrolees_gf6_2028 + enrolees_gf7_2028 + /// 
						enrolees_gf8_2028 + enrolees_gf9_2028 + /// 
						enrolees_gf10_2028 + enrolees_gf11_2028 + /// 
						enrolees_gf12_2028 

gen retr_fprisec = 		ret_fprisec/fcohort_size
label var retr_fprisec  "Retention rate for female pupils after 12 years of education"


****** boys and girls

gen ret_tprisec = 		enrolees_gt2_2028 + enrolees_gt3_2028 + /// 
						enrolees_gt4_2028 + enrolees_gt5_2028 + /// 
						enrolees_gt6_2028 + enrolees_gt7_2028 + /// 
						enrolees_gt8_2028 + enrolees_gt9_2028 + /// 
						enrolees_gt10_2028 + enrolees_gt11_2028 + /// 
						enrolees_gt12_2028 

gen retr_tprisec = 		ret_tprisec/tcohort_size
label var retr_tprisec "Retention rate for male & female pupils after 12 years of education"



*Pupils retained in the system from G8 to G12 (5 yrs of secondary education)

****** boys

gen ret_msec = 		enrolees_gm8_2028 + enrolees_gm9_2028 + ///
					enrolees_gm10_2028 + enrolees_gm11_2028 + /// 
					enrolees_gm12_2028

gen retr_msec = 	ret_msec/enrolees_gm8_2024
label var retr_msec "Retention rate for male pupils after 5 years of secondary education"


****** girls

gen ret_fsec = 		enrolees_gf8_2028 + enrolees_gf9_2028 + ///
					enrolees_gf10_2028 + enrolees_gf11_2028 + /// 
					enrolees_gf12_2028

gen retr_fsec = ret_fsec/enrolees_gf8_2024
label var retr_fsec "Retention rate for female pupils after 5 years of secondary education"


****** boys and girls

gen ret_tsec = 		enrolees_gt8_2028 + enrolees_gt9_2028 + ///
					enrolees_gt10_2028 + enrolees_gt11_2028 + /// 
					enrolees_gt12_2028

gen retr_tsec = ret_tsec/enrolees_gt8_2024
label var retr_tsec "Retention rate for male & female pupils after 5 years of secondary education"


****** GPI (retention rates)

gen gpi_retr_pri = retr_fpri/retr_mpri
gen gpi_retr_sec = retr_fsec/retr_msec
gen gpi_retr_prisec = retr_fprisec/retr_mprisec

label var gpi_retr_pri "GPI for retention rate after 7 years of primary education"
label var gpi_retr_sec "GPI for retention rate after 5 years of secondary education"
label var gpi_retr_prisec "GPI for retention rate after 12 years (G1-12) of education"


*Drop out rates before completing primary and secondary education

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
					
*Cohort graduation rate at end of primary and secondary 

* Primary
egen grads_gm7 = rowtotal ($prom_m8list_reg)
egen grads_gf7 = rowtotal ($prom_f8list_reg)
egen grads_gt7 = rowtotal ($prom_t8list_reg)

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
egen grads_gm12 = rowtotal ($grad_m12list_reg)
egen grads_gf12 = rowtotal ($grad_f12list_reg)
egen grads_gt12 = rowtotal ($grad_t12list_reg)

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

gen pupil_yrs_grad7m = total_enrol_m1list + total_enrol_m2list + ///
					   total_enrol_m3list + total_enrol_m4list + ///
					   total_enrol_m5list + total_enrol_m6list + /// 
					   total_enrol_m7list
					   
gen pupil_yrs_grad7f = total_enrol_f1list + total_enrol_f2list + ///
					   total_enrol_f3list + total_enrol_f4list + ///
					   total_enrol_f5list + total_enrol_f6list + /// 
					   total_enrol_f7list
					   
gen pupil_yrs_grad7t = total_enrol_t1list + total_enrol_t2list + ///
					   total_enrol_t3list + total_enrol_t4list + ///
					   total_enrol_t5list + total_enrol_t6list + /// 
					   total_enrol_t7list


						   
gen pupil_yrs_grad12m = total_enrol_m1list + total_enrol_m2list + ///
						total_enrol_m3list + total_enrol_m4list + ///
					    total_enrol_m5list + total_enrol_m6list + /// 
					    total_enrol_m7list + total_enrol_m8list + /// 
						total_enrol_m9list + total_enrol_m10list + /// 
						total_enrol_m11list + total_enrol_m12list 
						
gen pupil_yrs_grad12f = total_enrol_f1list + total_enrol_f2list + ///
						total_enrol_f3list + total_enrol_f4list + ///
					    total_enrol_f5list + total_enrol_f6list + /// 
					    total_enrol_f7list + total_enrol_f8list + /// 
						total_enrol_f9list + total_enrol_f10list + /// 
						total_enrol_f11list + total_enrol_f12list 		
						
gen pupil_yrs_grad12t = total_enrol_t1list + total_enrol_t2list + ///
						total_enrol_t3list + total_enrol_t4list + ///
					    total_enrol_t5list + total_enrol_t6list + /// 
					    total_enrol_t7list + total_enrol_t8list + /// 
						total_enrol_t9list + total_enrol_t10list + /// 
						total_enrol_t11list + total_enrol_t12list 						   
  		   				  
label var pupil_yrs_grad7m "Total pupil-years studied by male cohort to complete primary"
label var pupil_yrs_grad7f "Total pupil-years studied by female cohort to complete primary"
label var pupil_yrs_grad7t "Total pupil-years studied by male & female cohort to complete primary"
				  
label var pupil_yrs_grad12m "Total pupil-years studied by male cohort to complete secondary"
label var pupil_yrs_grad12f "Total pupil-years studied by female cohort to complete secondary"
label var pupil_yrs_grad12t "Total pupil-years studied by male & female cohort to complete secondary"				  


				  
* Average no. of pupil-years invested per Grade graduate

gen py_grad7_m = pupil_yrs_grad7m/grads_gm7 				
gen py_grad7_f = pupil_yrs_grad7f/grads_gf7 				
gen py_grad7_t = pupil_yrs_grad7t/grads_gt7 				

gen py_grad12_m = pupil_yrs_grad12m/grads_gm12 			
gen py_grad12_f = pupil_yrs_grad12f/grads_gf12 							  
gen py_grad12_t = pupil_yrs_grad12t/grads_gt12 	

gen gpi_py_grad7 = py_grad7_f/py_grad7_m 	
gen gpi_py_grad12 = py_grad12_f/py_grad12_m	

label var py_grad7_m "Average no. of pupil-years invested per grade 7 male graduate"
label var py_grad7_f "Average no. of pupil-years invested per grade 7 female graduate"
label var py_grad7_t "Average no. of pupil-years invested per grade 7 male & female graduate"

label var py_grad12_m "Average no. of pupil-years invested per grade 7 male graduate"
label var py_grad12_f "Average no. of pupil-years invested per grade 7 female graduate"
label var py_grad12_t "Average no. of pupil-years invested per grade 7 male & female graduate"


* Coefficient of internal efficiency and GPI


gen pri_coie_m3 = 7/py_grad7_m 			
			
gen sec_coie_m3 = 12/py_grad12_m 			

gen pri_coie_f3 = 7/py_grad7_f 						
gen sec_coie_f3 = 12/py_grad12_f 			

gen pri_coie_t3 = 7/py_grad7_t 						
gen sec_coie_t3 = 12/py_grad12_t 			


gen gpi_pri_coie_3 = pri_coie_f3/pri_coie_m3
gen gpi_sec_coie_3 = sec_coie_f3/sec_coie_m3

label var pri_coie_m3 "Coefficient of internal efficiency for male pupils in primary"
label var pri_coie_f3 "Coefficient of internal efficiency for female pupils in primary"
label var pri_coie_t3 "Coefficient of internal efficiency for male & female pupils in primary"
label var gpi_pri_coie_3 "GPI for CoIE in primary"

label var sec_coie_m3 "Coefficient of internal efficiency for male pupils in secondary"
label var sec_coie_f3 "Coefficient of internal efficiency for female pupils in secondary"
label var sec_coie_t3 "Coefficient of internal efficiency for male & female pupils in secondary"
label var gpi_sec_coie_3 "GPI for CoIE in secondary"



*Exams results **********

*male **

gen mean_scorem = 		((div1m_2018*90) + (div2m_2018*70) + ///
						(div3m_2018*50) + (div4m_2018*30))/nbsatm_2018


*female **

gen mean_scoref = 		((div1f_2018*90) + (div2f_2018*70) + ///
						(div3f_2018*50) + (div4f_2018*30))/nbsatf_2018


*male + female **

gen mean_scoret = 		((div1t_2018*90) + (div2t_2018*70) + ///
						(div3t_2018*50) + (div4t_2018*30))/nbsatt_2018


gen gpi_mean_score = mean_scoref/mean_scorem


label var mean_scorem "Mean Score for boys"
label var mean_scoref "Mean Score for girls"
label var mean_scoret "Mean Score for boys & girls"
label var gpi_mean_score "GPI for mean score"




* Some tables for review

*promotion rate
list region prm1_2 prm2_3 prm3_4 prm4_5 prm5_6 prm6_7 prm7_8 prm8_9 prm9_10 /// 
prm10_11 prm11_12 prm12_grad

list region prf1_2 prf2_3 prf3_4 prf4_5 prf5_6 prf6_7 prf7_8 prf8_9 prf9_10 /// 
prf10_11 prf11_12 prf12_grad

list region prt1_2 prt2_3 prt3_4 prt4_5 prt5_6 prt6_7 prt7_8 prt8_9 prt9_10 /// 
prt10_11 prt11_12 prt12_grad

*repetition rate
list region rrm1_2 rrm2_3 rrm3_4 rrm4_5 rrm5_6 rrm6_7 rrm7_8 rrm8_9 rrm9_10 /// 
rrm10_11 rrm11_12 rrm12_grad

list region rrf1_2 rrf2_3 rrf3_4 rrf4_5 rrf5_6 rrf6_7 rrf7_8 rrf8_9 rrf9_10 /// 
rrf10_11 rrf11_12 rrf12_grad

list region rrt1_2 rrt2_3 rrt3_4 rrt4_5 rrt5_6 rrt6_7 rrt7_8 rrt8_9 rrt9_10 /// 
rrt10_11 rrt11_12 rrt12_grad

*dropout rate 
list region drm1_2 drm2_3 drm3_4 drm4_5 drm5_6 drm6_7 drm7_8 drm8_9 drm9_10 /// 
drm10_11 drm11_12 drm12_grad

list region drf1_2 drf2_3 drf3_4 drf4_5 drf5_6 drf6_7 drf7_8 drf8_9 drf9_10 /// 
drf10_11 drf11_12 drf12_grad

list region drt1_2 drt2_3 drt3_4 drt4_5 drt5_6 drt6_7 drt7_8 drt8_9 drt9_10 /// 
drt10_11 drt11_12 drt12_grad



*survival rate
list region regsrm1_7 regsrm8_12 regsrm1_12
list region regsrf1_7 regsrf8_12 regsrf1_12
list region regsrt1_7 regsrt8_12 regsrt1_12

*retention rate
list region retr_mpri retr_mprisec
list region retr_fpri retr_fprisec
list region retr_tpri retr_tprisec

*dropout rate
list region dr_mpri dr_mprisec 
list region dr_fpri dr_fprisec 
list region dr_tpri dr_tprisec

*graduate rate, pupil-year graduates and coie
list region grads_gm7 grads_gm12 gradr_gm7 gradr_gm12 pupil_yrs_grad7m /// 
pupil_yrs_grad12m py_grad7_m py_grad12_m pri_coie_m3 sec_coie_m3

list region grads_gf7 grads_gf12 gradr_gf7 gradr_gf12 pupil_yrs_grad7f /// 
pupil_yrs_grad12f py_grad7_f py_grad12_f pri_coie_f3 sec_coie_f3

list region grads_gt7 grads_gt12 gradr_gt7 gradr_gt12 pupil_yrs_grad7t /// 
pupil_yrs_grad12t py_grad7_t py_grad12_t pri_coie_t3 sec_coie_t3

*exams mean score 
list region mean_scorem mean_scoref mean_scoret

*gpi tables

*promotion rate
list region gpi_pr1_2 gpi_pr2_3 gpi_pr3_4 gpi_pr4_5 gpi_pr5_6 gpi_pr6_7 /// 
gpi_pr7_8 gpi_pr8_9 gpi_pr9_10 gpi_pr10_11 gpi_pr11_12 gpi_pr12_grad

*repetition rate
list region gpi_rr1_2 gpi_rr2_3 gpi_rr3_4 gpi_rr4_5 gpi_rr5_6 gpi_rr6_7 /// 
gpi_rr7_8 gpi_rr8_9 gpi_rr9_10 gpi_rr10_11 gpi_rr11_12 gpi_rr12_grad


*dropout rate 
list region gpi_dr1_2 gpi_dr2_3 gpi_dr3_4 gpi_dr4_5 gpi_dr5_6 gpi_dr6_7 /// 
gpi_dr7_8 gpi_dr8_9 gpi_dr9_10 gpi_dr10_11 gpi_dr11_12 gpi_dr12_grad


*survival rate
list region reggpi_sr1_7 reggpi_sr8_12 reggpi_sr1_12

*retention rate
list region gpi_retr_pri gpi_retr_prisec

*dropout rate
list region gpi_dr_pri gpi_dr_prisec 

*graduate rate, pupil-year per graduate and coie
list region gpi_gradr_g7 gpi_gradr_g12 gpi_py_grad7 gpi_py_grad12 ///
gpi_pri_coie_3 gpi_sec_coie_3 gpi_mean_score
