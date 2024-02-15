******************************************************************************
*          					     SAMPLING           			     		 *
*                          			                                         *
******************************************************************************  

* count schools that had enrolment data for both years(ultimatest) by region and elevelx 

table region elevelx, contents(sum ultimatest) row col  

gen test_pri_coie_t1 = 0
replace test_pri_coie_t1 = 1 if pri_coie_t1 <= 0.1 & pri_coie_t1 > 0.0
replace test_pri_coie_t1 = 2 if pri_coie_t1 <= 0.2 & pri_coie_t1 >= 0.1
replace test_pri_coie_t1 = 3 if pri_coie_t1 <= 0.3 & pri_coie_t1 >= 0.2
replace test_pri_coie_t1 = 4 if pri_coie_t1 <= 0.4 & pri_coie_t1 >= 0.3
replace test_pri_coie_t1 = 5 if pri_coie_t1 <= 0.5 & pri_coie_t1 >= 0.4
replace test_pri_coie_t1 = 6 if pri_coie_t1 <= 0.6 & pri_coie_t1 >= 0.5
replace test_pri_coie_t1 = 7 if pri_coie_t1 <= 0.7 & pri_coie_t1 >= 0.6
replace test_pri_coie_t1 = 8 if pri_coie_t1 <= 0.8 & pri_coie_t1 >= 0.7
replace test_pri_coie_t1 = 9 if pri_coie_t1 <= 0.9 & pri_coie_t1 >= 0.8
replace test_pri_coie_t1 = 10 if pri_coie_t1 <= 1.0 & pri_coie_t1 >= 0.9
replace test_pri_coie_t1 = 99 if elevelx == 2 

gen test_sec_coie_t1 = 0
replace test_sec_coie_t1 = 1 if sec_coie_t1 <= 0.1 & sec_coie_t1 > 0.0
replace test_sec_coie_t1 = 2 if sec_coie_t1 <= 0.2 & sec_coie_t1 >= 0.1
replace test_sec_coie_t1 = 3 if sec_coie_t1 <= 0.3 & sec_coie_t1 >= 0.2
replace test_sec_coie_t1 = 4 if sec_coie_t1 <= 0.4 & sec_coie_t1 >= 0.3
replace test_sec_coie_t1 = 5 if sec_coie_t1 <= 0.5 & sec_coie_t1 >= 0.4
replace test_sec_coie_t1 = 6 if sec_coie_t1 <= 0.6 & sec_coie_t1 >= 0.5
replace test_sec_coie_t1 = 7 if sec_coie_t1 <= 0.7 & sec_coie_t1 >= 0.6
replace test_sec_coie_t1 = 8 if sec_coie_t1 <= 0.8 & sec_coie_t1 >= 0.7
replace test_sec_coie_t1 = 9 if sec_coie_t1 <= 0.9 & sec_coie_t1 >= 0.8
replace test_sec_coie_t1 = 10 if sec_coie_t1 <= 1.0 & sec_coie_t1 >= 0.9
replace test_sec_coie_t1 = 99 if elevelx == 1

by elevelx, sort: tabulate test_pri_coie_t1 
by elevelx, sort: tabulate test_sec_coie_t1 


* Keep schools with coie [0,1] only

drop if test_pri_coie_t1 == 0 & elevelx == 1 
drop if test_sec_coie_t1 == 0 & elevelx == 2 

table region elevelx, contents(count test_pri_coie_t1) row col  

by elevelx, sort: tabulate test_pri_coie_t1
by elevelx, sort: tabulate test_sec_coie_t1 

histogram pri_coie_t1, bin(150)
histogram sec_coie_t1, bin(150)


**standardize key indicators to identify outliers that have -3 < zscores > 3

foreach var in pri_coie_t1 sec_coie_t1 {
							gen z_`var' =.
								gen out_`var'= 0
									forvalues i = 1/3 {
										quietly: sum `var' if elevelx == `i'
										replace z_`var' = (`var'-r(mean))/r(sd) if elevelx ==`i'
										replace out_`var' = 1 if z_`var' > -3 & z_`var' < 3
									}
								}

histogram z_pri_coie_t1, bin(150)
histogram z_sec_coie_t1, bin(150)
								
tabulate out_pri_coie_t1 if elevelx == 1 
tabulate out_sec_coie_t1 if elevelx == 2
tabulate out_sec_coie_t1 if elevelx == 3


* Remove schools with outliers (outside of -3 < z < 3), what remains is the sample size

drop if (out_pri_coie_t1 == 0 & (elevelx == 1 | elevelx == 3)) | ///  
		(out_sec_coie_t1 == 0 & (elevelx == 2 | elevelx == 3))


* Only keep original vars to avoid "var already defined" message

keep region debs constituency schoolname school_num level distance founder /// 
location responsestatus open dup_school_num g1m_2018 g2m_2018 g3m_2018 /// 
g4m_2018 g5m_2018 g6m_2018 g7m_2018 g8m_2018 g9m_2018 g10m_2018 g11m_2018 /// 
g12m_2018 g1f_2018 g2f_2018 g3f_2018 g4f_2018 g5f_2018 g6f_2018 g7f_2018 /// 
g8f_2018 g9f_2018 g10f_2018 g11f_2018 g12f_2018 g1t_2018 g2t_2018 g3t_2018 /// 
g4t_2018 g5t_2018 g6t_2018 g7t_2018 g8t_2018 g9t_2018 g10t_2018 g11t_2018 /// 
g12t_2018 repg1m_2018 repg2m_2018 repg3m_2018 repg4m_2018 repg5m_2018 /// 
repg6m_2018 repg7m_2018 repg8m_2018 repg9m_2018 repg10m_2018 repg11m_2018 /// 
repg12m_2018 repg1f_2018 repg2f_2018 repg3f_2018 repg4f_2018 repg5f_2018 /// 
repg6f_2018 repg7f_2018 repg8f_2018 repg9f_2018 repg10f_2018 repg11f_2018 /// 
repg12f_2018 repg1t_2018 repg2t_2018 repg3t_2018 repg4t_2018 repg5t_2018 /// 
repg6t_2018 repg7t_2018 repg8t_2018 repg9t_2018 repg10t_2018 repg11t_2018 /// 
repg12t_2018 dropprem dropg1m_2018 dropg2m_2018 dropg3m_2018 dropg4m_2018 /// 
dropg5m_2018 dropg6m_2018 dropg7m_2018 dropg8m_2018 dropg9m_2018 dropg10m_2018 /// 
dropg11m_2018 dropg12m_2018 droptotalm droppref dropg1f_2018 dropg2f_2018 /// 
dropg3f_2018 dropg4f_2018 dropg5f_2018 dropg6f_2018 dropg7f_2018 dropg8f_2018 ///
 dropg9f_2018 dropg10f_2018 dropg11f_2018 dropg12f_2018 droptotalf droppret ///
 dropg1t_2018 dropg2t_2018 dropg3t_2018 dropg4t_2018 dropg5t_2018 dropg6t_2018 ///
 dropg7t_2018 dropg8t_2018 dropg9t_2018 dropg10t_2018 dropg11t_2018 /// 
 dropg12t_2018 dropgrandt nbsatf_2018 div1f_2018 div2f_2018 div3f_2018 ///
 div4f_2018 nbsatm_2018 div1m_2018 div2m_2018 div3m_2018 div4m_2018 ///
 nbsatt_2018 div1t_2018 div2t_2018 div3t_2018 div4t_2018 cert_preece2018 ///
 cert_pri2018 cert_specialedu2018 dip_basicsec2018 dip_specialedu2018 ///
 advanced_dip2018 bachelor_edu2018 bachelor_other2018 bachelor_specialedu2018 ///
 dip_ece2018 none_qual2018 master2018 unknown_qual2018 blackboards ///
 whiteboards storeroomstable teacherstables staffclasschairs pupilschairs ///
 officeschairs officestables classtables doubleseaterdesks singleseaterdesks ///
 shelves cupboards lockers beds matresses labstools dinebenches dinetables ///
 dinechairs typewriters projectors computers printers music_instrmnts vcr ///
 tv sewmachines photocopiers sciencekits dup_machines radio cookers fridge ///
 vehicles bicycles braillers audiometers write_frames other_equip ///
 temp_classrm2018 incomp_classrm2018 perm_classrm2018 good_classrm2018 ///
 fair_classrm2018 poor_classrm2018 count_classrm2018 classrmcount ///
 hygiene_edu hand_washpractice soap_handwashing waste_disposal mensthygiene ///
 sani_towels sani_disposal wash_comm wash_wkplan tpit_boys ppitwork_boys ///
 pflushwork_boys pflushnotwork_boys ppitnotwork_boys tpit_fstaff ///
 ppitwork_fstaff pflushwork_fstaff pflushnotwork_fstaff ppitnotwork_fstaff ///
 tpit_girls ppitwork_girls pflushwork_girls pflushnotwork_girls ///
 ppitnotwork_girls tpit_mstaff ppitwork_mstaff pflushwork_mstaff ///
 pflushnotwork_mstaff ppitnotwork_mstaff tpit_staffh ppitwork_staffh ///
 pflushwork_staffh pflushnotwork_staffh ppitnotwork_staffh g1books2018 ///
 g2books2018 g3books2018 g4books2018 g5books2018 g6books2018 g7books2018 ///
 g8books2018 g9books2018 g10books2018 g11books2018 g12books2018 txtbks2018 ///
 water electricity communication multishift orphans_pri orphans_sec ///
 readmitted_pri readmitted_sec prem_2017 g1m_2017 g2m_2017 g3m_2017 g4m_2017 ///
 g5m_2017 g6m_2017 g7m_2017 g8m_2017 g9m_2017 g10m_2017 g11m_2017 g12m_2017 ///
 totalm_2017 pref_2017 g1f_2017 g2f_2017 g3f_2017 g4f_2017 g5f_2017 g6f_2017 ///
 g7f_2017 g8f_2017 g9f_2017 g10f_2017 g11f_2017 g12f_2017 totalf_2017 ///
 pret_2017 g1t_2017 g2t_2017 g3t_2017 g4t_2017 g5t_2017 g6t_2017 g7t_2017 ///
 g8t_2017 g9t_2017 g10t_2017 g11t_2017 g12t_2017 totalt_2017 g1books2017 ///
 g2books2017 g3books2017 g4books2017 g5books2017 g6books2017 g7books2017 ///
 g8books2017 g9books2017 g10books2017 g11books2017 g12books2017 txtbks2017 ///
 temp_classrm2017 incomp_classrm2017 perm_classrm2017 good_classrm2017 ///
 fair_classrm2017 poor_classrm2017 count_classrm2017 cert_preece2017 ///
 cert_pri2017 cert_specialedu2017 dip_basicsec2017 dip_specialedu2017 ///
 advanced_dip2017 bachelor_edu2017 bachelor_other2017 bachelor_specialedu2017 ///
 dip_ece2017 none_qual2017 master2017 unknown_qual2017 ecznumber xregion ///
 xfounder xlocation z_blackboards z_whiteboards z_storeroomstable /// 
 z_teacherstables z_staffclasschairs z_pupilschairs z_officeschairs /// 
 z_officestables z_classtables z_doubleseaterdesks z_singleseaterdesks /// 
 z_shelves z_cupboards z_lockers z_beds z_matresses z_labstools f_index ///
 f_tert ft f_quint fq pdr2018 pdr2017 pcr2018 pcr2017 plr2018 plr2017 pbr2018 ///
 pbr2017 lockers_t cupboards_t teacherstables_t staffclasschairs_t ///
 z_blackboards z_whiteboards z_storeroomstable z_teacherstables ///
 z_staffclasschairs z_pupilschairs z_officeschairs z_officestables ///
 z_classtables z_doubleseaterdesks z_singleseaterdesks z_shelves z_cupboards ///
 z_lockers z_beds z_matresses z_labstools e_index e_tert et e_quint eq ///
 pdr2018 pdr2017 pcr2018 pcr2017 plr2018 plr2017 pbr2018 pbr2017 lockers_t ///
 cupboards_t teacherstables_t staffclasschairs_t z_typewriters z_projectors ///
 z_computers z_printers z_music_instrmnts z_vcr z_tv z_sewmachines ///
 z_photocopiers z_sciencekits z_dup_machines z_radio z_cookers z_fridge ///
 z_vehicles z_bicycles z_braillers z_write_frames z_other_equip e_index ///
 e_tert et e_quint equip varlist_t typewriters_t projectors_t computers_t ///
 printers_t music_instrmnts_t vcr_t tv_t sewmachines_t photocopiers_t ///
 sciencekits_t dup_machines_t radio_t cookers_t fridge_t vehicles_t ///
 bicycles_t braillers_t write_frames_t other_equip_t
 
 label drop _all
 
count
 
****** Rerun all relevant do files with new sample 

do "${Do}4_lists1"
do "${Do}5_genvar"


*Schools

do "${Do}9_flowrates1"

save "$Data_output\SampleFlowRates1.dta", replace

do "${Do}13_rcm1"

do "${Do}17_lists2a"

do "${Do}19_svrate1"

do "${Do}23_coie1"

count



*Create sampling weights to correct for unrepresentativeness in the sample 

tabulate region elevelx, matcell(schsamp_dist) /* create a matrix for school distribution numbers*/

mata: st_matrix("schsamp_tdist", (st_matrix("schsamp_dist") /// /* create a matrix for school distribution percentages*/  
:/ colsum(rowsum(st_matrix("schsamp_dist")))))

mata: st_matrix("schsamp_rowdist", (st_matrix("schsamp_dist") /// /* create a matrix for school distribution by row percentages*/  
:/ rowsum(st_matrix("schsamp_dist"))))

mata: st_matrix("schsamp_coldist", (st_matrix("schsamp_dist") /// /* create a matrix for school distribution by column percentages*/  
:/ colsum(st_matrix("schsamp_dist"))))

*mat list schsamp_tdist 
mat list schsamp_rowdist 
mat list schsamp_coldist 	


* hardcode school population % distribution by row and column

mat schpop_rowdist = (.58778036,  .08971384,  .3225058 /// /*copy schpop_rowdist matrix*/
					 \ .55239787,   .09325044,  .35435169 ///
					 \ .64248252,   .08653846,  .27097902 ///
					 \ .51452282,   .06777317,  .41770401 ///
					 \ .50000000,  	.0967033,   .4032967 ///
					 \ .76092545,   .1066838,   .13239075 ///
					 \ .6459276,    .13914027,  .21493213 ///
					 \ .75757576,   .12121212,  .12121212 ///
					 \ .48592116,   .05390185,  .46017699 ///
					 \ .60346487,   .04619827,  .35033686)			  
				  
				  
mat schpop_coldist = (.12432521,	.1286031,	.13246506	/// /*copy schpop_coldist matrix*/
						\ .10175037,	.11640798,	.12674714 ///
						\ .12023556,	.1097561,	.09847522 ///
						\ .06085392,	.05432373,	.09593393 ///
						\ .07443154,	.09756098,	.11658196 ///
						\ .09684279,	.09201774,	.03271919 ///
						\ .09340749,	.13636364,	.06035578 ///
						\ .1267790,		.13747228,	.03939009 ///
						\ .09880582,	.07427938,	.18170267 ///
						\ .1025683,		.05321508,	.11562897)

					

mat list schpop_rowdist
mat list schpop_coldist


*Weights formula for each school based on province and level of education

gen weights = .

replace weights 	=(schpop_rowdist[1,1] * schpop_coldist[1,1])/ ///
					 (schsamp_rowdist[1,1] * schsamp_coldist[1,1]) /// 
					if xregion == 1 & elevelx == 1
replace weights 	= (schpop_rowdist[1,2] * schpop_coldist[1,2]) ///
					/ (schsamp_rowdist[1,2] * schsamp_coldist[1,2]) /// 
					if xregion == 1 & elevelx == 2		
replace weights 	= (schpop_rowdist[1,3] * schpop_coldist[1,3]) ///
					/ (schsamp_rowdist[1,3] * schsamp_coldist[1,3]) /// 
					if xregion == 1 & elevelx == 3	
					
replace weights 	= (schpop_rowdist[2,1] * schpop_coldist[2,1]) ///
					/ (schsamp_rowdist[2,1] * schsamp_coldist[2,1]) /// 
					if xregion == 2 & elevelx == 1
replace weights 	= (schpop_rowdist[2,2] * schpop_coldist[2,2]) ///
					/ (schsamp_rowdist[2,2] * schsamp_coldist[2,2]) /// 
					if xregion == 2 & elevelx == 2		
replace weights 	= (schpop_rowdist[2,3] * schpop_coldist[2,3]) ///
					/ (schsamp_rowdist[2,3] * schsamp_coldist[2,3]) /// 
					if xregion == 2 & elevelx == 3
					
replace weights 	= (schpop_rowdist[3,1] * schpop_coldist[3,1]) ///
					/ (schsamp_rowdist[3,1] * schsamp_coldist[3,1]) /// 
					if xregion == 3 & elevelx == 1
replace weights 	= (schpop_rowdist[3,2] * schpop_coldist[3,2]) ///
					/ (schsamp_rowdist[3,2] * schsamp_coldist[3,2]) /// 
					if xregion == 3 & elevelx == 2		
replace weights 	= (schpop_rowdist[3,3] * schpop_coldist[3,3]) ///
					/ (schsamp_rowdist[3,3] * schsamp_coldist[3,3]) /// 
					if xregion == 3 & elevelx == 3
					
replace weights 	= (schpop_rowdist[4,1] * schpop_coldist[4,1]) ///
					/ (schsamp_rowdist[4,1] * schsamp_coldist[4,1]) /// 
					if xregion == 4 & elevelx == 1
replace weights 	= (schpop_rowdist[4,2] * schpop_coldist[4,2]) ///
					/ (schsamp_rowdist[4,2] * schsamp_coldist[4,2]) /// 
					if xregion == 4 & elevelx == 2		
replace weights 	= (schpop_rowdist[4,3] * schpop_coldist[4,3]) ///
					/ (schsamp_rowdist[4,3] * schsamp_coldist[4,3]) /// 
					if xregion == 4 & elevelx == 3
					
replace weights 	= (schpop_rowdist[5,1] * schpop_coldist[5,1]) ///
					/ (schsamp_rowdist[5,1] * schsamp_coldist[5,1]) /// 
					if xregion == 5 & elevelx == 1
replace weights 	= (schpop_rowdist[5,2] * schpop_coldist[5,2]) ///
					/ (schsamp_rowdist[5,2] * schsamp_coldist[5,2]) /// 
					if xregion == 5 & elevelx == 2		
replace weights 	= (schpop_rowdist[5,3] * schpop_coldist[5,3]) ///
					/ (schsamp_rowdist[5,3] * schsamp_coldist[5,3]) /// 
					if xregion == 5 & elevelx == 3					
					
replace weights 	= (schpop_rowdist[6,1] * schpop_coldist[6,1]) ///
					/ (schsamp_rowdist[6,1] * schsamp_coldist[6,1]) /// 
					if xregion == 6 & elevelx == 1
replace weights 	= (schpop_rowdist[6,2] * schpop_coldist[6,2]) ///
					/ (schsamp_rowdist[6,2] * schsamp_coldist[6,2]) /// 
					if xregion == 6 & elevelx == 2		
replace weights 	= (schpop_rowdist[6,3] * schpop_coldist[6,3]) ///
					/ (schsamp_rowdist[6,3] * schsamp_coldist[6,3]) /// 
					if xregion == 6 & elevelx == 3					

replace weights 	= (schpop_rowdist[7,1] * schpop_coldist[7,1]) ///
					/ (schsamp_rowdist[7,1] * schsamp_coldist[7,1]) /// 
					if xregion == 7 & elevelx == 1
replace weights 	= (schpop_rowdist[7,2] * schpop_coldist[7,2]) ///
					/ (schsamp_rowdist[7,2] * schsamp_coldist[7,2]) /// 
					if xregion == 7 & elevelx == 2		
replace weights 	= (schpop_rowdist[7,3] * schpop_coldist[7,3]) ///
					/ (schsamp_rowdist[7,3] * schsamp_coldist[7,3]) /// 
					if xregion == 7 & elevelx == 3					
					
replace weights 	= (schpop_rowdist[8,1] * schpop_coldist[8,1]) ///
					/ (schsamp_rowdist[8,1] * schsamp_coldist[8,1]) /// 
					if xregion == 8 & elevelx == 1
replace weights 	= (schpop_rowdist[8,2] * schpop_coldist[8,2]) ///
					/ (schsamp_rowdist[8,2] * schsamp_coldist[8,2]) /// 
					if xregion == 8 & elevelx == 2		
replace weights 	= (schpop_rowdist[8,3] * schpop_coldist[8,3]) ///
					/ (schsamp_rowdist[8,3] * schsamp_coldist[8,3]) /// 
					if xregion == 8 & elevelx == 3					

replace weights 	= (schpop_rowdist[9,1] * schpop_coldist[9,1]) ///
					/ (schsamp_rowdist[9,1] * schsamp_coldist[9,1]) /// 
					if xregion == 9 & elevelx == 1
replace weights 	= (schpop_rowdist[9,2] * schpop_coldist[9,2]) ///
					/ (schsamp_rowdist[9,2] * schsamp_coldist[9,2]) /// 
					if xregion == 9 & elevelx == 2		
replace weights 	= (schpop_rowdist[9,3] * schpop_coldist[9,3]) ///
					/ (schsamp_rowdist[9,3] * schsamp_coldist[9,3]) /// 
					if xregion == 9 & elevelx == 3
					
replace weights 	= (schpop_rowdist[10,1] * schpop_coldist[10,1]) ///
					/ (schsamp_rowdist[10,1] * schsamp_coldist[10,1]) /// 
					if xregion == 10 & elevelx == 1
replace weights 	= (schpop_rowdist[10,2] * schpop_coldist[10,2]) ///
					/ (schsamp_rowdist[10,2] * schsamp_coldist[10,2]) /// 
					if xregion == 10 & elevelx == 2		
replace weights 	= (schpop_rowdist[10,3] * schpop_coldist[10,3]) ///
					/ (schsamp_rowdist[10,3] * schsamp_coldist[10,3]) /// 
					if xregion == 10 & elevelx == 3

summarize weights



* apply weights to outcome vars
gen 			w_pri_coie_t1 = pri_coie_t1 * weights
replace 		w_pri_coie_t1 = pri_coie_t1 if weights == 0

gen 			w_sec_coie_t1 = sec_coie_t1 * weights
replace 		w_sec_coie_t1 = sec_coie_t1 if weights == 0

gen 			w_mean_scoret = mean_scoret * weights
replace 		w_mean_scoret = mean_scoret if weights == 0




gen 			w_gpi_pri_coie_1 = gpi_pri_coie_1 * weights
replace 		w_gpi_pri_coie_1 = gpi_pri_coie_1 if weights == 0

gen 			w_gpi_sec_coie_1 = gpi_sec_coie_1 * weights
replace 		w_gpi_sec_coie_1 = gpi_sec_coie_1 if weights == 0

gen 			w_gpi_mean_score = gpi_mean_score * weights
replace 		w_gpi_mean_score = gpi_mean_score if weights == 0



save "$Data_output\Sample1.dta", replace



*Districts

use "$Data_output\SampleFlowRates1.dta"

do "${Do}10_flowrates2"

do "${Do}14_rcm2"	

do "${Do}18_lists2b"

do "${Do}20_svrate2"

do "${Do}24_coie2"

save "$Data_output\Sample2.dta", replace



*Province

use "$Data_output\SampleFlowRates1.dta"

do "${Do}11_flowrates3"

do "${Do}15_rcm3"	

do "${Do}18_lists2b"

do "${Do}21_svrate3"

do "${Do}25_coie3"

save "$Data_output\Sample3.dta", replace




*National

use "$Data_output\SampleFlowRates1.dta"

do "${Do}12_flowrates4"

do "${Do}16_rcm4"

do "${Do}18_lists2b"

do "${Do}22_svrate4"

do "${Do}26_coie4"

save "$Data_output\Sample4.dta", replace


 






