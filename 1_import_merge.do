******************************************************************
* Import datasheets from xlsx and merge files into one .dta file *   

******************************************************************

*import and save*

clear
import excel 			"$Data_raw\Data_2018_Zambia.xlsx", ///  
						sheet("Sch list") ///  
						firstrow case(lower)
tostring 				schoolid, replace force
rename 					schoolid school_num
label var	 			school_num "EMIS School number"
drop if 				school_num==""  /* drop schools without school code */
sort 					school_num            /* identify duplicate schools */
quietly by 				school_num:  gen dup_school_num = cond(_N==1,0,_n)
tabulate 				dup_school_num /* table of duplicate count */
drop if 				dup_school_num > 1 /* drop duplicates */
save 					"$Data_output\SchList2018.dta", replace


clear
import excel 			"$Data_raw\Data_2018_Zambia.xlsx", /// 
						sheet("Pupils") /// 
						firstrow case(lower)
tostring 				school_num, replace force
save 					"$Data_output\Pupils2018.dta", replace


clear
import excel 			"$Data_raw\Data_2018_Zambia.xlsx", /// 
						sheet("Repeaters") /// 
						firstrow case(lower)
tostring 				school_num, replace force
save 					"$Data_output\Repeaters2018.dta", replace

clear
import excel "$Data_raw\Data_2018_Zambia.xlsx", sheet("Dropouts") firstrow case(lower)
tostring school_num, replace force
save "$Data_output\Dropouts2018.dta", replace

clear
import excel "$Data_raw\Data_2018_Zambia.xlsx", sheet("Exams") firstrow case(lower)
drop if missing(emis_school_number) 
rename emis_school_number school_num
save "$Data_output\Exams2018.dta", replace

clear
import excel "$Data_raw\Data_2018_Zambia.xlsx", sheet("Teachers Qual T") firstrow case(lower)
tostring school_num, replace force
rename preeceschoolteacherscerti cert_preece2018
rename primaryteacherscertificate cert_pri2018
rename certificateinspecialeducati cert_specialedu2018
rename diplomabasicorsec_teacher dip_basicsec2018
rename specialeducationdiploma dip_specialedu2018
rename advanceddiploma advanced_dip2018
rename educationbachelorsdegree bachelor_edu2018
rename otherbachelorsdegree bachelor_other2018
rename specialeducationdegree bachelor_specialedu2018
rename ecediploma dip_ece2018
rename none none_qual2018
rename mastersdegree master2018
rename unknown unknown_qual2018
save "$Data_output\TeachersQual_T2018.dta", replace

clear
import excel "$Data_raw\Data_2018_Zambia.xlsx", sheet("Furniture") firstrow case(lower)
tostring school_num, replace force
save "$Data_output\Furniture2018.dta", replace

clear
import excel "$Data_raw\Data_2018_Zambia.xlsx", sheet("Equipments") firstrow case(lower)
tostring school_num, replace force
save "$Data_output\Equipments2018.dta", replace

clear
import excel "$Data_raw\Data_2018_Zambia.xlsx", sheet("Classrooms") firstrow case(lower)
tostring school_num, replace force
rename temp_classrm temp_classrm2018
rename incomp_classrm incomp_classrm2018
rename perm_classrom perm_classrm2018
rename good_classrm good_classrm2018
rename fair_classrom fair_classrm2018
rename poor_classrm poor_classrm2018
gen count_classrm2018 = temp_classrm2018+incomp_classrm2018+perm_classrm2018+ ///
good_classrm2018+fair_classrm2018+poor_classrm2018
save "$Data_output\Classrooms2018.dta", replace

/*
clear
import excel "$Data_raw\Data_2018_Zambia.xlsx", sheet("Classes Pri") firstrow case(lower)
tostring school_num, replace force
save "$Data_output\Classes_Pri2018.dta", replace
*/

clear
import excel "$Data_raw\Data_2018_Zambia.xlsx", sheet("Hygiene") firstrow case(lower)
tostring school_num, replace force
save "$Data_output\Hygiene2018.dta", replace

clear
import excel "$Data_raw\Data_2018_Zambia.xlsx", sheet("Toilets") firstrow case(lower)
tostring school_num, replace force
save "$Data_output\Toilets2018.dta", replace

clear
import excel "$Data_raw\Data_2018_Zambia.xlsx", sheet("Textbooks") firstrow case(lower)
tostring school_num, replace force
collapse (sum) g1 g2 g3 g4 g5 g6 g7 g8 g9 g10 g11 g12, by(school_num)
gen txtbks2018 = g1+g2+g3+g4+g5+g6+g7+g8+g9+g10+g11+g12
rename g1 g1books2018
rename g2 g2books2018
rename g3 g3books2018
rename g4 g4books2018
rename g5 g5books2018
rename g6 g6books2018
rename g7 g7books2018
rename g8 g8books2018
rename g9 g9books2018
rename g10 g10books2018
rename g11 g11books2018
rename g12 g12books2018 
save "$Data_output\Textbooks2018.dta", replace

clear
import excel "$Data_raw\Data_2018_Zambia.xlsx", sheet("Electricity") firstrow case(lower)
tostring school_num, replace force
save "$Data_output\Electricity2018.dta", replace

clear
import excel "$Data_raw\Data_2018_Zambia.xlsx", sheet("Multishift") firstrow case(lower)
tostring school_num, replace force
save "$Data_output\Multishift2018.dta", replace

clear
import excel "$Data_raw\Data_2018_Zambia.xlsx", sheet("Orphans") firstrow case(lower)
tostring school_num, replace force
save "$Data_output\Orphans2018.dta", replace

clear
import excel "$Data_raw\Data_2018_Zambia.xlsx", sheet("Readmitted") firstrow case(lower)
tostring school_num, replace force
save "$Data_output\Readmitted2018.dta", replace

clear
import excel "$Data_raw\Data_2017_Zambia.xlsx", sheet("Pupils") firstrow case(lower)
tostring school_num, replace force
drop if school_num==""  /* drop schools without school code */
sort school_num            /* identify duplicate schools */
		quietly by school_num:  gen dup_school_num = cond(_N==1,0,_n)
			tabulate dup_school_num /* table of duplicate count */
				drop if dup_school_num > 1 /* drop duplicates */
save "$Data_output\Pupils2017.dta", replace

clear
import excel "$Data_raw\Data_2017_Zambia.xlsx", sheet("Repeaters") firstrow case(lower)
tostring school_num, replace force
drop if school_num==""  /* drop schools without school code */
sort school_num            /* identify duplicate schools */
		quietly by school_num:  gen dup_school_num = cond(_N==1,0,_n)
			tabulate dup_school_num /* table of duplicate count */
				drop if dup_school_num > 1 /* drop duplicates */
save "$Data_output\Repeaters2017.dta", replace

clear
import excel "$Data_raw\Data_2017_Zambia.xlsx", sheet("Dropouts") firstrow case(lower)
tostring school_num, replace force
drop if school_num==""  /* drop schools without school code */
sort school_num            /* identify duplicate schools */
		quietly by school_num:  gen dup_school_num = cond(_N==1,0,_n)
			tabulate dup_school_num /* table of duplicate count */
				drop if dup_school_num > 1 /* drop duplicates */
save "$Data_output\Dropouts2017.dta", replace

clear
import excel "$Data_raw\Data_2017_Zambia.xlsx", sheet("Textbooks") firstrow case(lower)
tostring school_num, replace force
collapse (sum) g1 g2 g3 g4 g5 g6 g7 g8 g9 g10 g11 g12, by(school_num)
gen txtbks2017 = g1+g2+g3+g4+g5+g6+g7+g8+g9+g10+g11+g12
rename g1 g1books2017
rename g2 g2books2017
rename g3 g3books2017
rename g4 g4books2017
rename g5 g5books2017
rename g6 g6books2017
rename g7 g7books2017
rename g8 g8books2017
rename g9 g9books2017
rename g10 g10books2017
rename g11 g11books2017
rename g12 g12books2017 
save "$Data_output\Textbooks2017.dta", replace

clear
import excel "$Data_raw\Data_2017_Zambia.xlsx", sheet("Teachers Qual T") firstrow case(lower)
tostring school_num, replace force
rename preeceschoolteacherscerti cert_preece2017
rename primaryteacherscertificate cert_pri2017
rename certificateinspecialeducati cert_specialedu2017
rename diplomabasicorsec_teacher dip_basicsec2017
rename specialeducationdiploma dip_specialedu2017
rename advanceddiploma advanced_dip2017
rename educationbachelorsdegree bachelor_edu2017
rename otherbachelorsdegree bachelor_other2017
rename specialeducationdegree bachelor_specialedu2017
rename ecediploma dip_ece2017
rename none none_qual2017
rename mastersdegree master2017
rename unknown unknown_qual2017
save "$Data_output\TeachersQual_T2017.dta", replace


clear
import excel "$Data_raw\Data_2017_Zambia.xlsx", sheet("Classrooms") firstrow case(lower)
tostring school_num, replace force
rename temp_classrm temp_classrm2017
rename incomp_classrm incomp_classrm2017
rename perm_classrom perm_classrm2017
rename good_classrm good_classrm2017
rename fair_classrom fair_classrm2017
rename poor_classrm poor_classrm2017
gen count_classrm2017 = temp_classrm2017+incomp_classrm2017+perm_classrm2017+ ///
good_classrm2017+fair_classrm2017+poor_classrm2017
save "$Data_output\Classrooms2017.dta", replace


* merge datasets *

clear
use "$Data_output\SchList2018.dta" 
merge 1:1 school_num using "$Data_output\Pupils2018.dta"
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Repeaters2018.dta", generate(_merge1)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Dropouts2018.dta", generate(_merge2)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Exams2018.dta", generate(_merge3)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\TeachersQual_T2018.dta", generate(_merge4)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Furniture2018.dta", generate(_merge5)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Equipments2018.dta", generate(_merge6)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Classrooms2018.dta", generate(_merge7)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Classes_Pri2018.dta", generate(_merge8)
save "$Data_output\RawMerged2018.dta", replace
clear

use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Hygiene2018.dta", generate(_merge9)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Toilets2018.dta", generate(_merge10)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Textbooks2018.dta", generate(_merge11)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Electricity2018.dta", generate(_merge12)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Multishift2018.dta", generate(_merge13)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Orphans2018.dta", generate(_merge14)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Readmitted2018.dta", generate(_merge15)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta" 
merge 1:1 school_num using "$Data_output\Pupils2017.dta", generate(_merge16)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Repeaters2017.dta", generate(_merge17)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Dropouts2017.dta", generate(_merge18)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Textbooks2017.dta", generate(_merge19)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\Classrooms2017.dta", generate(_merge20)
save "$Data_output\RawMerged2018.dta", replace

clear
use "$Data_output\RawMerged2018.dta"
merge 1:1 school_num using "$Data_output\TeachersQual_T2017.dta", generate(_merge21)
save "$Data_output\RawMerged2018.dta", replace

drop _m*
order ecznumber, last

/*
 drop _merge _merge1 _merge2 _merge3 _merge4 _merge5 _merge6 _merge7 _merge8 \\\
 _merge9 _merge10 _merge11 _merge12 _merge13 _merge14 _merge15 _merge16 _merge17