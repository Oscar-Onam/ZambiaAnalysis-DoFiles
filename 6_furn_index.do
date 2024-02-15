********************************************************************************
*           Create furniture index and approriate grouped percentiles          *
********************************************************************************



* Standardize factors  *********************************************************

    foreach var in $fnlist {
				       gen z_`var' =.
					   forvalues i = 1/4 {
					       quietly: sum `var' if elevel == `i'
						   replace z_`var' = (`var'-r(mean))/r(sd) if elevel ==`i'
					   }
				   }
  

* Create PCA model by education levels  **************************************** 

   forvalues i = 1/4 {
					   pca $z_fnlist if elevel ==`i' 
					   mat EV`i'= e(L)
					   }

				   
					   
* Generate furniture index for each school by education levels****************** 

generate f_index = .

replace f_index = (z_blackboards*EV1[1,1])+(z_whiteboards*EV1[2,1])+ ///
(z_storeroomstable*EV1[3,1])+(z_teacherstables*EV1[4,1])+ ///
(z_staffclasschairs*EV1[5,1])+(z_pupilschairs*EV1[6,1])+ ///
(z_officeschairs*EV1[7,1])+(z_officestables*EV1[8,1])+(z_classtables*EV1[9,1])+ ///
(z_doubleseaterdesks*EV1[10,1])+(z_singleseaterdesks*EV1[11,1])+ ///
(z_shelves*EV1[12,1])+(z_cupboards*EV1[13,1])+(z_lockers*EV1[14,1])+ ///
(z_beds*EV1[15,1])+(z_matresses*EV1[16,1])+(z_labstools*EV1[17,1]) ///
if elevel == 1

replace f_index = (z_blackboards*EV2[1,1])+(z_whiteboards*EV2[2,1])+ ///
(z_storeroomstable*EV2[3,1])+(z_teacherstables*EV2[4,1])+ ///
(z_staffclasschairs*EV2[5,1])+(z_pupilschairs*EV2[6,1])+ ///
(z_officeschairs*EV2[7,1])+(z_officestables*EV2[8,1])+(z_classtables*EV2[9,1])+ ///
(z_doubleseaterdesks*EV2[10,1])+(z_singleseaterdesks*EV2[11,1])+ ///
(z_shelves*EV2[12,1])+(z_cupboards*EV2[13,1])+(z_lockers*EV2[14,1])+ ///
(z_beds*EV2[15,1])+(z_matresses*EV2[16,1])+(z_labstools*EV2[17,1]) ///
if elevel == 2

replace f_index = (z_blackboards*EV3[1,1])+(z_whiteboards*EV3[2,1])+ ///
(z_storeroomstable*EV3[3,1])+(z_teacherstables*EV3[4,1])+ ///
(z_staffclasschairs*EV3[5,1])+(z_pupilschairs*EV3[6,1])+ ///
(z_officeschairs*EV3[7,1])+(z_officestables*EV3[8,1])+(z_classtables*EV3[9,1])+ ///
(z_doubleseaterdesks*EV3[10,1])+(z_singleseaterdesks*EV3[11,1])+ ///
(z_shelves*EV3[12,1])+(z_cupboards*EV3[13,1])+(z_lockers*EV3[14,1])+ ///
(z_beds*EV3[15,1])+(z_matresses*EV3[16,1])+(z_labstools*EV3[17,1]) ///
if elevel == 3

replace f_index = (z_blackboards*EV4[1,1])+(z_whiteboards*EV4[2,1])+ ///
(z_storeroomstable*EV4[3,1])+(z_teacherstables*EV4[4,1])+ ///
(z_staffclasschairs*EV4[5,1])+(z_pupilschairs*EV4[6,1])+ ///
(z_officeschairs*EV4[7,1])+(z_officestables*EV4[8,1])+(z_classtables*EV4[9,1])+ ///
(z_doubleseaterdesks*EV4[10,1])+(z_singleseaterdesks*EV4[11,1])+ ///
(z_shelves*EV4[12,1])+(z_cupboards*EV4[13,1])+(z_lockers*EV4[14,1])+ ///
(z_beds*EV4[15,1])+(z_matresses*EV4[16,1])+(z_labstools*EV4[17,1]) ///
if elevel == 4

label variable f_index "School furniture index"


* Create tertiles from furniture index  ***********************************

gen f_tert =.
		forvalues i=1/4 {
				capture drop ft
				xtile ft = f_index, nq(3) 
				replace f_tert = ft if elevel==`i'
				}

label variable f_tert "School furniture tertiles"
label define lb_f_tert 1 "Poor" 2 "Middle" 3 "Rich"
label values f_tert lb_f_tert


* Create quintiles from furniture index  ********************************** 

gen f_quint =.
		forvalues i=1/4 {
				capture drop fq
				xtile fq = f_index, nq(5) 
				replace f_quint = fq if elevel==`i'
				}

label variable f_quint "School furniture quintiles"
label define lb_f_quint 1 "Very poor" 2 "Poor" 3 "Middle" 4 "Second" 5 "Richest"
label values f_quint lb_f_quint


* Create binary var from furniture index  ********************************** 

gen vpoor_furn = 0
replace vpoor_furn = 1 if (f_quint == 3 | f_quint == 4 | f_quint == 5)   

label var vpoor_furn "Does school have furniture"
label define lb_vpoor_furn 0 "No" 1 "Yes"
label values vpoor_furn lb_vpoor_furn   


*Create stats tables for tertiles and quintiles*************

by elevel, sort: tabstat f_index, statistics(n mean median min max) by(f_tert)
by elevel, sort: tabstat f_index, statistics(n mean median min max) by(f_quint)

**************

*Create profiles for tertiles & quintiles**************************************


*Number of pupils per desk

gen pdr2018 = stud_t2018/(doubleseaterdesks+singleseaterdesks)
label variable pdr2018 "Pupil-desk ratio 2018"

gen pdr2017 = stud_t2017/(doubleseaterdesks+singleseaterdesks)
label variable pdr2017 "Pupil-desk ratio 2017"

by elevel, sort: tabstat pdr2018, statistics(mean median) by(f_tert)
by elevel, sort: tabstat pdr2018, statistics(mean median) by(f_quint)

by elevel, sort: tabstat pdr2017, statistics(mean median) by(f_tert)
by elevel, sort: tabstat pdr2017, statistics(mean median) by(f_quint)


*Number of pupils per chair

gen pcr2018 = stud_t2018/pupilschairs
label variable pcr2018 "Pupil-chair ratio 2018"

gen pcr2017 = stud_t2017/pupilschairs
label variable pcr2017 "Pupil-chair ratio 2017"

by elevel, sort: tabstat pcr2018, statistics(mean median) by(f_tert)
by elevel, sort: tabstat pcr2018, statistics(mean median) by(f_quint)

by elevel, sort: tabstat pcr2017, statistics(mean median) by(f_tert)
by elevel, sort: tabstat pcr2017, statistics(mean median) by(f_quint)


*Number of pupils per labstool

gen plr2018 = stud_t2018/labstools
label variable plr2018 "Pupil-labstool ratio 2018"

gen plr2017 = stud_t2017/labstools
label variable plr2017 "Pupil-labstool ratio 2017"

by elevel, sort: tabstat plr2018, statistics(mean median) by(f_tert)
by elevel, sort: tabstat plr2018, statistics(mean median) by(f_quint)

by elevel, sort: tabstat plr2017, statistics(mean median) by(f_tert)
by elevel, sort: tabstat plr2017, statistics(mean median) by(f_quint)


*Number of pupils per black/whiteboard

gen pbr2018 = stud_t2018/(blackboards+whiteboards)
label variable pbr2018 "Pupils-black/whiteboard ratio 2018"

gen pbr2017 = stud_t2017/(blackboards+whiteboards)
label variable pbr2017 "Pupils-black/whiteboard ratio 2017"

by elevel, sort: tabstat pdr2018, statistics(mean median) by(f_tert)
by elevel, sort: tabstat pdr2018, statistics(mean median) by(f_quint)

by elevel, sort: tabstat pdr2017, statistics(mean median) by(f_tert)
by elevel, sort: tabstat pdr2017, statistics(mean median) by(f_quint)


*Proportion of schools with lockers, cupboards, teacher tables & staff chairs by edu level and furniture tertiles/quintiles 

foreach var of varlist lockers cupboards teacherstables staffclasschairs {
	gen `var'_t = 0
	replace `var'_t = 1 if `var' > 0
	label define lb_`var'_t 0 "No" 1 "Yes"
	label values `var'_t lb_`var'_t
}

	label variable lockers_t "Does school have lockers for teachers and pupils"
	label variable cupboards_t "Does school have cupboards for teachers and pupils"
	label variable teacherstables_t "Does school have class tables for teachers"
	label variable staffclasschairs_t "Does school have class tables for teachers"
	
	foreach var of varlist lockers_t cupboards_t teacherstables_t staffclasschairs_t {
	by elevel, sort: tabulate f_tert `var', nofreq row
	by elevel, sort: tabulate f_quint `var', nofreq row
}

