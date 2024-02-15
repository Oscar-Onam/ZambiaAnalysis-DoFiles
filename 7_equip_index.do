******************************************************************************
*                                                                            *
*         Create equipment index and approriate grouped percentiles          *
*                                                                            *
******************************************************************************

* Standardize factors **********************************************************

    foreach var in $eqlist {
				   	gen z_`var' =.
					forvalues i = 1/3 {
						quietly: sum `var' if elevelx == `i'
						replace z_`var' =(`var'-r(mean))/r(sd) if elevelx == `i'
					}
				}
  
  
  
* Create PCA model by education levels  **************************************** 

 forvalues i = 1/3 {
                    pca $z_eqlist if elevelx ==`i'
					mat EX`i' = e(L)
					   }


* Generate equipment index for each school by education levels ***************** 

generate e_index = .

replace e_index = (z_typewriters*EX1[1,1]) + (z_projectors*EX1[2,1]) + ///
(z_computers*EX1[3,1]) + (z_printers*EX1[4,1]) + (z_music_instrmnts*EX1[5,1]) + ///
(z_tv*EX1[6,1]) + (z_vcr*EX1[7,1]) + (z_sewmachines*EX1[8,1]) + (z_photocopiers*EX1[9,1]) + ///
(z_sciencekits*EX1[10,1]) + (z_dup_machines*EX1[11,1]) + (z_radio*EX1[12,1]) + ///
(z_cookers*EX1[13,1]) + (z_fridge*EX1[14,1]) + (z_vehicles*EX1[15,1]) + (z_bicycles*EX1[16,1]) + ///
(z_braillers*EX1[17,1]) + (z_write_frames*EX1[18,1]) + (z_other_equip*EX1[19,1]) ///
if elevelx == 1

replace e_index = (z_typewriters*EX2[1,1]) + (z_projectors*EX2[2,1]) + ///
(z_computers*EX2[3,1]) + (z_printers*EX2[4,1]) + (z_music_instrmnts*EX2[5,1]) + ///
(z_tv*EX2[6,1]) + (z_vcr*EX2[7,1]) + (z_sewmachines*EX2[8,1]) + (z_photocopiers*EX2[9,1]) + ///
(z_sciencekits*EX2[10,1]) + (z_dup_machines*EX2[11,1]) + (z_radio*EX2[12,1]) + ///
(z_cookers*EX2[13,1]) + (z_fridge*EX2[14,1]) + (z_vehicles*EX2[15,1]) + (z_bicycles*EX2[16,1])+ ///
(z_braillers*EX2[17,1]) + (z_write_frames*EX2[18,1]) + (z_other_equip*EX2[19,1]) ///
if elevelx == 2

replace e_index = (z_typewriters*EX3[1,1]) + (z_projectors*EX3[2,1]) + ///
(z_computers*EX3[3,1]) + (z_printers*EX3[4,1]) + (z_music_instrmnts*EX3[5,1]) + ///
(z_tv*EX3[6,1]) + (z_vcr*EX3[7,1]) + (z_sewmachines*EX3[8,1]) + (z_photocopiers*EX3[9,1]) + ///
(z_sciencekits*EX3[10,1]) + (z_dup_machines*EX3[11,1]) + (z_radio*EX3[12,1]) + ///
(z_cookers*EX3[13,1]) + (z_fridge*EX3[14,1])+(z_vehicles*EX3[15,1]) + (z_bicycles*EX3[16,1]) + ///
(z_braillers*EX3[17,1]) + (z_write_frames*EX3[18,1]) + (z_other_equip*EX3[19,1]) ///
if elevelx == 3

label variable e_index "School equipment index"


* Create tertiles from equipment index  ************************************ 

gen e_tert = .

forvalues i = 1/3 {
		capture drop et
		xtile et = e_index, nq(3) 
		replace e_tert = et if elevelx ==`i'
		}

label variable e_tert "School equipment tertiles"
label define lb_e_tert 1 "Poor" 2 "Middle" 3 "Rich"
label values e_tert lb_e_tert


* Create quintiles from equipment index * *********************************** 

gen e_quint = .

forvalues i = 1/3 {
		capture drop equip
		xtile equip = e_index, nq(5) 
		replace e_quint = equip if elevelx ==`i'
		}

label variable e_quint "School equipment quintiles"
label define lb_e_quint 1 "Very poor" 2 "Poor" 3 "Middle" 4 "Second" 5 "Richest"
label values e_quint lb_e_quint


* Create binary var from furniture index  ********************************** 

gen vpoor_equip = 0
replace vpoor_equip = 1 if (e_quint == 3 | e_quint == 4 | e_quint == 5)
						   
label var vpoor_equip "Does school have equipment"
label define lb_vpoor_equip 0 "No" 1 "Yes"
label values vpoor_equip lb_vpoor_equip   


*Create stats tables for tertiles and quintiles*************

by elevelx, sort : tabstat e_index, statistics(n mean median min max) by(e_tert)
by elevelx, sort : tabstat e_index, statistics(n mean median min max) by(e_quint)



*Create profiles for tertiles & quintiles**************************************


*Proportion of schools with lockers, cupboards, teacher tables & staff 
* chairs by edu level and furniture tertiles/quintiles 

foreach var in varlist $eqlist {
	gen `var'_t = 0
	replace `var'_t = 1 if `var' > 0
	label define lb_`var'_t 0 "No" 1 "Yes"
	label values `var'_t lb_`var'_t
}

label variable typewriters_t "Does school have Typewriters"	
label variable projectors_t "Does school have Projectors"	
label variable computers_t "Does school have Computers"	
label variable printers_t "Does school have Printers"	
label variable music_instrmnts_t "Does school have Music instruments"	
label variable vcr_t "Does school have Video cassette recorder"
label variable tv_t "Does school have Television"	
label variable sewmachines_t "Does school have Sewing machine"	
label variable photocopiers_t "Does school have Photocopier"	
label variable sciencekits_t "Does school have Science kits"	
label variable dup_machines_t "Does school have Duplicating Machines"	
label variable radio_t "Does school have Radio"	
label variable cookers_t "Does school have Cooker"	
label variable fridge_t "Does school have Refridgerator"	
label variable vehicles_t "Does school have Vehicles"	
label variable bicycles_t "Does school have Bicycles"	
label variable braillers_t "Does school have Perkins braillers"	
label variable write_frames_t "Does school have Writing frames"	
label variable other_equip_t "Does school have Other equipments"
	
foreach var in varlist typewriters_t projectors_t computers_t printers_t ///
music_instrmnts_t vcr_t tv_t sewmachines_t photocopiers_t sciencekits_t ///
dup_machines_t radio_t cookers_t fridge_t vehicles_t bicycles_t braillers_t ///
write_frames_t {
	by elevelx, sort: tabulate f_tert `var', nofreq row
	by elevelx, sort: tabulate f_quint `var', nofreq row
}

