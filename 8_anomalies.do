********************************************************************************
*                        Adjustment of anomalies in data                       *
********************************************************************************

ssc install extremes
global indicators ptr2017 class_size2017 ptr2018 class_size2018 p_t_r2018 ///
p_t_r2017 g_t_r2018 g_t_r2017 teach_t2018 teach_t2017 stud_t2018 stud_t2017 ///
G7p_txtbk_r2017 

**Run descriptive stats for our indicators ****************************

    foreach var in $indicators {
		by elevel, sort: tabstat `var', statistics(count mean max min p25 median p75 iqr)     
				   }


**standardize key indicators to identify outliers that have -3 < zscores > 3

    foreach var in $indicators {
				       gen z_`var' =.
					   gen out_`var'= 0
					   forvalues i = 1/4 {
					       quietly: sum `var' if elevel == `i'
						   replace z_`var' = (`var'-r(mean))/r(sd) if elevel ==`i'
						   replace out_`var' = 1 if z_`var' > -3 & z_`var' < 3
					   }
				   }

label var z_ptr2017 "Standardized Pupil-Teacher Ratio 2017"
label var z_class_size2017 "Average class size 2017"
label var z_ptr2018 "Standardized Pupil-Teacher Ratio 2018"
label var z_class_size2018 "Average class size 2018"
label var z_p_t_r2018 "Standardized Pupil-Toilet Ratio 2018"
label var z_p_t_r2017 "Standardized Pupil-Toilet Ratio 2017"
label var z_g_t_r2018 "Standardized Girls-Toilet Ratio 2018"
label var z_g_t_r2017 "Standardized Girls-Toilet Ratio 2017"
label var z_G7p_txtbk_r2017 "Standardized Grade 7 Pupil-Textbook Ratio 2017"
label var out_ptr2017 "Outlier in Pupil-Teacher Ratio 2017"
label var out_class_size2017 "Outlier Average class size 2017"
label var out_ptr2018 "Outlier in Pupil-Teacher Ratio 2018"
label var out_class_size2018 "Outlier Average class size 2018"
label var out_p_t_r2018 "Outlier in Pupil-Toilet Ratio 2018"
label var out_g_t_r2018 "Outlier in Girls-Toilet Ratio 2018"



* boxplots for standardized vars

graph box z_ptr2017 z_ptr2018 z_class_size2017 z_class_size2018 z_p_t_r2018 ///
if ptr2017!=0, over(elevelx, label(labsize(4-pt))) /// 
marker(1, msize(vsmall)) ///
marker(2, msize(vsmall)) /// 
marker(3, msize(vsmall)) ///
marker(4, msize(vsmall)) /// 
marker(5, msize(vsmall)) ///
ylabel(, labels labsize(4-pt) ///  
angle(horizontal)) legend(rows(2) size(4-pt))


*Standardize var

quietly {
    foreach var in distance nbsatt count_classrm2017 count_classrm2018 /// 
	f_index e_index toilets_boysgirls mean_scoret txtbks2017 txtbks2018 ///
				{
				       gen z_`var' =.
					   forvalues i = 1/4 {
					       quietly: sum `var' if elevel == `i'
						   replace z_`var' = (`var'-r(mean))/r(sd) if elevel ==`i'
					   }
				   }

}				   
		
		
* Create groups of schools with similarities using cluster analysis
cluster wardslinkage z_distance elevel region founder location z_nbsatt /// 
water electricity communication z_count_classrm2017 z_count_classrm2018 /// 
z_f_index z_e_index z_class_size2017 z_class_size2018 z_toilets_boysgirls /// 
z_stud_t2018 z_txtbks2017 z_txtbks2018, measure(Gower) name(clust_) /// 




* Create dendrogram
cluster dendrogram clust_, cutnumber(50) ylabel(, labels labsize(4-pt) /// 
angle(horizontal) format(%9.0g)) ymtick(, labsize(4-pt)) xlabel(, labsize(4-pt) /// 
angle(forty_five)) title(Dendrogram for primary schools clusters, size(6-pt))

cluster dendrogram clust_, cutnumber(20) ylabel(, labels labsize(4-pt) /// 
angle(horizontal) format(%9.0g)) ymtick(, labsize(4-pt)) xlabel(, labsize(4-pt)) /// 
title(Dendrogram for primary schools clusters, size(6-pt))


* Attach cluster groups to obs and calculate mean and median for each group
cluster generate groups_ = groups(20), name(clust_) ties(error)

				   
gen p50_ptr2017 = .
gen mean_ptr2017 = .
   forvalues i = 1/20 {
	              quietly: sum ptr2017, detail, if groups_ == `i' 
				      replace p50_ptr2017 = r(p50) if groups_ == `i'
					  replace mean_ptr2017 = r(mean) if groups_ == `i'
	   }
	   
	  
by elevel, sort: tabulate groups_




* Imputing median or mean for outliers*****************************************

gen test_ptr = 0
replace test_ptr = 1 if out_ptr2017 == 1 & out_ptr2018 == 0
replace test_ptr = 2 if out_ptr2017 == 0 & out_ptr2018 == 1
label var test_ptr "PTR is an outlier in 2017 but not in 2018 etc"

gen test_stud_t = 0
replace test_stud_t = 1 if out_stud_t2017 == 1 & out_stud_t2018 == 0
replace test_stud_t = 2 if out_stud_t2017 == 0 & out_stud_t2018 == 1
label var test_stud_t "Student total is an outlier in 2017 but not in 2018 etc"


gen test_teach_t = 0
replace test_teach_t = 1 if out_teach_t2017 == 1 & out_teach_t2018 == 0
replace test_teach_t = 2 if out_teach_t2017 == 0 & out_teach_t2018 == 1
label var test_teach_t "Teacher total is an outlier in 2017 but not in 2018 etc"

by elevel, sort: tabulate test_ptr test_teach_t 

gen ultest_ptr = 0
replace ultest_ptr = 1 if test_ptr == 1 & test_stud_t == 1   /* substitute ptr2018 with ptr2017 - use student numbers for 2018 */
replace ultest_ptr = 2 if test_ptr == 1 & test_teach_t == 1   /* substitute ptr2018 with ptr2017 - use teachers numbers for 2018 */

tab ultest_ptr

tab out_ptr2017


********* extreme student numbers ************



********* missing/unreported teacher numbers ********



********* extreme teacher numbers ********



********* missing/unreported classrooms numbers ********



********* extreme classrooms numbers ********



********* missing/unreported toilets numbers ********



*********extreme toilets numbers ********

