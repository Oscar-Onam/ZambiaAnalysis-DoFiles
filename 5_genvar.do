******************************************************************************
*                     Generate vars & clean up                          	 *
*                          			                                         *
******************************************************************************      


* Student numbers ******************************************************

egen malstud_t2018 = rowtotal($allgmlist2018)
label var malstud_t2018 "Number of male pupils 2018"

egen femstud_t2018 = rowtotal($allgflist2018)
label var femstud_t2018 "Number of female pupils 2018"

egen stud_t2018 = rowtotal($allgtlist2018)
label var stud_t2018 "Total number of pupils 2018"

egen primalstud_t2018 = rowtotal($pgmlist2018)
label var primalstud_t2018 "Number of male pupils primary 2018"

egen prifemstud_t2018 = rowtotal($pgflist2018)
label var prifemstud_t2018 "Number of female pupils primary 2018"

egen pristud_t2018 = rowtotal($pgtlist2018)
label var pristud_t2018 "Total number of pupils for primary 2018"

egen secmalstud_t2018 = rowtotal($sgmlist2018)
label var secmalstud_t2018 "Number of male pupils primary 2018"

egen secfemstud_t2018 = rowtotal($sgflist2018)
label var secfemstud_t2018 "Number of female pupils primary 2018"

egen secstud_t2018 = rowtotal($sgtlist2018)
label var secstud_t2018 "Total number of pupils for primary 2018"



egen malstud_t2017 = rowtotal($allgmlist2017)
label var malstud_t2017 "Number of male pupils 2017"

egen femstud_t2017 = rowtotal($allgflist2017)
label var femstud_t2017 "Number of female pupils 2017"

egen stud_t2017 = rowtotal($allgtlist2017)
label var stud_t2017 "Total number of pupils 2017"

egen primalstud_t2017 = rowtotal($pgmlist2017)
label var primalstud_t2017 "Number of male pupils primary 2017"

egen prifemstud_t2017 = rowtotal($pgflist2017)
label var prifemstud_t2017 "Number of female pupils primary 2017"

egen pristud_t2017 = rowtotal($pgtlist2017)
label var pristud_t2017 "Total number of pupils for primary 2017"

egen secmalstud_t2017 = rowtotal($sgmlist2017)
label var secmalstud_t2017 "Number of male pupils primary 2017"

egen secfemstud_t2017 = rowtotal($sgflist2017)
label var secfemstud_t2017 "Number of female pupils primary 2017"

egen secstud_t2017 = rowtotal($sgtlist2017)
label var secstud_t2017 "Total number of pupils for primary 2017"


* clean up level of education ***********************************

gen str e_level=""
replace e_level="Primary" if level=="Primary"
replace e_level="Community" if level=="Community"
replace e_level="Secondary (Technical)" if level=="Secondary (Technical)"
replace e_level="Secondary (Non-Technical)" if level=="Secondary (Non-Technical)"

replace e_level="Primary" if level=="" & pristud_t2018>0 & secstud_t2018==0 ///

replace e_level = "Primary" if /// 
(level!="Primary" & level!="Community" & pristud_t2018>0 & secstud_t2018==0) 

replace e_level = "Secondary (Non-Technical)" if ///
(level=="" & pristud_t2018==0 & secstud_t2018>0)

replace e_level = "Secondary (Non-Technical)" if /// 
(level != "Secondary (Non-Technical)" & level != "Secondary (Technical)" & ///
pristud_t2018==0 & secstud_t2018>0) 

replace e_level = "Primary & Secondary" if (pristud_t2018>0 & secstud_t2018>0)



* label level of education ***********************************
gen elevel=0 
replace elevel=1 if e_level=="Primary"
replace elevel=1 if e_level=="Community"
replace elevel=2 if e_level=="Secondary (Non-Technical)"
replace elevel=3 if e_level=="Secondary (Technical)"
replace elevel=4 if e_level=="Primary & Secondary"
label var elevel "Education level"
label define lb_elevel 1 "Primary" 2 "Secondary (Non-Technical)" 3 "Secondary (Technical)" 4 "Primary & Secondary"
label value elevel lb_elevel

* Merge Secondary (Technical) and Secondary (Non-Technical)
gen elevelx = 0 
replace elevelx = 1 if elevel == 1
replace elevelx = 2 if elevel == 2
replace elevelx = 2 if elevel == 3
replace elevelx = 3 if elevel == 4

label var elevelx "Education level adjusted"
label define lb_elevelx 1 "Primary" 2 "Secondary" 3 "Primary & Secondary"
label value elevelx lb_elevelx

* Merge Secondary (Technical) and Secondary (Non-Technical) & schools with G1 to G12
gen elevelxx = 0 
replace elevelxx = 1 if elevel == 1
replace elevelxx = 2 if elevel == 2
replace elevelxx = 2 if elevel == 3
replace elevelxx = 2 if elevel == 4

label var elevelxx "Education level adjusted again"
label define lb_elevelxx 1 "Primary" 2 "Secondary" 
label value elevelxx lb_elevelxx

* Summary of school population*******************************************
gen open_sch = 0
replace open_sch = 1 if open == "Yes" 

tabulate region elevelx, matcell(schpop_dist), if open_sch == 1  /* create a matrix for operational school distribution numbers*/

mata: st_matrix("schpop_tdist", (st_matrix("schpop_dist") /// /* create a matrix for school distribution percentages*/  
:/ colsum(rowsum(st_matrix("schpop_dist")))))


mata: st_matrix("schpop_rowdist", (st_matrix("schpop_dist") /// /* create a matrix for school distribution by row percentages*/  
:/ rowsum(st_matrix("schpop_dist"))))

mata: st_matrix("schpop_coldist", (st_matrix("schpop_dist") /// /* create a matrix for school distribution by column percentages*/  
:/ colsum(st_matrix("schpop_dist"))))

mat list schpop_tdist 
mat list schpop_rowdist 
mat list schpop_coldist 

* Class size **********************************************************
gen class_size2018 = stud_t2018/count_classrm2018
label var class_size2018 "Average class size 2018"

gen class_size2017 = stud_t2017/count_classrm2017
label var class_size2017 "Average class size 2018"


* Teacher numbers and derivative vars ****************************

foreach var in $tqualist2018 $tqualist2017 { 
	replace `var' = 0 if (`var'== .)
  }

  
  
egen teach_t2018 = rowtotal($tqualist2018)
label var teach_t2018 "Number of teachers 2018"

egen teach_t2017 = rowtotal($tqualist2017)
label var teach_t2017 "Number of teachers 2017"


/*
gen teach_t = cert_preece+cert_pri+cert_specialedu+dip_basicsec+dip_specialedu+ ///
			  advanced_dip+bachelor_edu+bachelor_other+bachelor_specialedu+ ///
              dip_ece+none_qual+master+unknown_qual		  
label var teach_t "Number of teachers"
*/



*******

gen ptr2018 = stud_t2018/teach_t2018
label var ptr2018 "Pupi-Teacher Ratio 2018"

gen ptr2017 = stud_t2017/teach_t2017
label var ptr2017 "Pupi-Teacher Ratio 2017"

/*
gen teach_f_perc = teach_f/teach_t
label var teach_f_perc "Percentage of female teachers"
*/



* Change missing values to zero for selected vars *********************

*School furniture

foreach var in $fnlist { 
	replace `var' = 0 if (`var'== .)
  }

* School equipment  

foreach var in $eqlist { 
	replace `var' = 0 if (`var'== .)
  }

  
  

* Toilets **************************************************************

gen toilets_boys = tpit_boys+ppitwork_boys+pflushwork_boys
label var toilets_boys "Number of boys' toilets working" 

gen toilets_girls = tpit_girls+ppitwork_girls+pflushwork_girls
label var toilets_girls "Number of girls' toilets working"  

gen toilets_boysgirls = toilets_boys+toilets_girls
label var toilets_boysgirls "Number of pupils' toilets working"




*******

gen toilnotwk_boys = pflushnotwork_boys+ppitnotwork_boys
label var toilnotwk_boys "Number of boys' toilets not working"   

gen toilnotwk_girls = pflushnotwork_girls+ppitnotwork_girls
label var toilnotwk_girls "Number of girls' toilets not working"  

gen toilnotwk_boysgirls = toilnotwk_boys+toilnotwk_girls
label var toilnotwk_boysgirls "Number of pupils' toilets not working" 




******* 

gen toilets_mstaff = tpit_mstaff+ppitwork_mstaff+pflushwork_mstaff
label var toilets_mstaff "Number of male staff toilets working" 

gen toilets_fstaff = tpit_fstaff+ppitwork_fstaff+pflushwork_fstaff 
label var toilets_fstaff "Number of female staff toilets working" 

gen toilets_mfstaff = toilets_mstaff+toilets_fstaff 
label var toilets_mfstaff "Number of male & female staff toilets working"




******* 

gen toilnotwk_mstaff = pflushnotwork_mstaff+ppitnotwork_mstaff
label var toilnotwk_mstaff "Number of male staff toilets not working" 

gen toilnotwk_fstaff = pflushnotwork_fstaff+ppitnotwork_fstaff
label var toilnotwk_fstaff "Number of female staff toilets not working" 

gen toilnotwk_mfstaff = toilnotwk_mstaff+toilnotwk_fstaff
label var toilnotwk_mfstaff "Number of male & female staff toilets not working"




******* 
 
gen toil_staffh = tpit_staffh+ppitwork_staffh+pflushwork_staffh
label var toil_staffh "Number of working toilets in staff houses" 

gen toilnotwk_staffh = pflushnotwork_staffh+ppitnotwork_staffh
label var toilnotwk_staffh "Number of toilets in staff houses not working" 




******* 

gen g_dis_toilet=0
replace g_dis_toilet=1 if (malstud_t2018>0 & femstud_t2018>0 & toilets_boys>0 & toilets_girls>0)
replace g_dis_toilet=1 if (malstud_t2018>0 & femstud_t2018==0 & toilets_boys>0 & toilets_girls==0)
replace g_dis_toilet=1 if (malstud_t2018==0 & femstud_t2018>0 & toilets_boys==0 & toilets_girls>0)
label var g_dis_toilet "Schools with gender disaggregated toilets"
label define lb_g_dis_toilet 0 "No" 1 "Yes"
label values g_dis_toilet lb_g_dis_toilet    


***********
gen p_t_r2018 			= stud_t2018/toilets_boysgirls  
label var p_t_r2018 	"Pupils-Toilet Ratio 2018"

gen p_t_r2017 			= stud_t2017/toilets_boysgirls  
label var p_t_r2017 	"Pupils-Toilet Ratio 2017"

gen g_t_r2018 			= femstud_t2018/toilets_girls
label var g_t_r2018 	"Girls-Toilet Ratio 2018"

gen g_t_r2017 			= femstud_t2017/toilets_girls
label var g_t_r2017 	"Girls-Toilet Ratio 2018"

gen toilnotwk_bg_perc 	= toilnotwk_boysgirls/(toilets_boysgirls+toilnotwk_boysgirls)
label var toilnotwk_bg_perc "Percentage of pupils' toilets not working"


***********
gen water_in_sch = 0
replace water_in_sch = 1 if (water == 1 | water == 2 | water == 3 | ///
						water == 4 | water == 5)

label var water_in_sch "Does school have water"
label define lb_water_in_sch 0 "No" 1 "Yes"
label values water_in_sch lb_water_in_sch    

***********
gen elec_in_sch = 0
replace elec_in_sch = 1 if (electricity == 1 | electricity == 2 | electricity == 3)

label var elec_in_sch "Does school have electricity"
label define lb_elec_in_sch 0 "No" 1 "Yes"
label values elec_in_sch lb_elec_in_sch    

***********
gen Schp_txtbk_r2017 = stud_t2017/txtbks2017 
label var Schp_txtbk_r2017 "Pupils-textbook ratio for school 2017"

gen G7p_txtbk_r2017 = g7t_2017/g7books2017 
label var G7p_txtbk_r2017 "G7 Pupils-textbook ratio 2017"

gen G12p_txtbk_r2017 = g12t_2017/g12books2017 
label var G12p_txtbk_r2017 "G12 Pupils-textbook ratio 2017"



*Exams results **********

*male **

gen mean_scorem = 		((div1m_2018*90) + (div2m_2018*70) + ///
						(div3m_2018*50) + (div4m_2018*30))/nbsatm_2018
  

gen exam_quintilesm = .
capture drop exquinm
xtile exquinm = mean_scorem, nq(5) 
replace exam_quintilesm = exquinm if elevelx != 2

label variable exam_quintilesm "School national exam performance quintiles for male pupils"
label define lb_exam_quintilesm 1 "Very poor" 2 "Poor" 3 "Average" 4 "Second" 5 "Top"
label values exam_quintilesm lb_exam_quintilesm


*female **

gen mean_scoref = 		((div1f_2018*90) + (div2f_2018*70) + ///
						(div3f_2018*50) + (div4f_2018*30))/nbsatf_2018
  

gen exam_quintilesf = .
capture drop exquinf
xtile exquinf = mean_scoref, nq(5) 
replace exam_quintilesf = exquinf if elevelx != 2

label variable exam_quintilesf "School national exam performance quintiles for female pupils"
label define lb_exam_quintilesf 1 "Very poor" 2 "Poor" 3 "Average" 4 "Second" 5 "Top"
label values exam_quintilesf lb_exam_quintilesf


*male + female **

gen mean_scoret = 		((div1t_2018*90) + (div2t_2018*70) + ///
						(div3t_2018*50) + (div4t_2018*30))/nbsatt_2018
  
count 

gen exam_quintilest = .
capture drop exquint
xtile exquint = mean_scoret, nq(5) 
replace exam_quintilest = exquint if elevelx != 2

label variable exam_quintilest "School national exam performance quintiles for male & female pupils"
label define lb_exam_quintilest 1 "Very poor" 2 "Poor" 3 "Average" 4 "Second" 5 "Top"
label values exam_quintilest lb_exam_quintilest


by elevelx, sort : tabstat mean_scorem mean_scoref mean_scoret, statistics(mean) by(region)

tabstat mean_scorem mean_scoref mean_scoret, statistics(mean) by(region) 


tab region exam_quintilest, row nofreq

tab region exam_quintilest, column
 

 
* Create binary var for top schools (top quintile)

gen top_quint = .
replace top_quint = 1 if exam_quintilest == 5 
replace top_quint = 0 if exam_quintilest == 1 | exam_quintilest == 2 | ///
						 exam_quintilest == 3 | exam_quintilest == 4
label variable top_quint "School in Top Quintile"
label define lb_top_quint 0 "No" 1 "Yes" 
label values top_quint lb_top_quint




*GPI of mean score

gen gpi_mean_score = mean_scoref/mean_scorem
 
 
*Drop rows with significant missing data **********

/*
foreach var in region debs constituency schoolname level founder ///
location responsestatus open { 
	drop if `var'=="" 
  }
  
*/

keep if 	(malstud_t2018 != 0 & malstud_t2017 != 0 & ///
			 debs != "" & region != 0 & schoolname != "" & level != "" & ///
			 location != 99 & responsestatus != "" & open != "")
			 



*Estimate graduates for G7 and G12 **********

*graduates G7 boys
gen grad_g7m_2018 = 0
replace grad_g7m_2018 = round(g7m_2017*0.62) if elevel == 1 & region == 1
replace grad_g7m_2018 = round(g7m_2017*0.86) if elevel == 1 & region == 2
replace grad_g7m_2018 = round(g7m_2017*0.64) if elevel == 1 & region == 3
replace grad_g7m_2018 = round(g7m_2017*0.66) if elevel == 1 & region == 4
replace grad_g7m_2018 = round(g7m_2017*0.84) if elevel == 1 & region == 5
replace grad_g7m_2018 = round(g7m_2017*0.50) if elevel == 1 & region == 6
replace grad_g7m_2018 = round(g7m_2017*0.67) if elevel == 1 & region == 7
replace grad_g7m_2018 = round(g7m_2017*0.49) if elevel == 1 & region == 8
replace grad_g7m_2018 = round(g7m_2017*0.62) if elevel == 1 & region == 9
replace grad_g7m_2018 = round(g7m_2017*0.74) if elevel == 1 & region == 10
replace grad_g7m_2018 = g8m_2018 if elevel == 4

label var grad_g7m_2018 "Boys graduates in Grade 7"

*graduates G7 girls
gen grad_g7f_2018 = 0
replace grad_g7f_2018 = round(g7f_2017*0.63) if elevel == 1 & region == 1
replace grad_g7f_2018 = round(g7f_2017*0.83) if elevel == 1 & region == 2
replace grad_g7f_2018 = round(g7f_2017*0.59) if elevel == 1 & region == 3
replace grad_g7f_2018 = round(g7f_2017*0.63) if elevel == 1 & region == 4
replace grad_g7f_2018 = round(g7f_2017*0.78) if elevel == 1 & region == 5
replace grad_g7f_2018 = round(g7f_2017*0.48) if elevel == 1 & region == 6
replace grad_g7f_2018 = round(g7f_2017*0.68) if elevel == 1 & region == 7
replace grad_g7f_2018 = round(g7f_2017*0.51) if elevel == 1 & region == 8
replace grad_g7f_2018 = round(g7f_2017*0.60) if elevel == 1 & region == 9
replace grad_g7f_2018 = round(g7f_2017*0.71) if elevel == 1 & region == 10
replace grad_g7f_2018 = g8f_2018 if elevel == 4

label var grad_g7f_2018 "Girls graduates in Grade 7"

*graduates G7 boys+girls
gen grad_g7t_2018 = grad_g7m_2018 + grad_g7f_2018

label var grad_g7t_2018 "Boys & girls graduates in Grade 7"


*graduates G12 boys
gen grad_g12m_2018 = 0
replace grad_g12m_2018 = round(g12m_2018*0.96) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 1
replace grad_g12m_2018 = round(g12m_2018*0.97) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 2
replace grad_g12m_2018 = round(g12m_2018*0.97) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 3
replace grad_g12m_2018 = round(g12m_2018*0.92) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 4
replace grad_g12m_2018 = round(g12m_2018*0.97) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 5
replace grad_g12m_2018 = round(g12m_2018*0.92) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 6
replace grad_g12m_2018 = round(g12m_2018*0.94) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 7
replace grad_g12m_2018 = round(g12m_2018*0.97) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 8
replace grad_g12m_2018 = round(g12m_2018*0.97) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 9
replace grad_g12m_2018 = round(g12m_2018*0.81) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 10

label var grad_g12m_2018 "Boys graduates in Grade 12"

*graduates G12 girls
gen grad_g12f_2018 = 0
replace grad_g12f_2018 = round(g12f_2018*0.91) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 1
replace grad_g12f_2018 = round(g12f_2018*0.95) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 2
replace grad_g12f_2018 = round(g12f_2018*0.76) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 3
replace grad_g12f_2018 = round(g12f_2018*0.84) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 4
replace grad_g12f_2018 = round(g12f_2018*0.98) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 5
replace grad_g12f_2018 = round(g12f_2018*0.98) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 6
replace grad_g12f_2018 = round(g12f_2018*0.98) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 7
replace grad_g12f_2018 = round(g12f_2018*0.98) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 8
replace grad_g12f_2018 = round(g12f_2018*0.98) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 9
replace grad_g12f_2018 = round(g12f_2018*0.98) if (elevel == 2 | elevel == 3 | elevel == 4) & region == 10

label var grad_g12f_2018 "Girls graduates in Grade 12"

*graduates g12 boys+girls
gen grad_g12t_2018 = grad_g12m_2018 + grad_g12f_2018

label var grad_g12t_2018 "Boys & girls graduates in Grade 12"




*Add graduates to var lists on do file list1 **********

* All grades (Pri & Sec) for male pupils 2018						 
	global allgmlist2018 g1m_2018 g2m_2018 g3m_2018 g4m_2018 g5m_2018 ///
						 g6m_2018 g7m_2018 grad_g7m_2018 g8m_2018 g9m_2018 ///
						 g10m_2018 g11m_2018 g12m_2018 grad_g12m_2018
						 
* All grades (Pri & Sec) for female pupils 2018						 					 
	global allgflist2018 g1f_2018 g2f_2018 g3f_2018 g4f_2018 g5f_2018 ///
						 g6f_2018 g7f_2018 grad_g7f_2018 g8f_2018 g9f_2018 ///
						 g10f_2018 g11f_2018 g12f_2018 grad_g12f_2018					 
						 
* All grades (Pri & Sec) for male+female pupils 2018
	global allgtlist2018 g1t_2018 g2t_2018 g3t_2018 g4t_2018 g5t_2018 ///
						 g6t_2018 g7t_2018 grad_g7t_2018 g8t_2018 g9t_2018 ///
						 g10t_2018 g11t_2018 g12t_2018 grad_g12t_2018

						 
foreach var in $allgmlist2018 $allgflist2018 $allgtlist2018 $allgmlist2017 /// 
$allgflist2017 $allgtlist2017{ 
	replace `var' = 0 if (`var'== .)
  }

* Identify schools that have enrolment for both years (2017 and 2018) and 
* repetition data for 2018

gen g1t_test = 0
gen g2t_test = 0
gen g3t_test = 0 
gen g4t_test = 0
gen g5t_test = 0
gen g6t_test = 0 
gen g7t_test = 0
gen g8t_test = 0
gen g9t_test = 0
gen g10t_test = 0 
gen g11t_test = 0
gen g12t_test = 0
gen grad_g12t_2018_test = 0
gen glevel_test = 0

replace g1t_test = 1 if g2t_2018 != 0 & g1t_2017 != 0  
replace g2t_test = 1 if g3t_2018 != 0 & g2t_2017 != 0  
replace g3t_test = 1 if g4t_2018 != 0 & g3t_2017 != 0   
replace g4t_test = 1 if g5t_2018 != 0 & g4t_2017 != 0  
replace g5t_test = 1 if g6t_2018 != 0 & g5t_2017 != 0  
replace g6t_test = 1 if g7t_2018 != 0 & g6t_2017 != 0   
replace g7t_test = 1 if (g8t_2018 != 0 | grad_g7t_2018 != 0) & g7t_2017 != 0  
replace g8t_test = 1 if g9t_2018 != 0 & g8t_2017 != 0  
replace g9t_test = 1 if g10t_2018 != 0 & g9t_2017 != 0  
replace g10t_test = 1 if g11t_2018 != 0 & g10t_2017 != 0   
replace g11t_test = 1 if g12t_2018 != 0 & g11t_2017 != 0  
replace g12t_test = 1 if grad_g12t_2018 != 0 & g12t_2017 != 0

gen pri_test = g1t_test + g2t_test + g3t_test + g4t_test + g5t_test + g6t_test ///
+ g7t_test

gen sec_test = g8t_test + g9t_test + g10t_test + g11t_test + g12t_test

gen pri_sec_test = g1t_test + g2t_test + g3t_test + g4t_test + g5t_test + ///
g6t_test + g7t_test + g8t_test + g9t_test + g10t_test + g11t_test + g12t_test

replace glevel_test = 1 if elevel == 1 & pri_test >= 5 
replace glevel_test = 1 if (elevel == 2 | elevel == 3) & sec_test >= 4
replace glevel_test = 1 if elevel == 4 & pri_sec_test >= 8 

by elevel, sort: tabulate glevel_test
by elevel, sort: tabulate pri_test
by elevel, sort: tabulate sec_test
by elevel, sort: tabulate pri_sec_test

*tabulate glevel_test, subpop(elevel)
*tabulate pri_test, subpop(elevel)
*tabulate sec_test, subpop(elevel)
*tabulate pri_sec_test, subpop(elevel)

gen repg1t_test = 0
gen repg2t_test = 0
gen repg3t_test = 0 
gen repg4t_test = 0
gen repg5t_test = 0
gen repg6t_test = 0 
gen repg7t_test = 0
gen repg8t_test = 0
gen repg9t_test = 0
gen repg10t_test = 0 
gen repg11t_test = 0
gen repg12t_test = 0
gen repglevel_test = 0

replace repg1t_test = 1 if repg1t_2018 != 0 
replace repg2t_test = 1 if repg2t_2018 != 0 
replace repg3t_test = 1 if repg3t_2018 != 0 
replace repg4t_test = 1 if repg4t_2018 != 0
replace repg5t_test = 1 if repg5t_2018 != 0
replace repg6t_test = 1 if repg6t_2018 != 0
replace repg7t_test = 1 if repg7t_2018 != 0
replace repg8t_test = 1 if repg8t_2018 != 0
replace repg9t_test = 1 if repg9t_2018 != 0 
replace repg10t_test = 1 if repg10t_2018 != 0 
replace repg11t_test = 1 if repg11t_2018 != 0 
replace repg12t_test = 1 if repg12t_2018 != 0

gen pri_reptest = repg1t_test + repg2t_test + repg3t_test + repg4t_test + ///
repg5t_test + repg6t_test + repg7t_test

gen sec_reptest = repg8t_test + repg9t_test + repg10t_test + repg11t_test + repg12t_test

gen pri_sec_reptest = repg1t_test + repg2t_test + repg3t_test + repg4t_test + repg5t_test + ///
repg6t_test + repg7t_test + repg8t_test + repg9t_test + repg10t_test + repg11t_test + repg12t_test

replace repglevel_test = 1 if elevel == 1 & pri_reptest >= 3 
replace repglevel_test = 1 if (elevel == 2 | elevel == 3) & sec_reptest >= 3
replace repglevel_test = 1 if elevel == 4 & pri_sec_reptest >= 6 



tabulate repglevel_test
tabulate pri_reptest if elevel == 1
tabulate sec_reptest if elevel == 2 | elevel == 3 
tabulate pri_sec_reptest if elevel == 4


gen ultimatest = 0
replace ultimatest = 1 if glevel_test == 1 & repglevel_test == 1

by elevel, sort: tabulate ultimatest 
tabulate ultimatest 


