******************************************************************************************************
******      Statistical model for informing school grant formula development in Zambia       *********
******        				 Data: Zambia National EMIS 2017 and 2018        		     	 *********
******                   Oscar Onam, Education Specialist, SIDER, UNICEF HQ 				 *********
****** 							 (oonam@unicef.org), 2021                            		 *********
******************************************************************************************************

clear
global Path 		"C:\Users\oonam\OneDrive - UNICEF\DMS\Zambia"
global Do      		"${Path}\3_dofiles\"
global Data_raw     "${Path}\1_raw\"
global Data_output   "${Path}\4_output\"
					
	
*Step 1 - IMPORT and save data 
					clear
					do "${Do}1_import_merge"
					save "$Data_output\FinalMerged.dta", replace

					
*Step 2 - RENAME variables 
					clear
					use "$Data_output\FinalMerged.dta"
					do "${Do}2_rename"
					save "$Data_output\Renamed.dta", replace

					
*Step 3 - LABEL variables 
					clear
					use "$Data_output\Renamed.dta"
					do "${Do}3_label"
					save "$Data_output\Labelled.dta", replace
					

*Step 4 - create relevant global VARLISTS 
					clear
					use "$Data_output\Labelled.dta"
					do "${Do}4_lists1"
					save "$Data_output\Listed1.dta", replace
					

*Step 5 - clean up and GENERATE VARS for key indicators 
					clear
					use "$Data_output\Listed1.dta"
					do "${Do}5_genvar"
					save "$Data_output\GenVar.dta", replace


*Step 6 - create Furniture index & appropriate percentiles 
					clear
					use "$Data_output\GenVar.dta"
					do "${Do}6_furn_index"
					save "$Data_output\fIndex.dta", replace

					
*Step 7 - create Equipment index & appropriate percentiles 
					clear
					use "$Data_output\fIndex.dta"
					do "${Do}7_equip_index"		
					save "$Data_output\eIndex.dta", replace				
					

*Step 8 - address ANOMALIES (extreme & missing values) & more clean up 
					clear
					use "$Data_output\eIndex.dta"
					do "${Do}8_anomalies"
					save "$Data_output\aNOmalies.dta", replace
					
					
*Step 9 - calculate student FLOW RATES by grade & GPIs 
					clear
					use "$Data_output\aNOmalies.dta"
					keep if ultimatest == 1
					do "${Do}9_flowrates1"				/*for SCHOOLS*/
					save "$Data_output\FlowRates1.dta", replace

					clear
					use "$Data_output\FlowRates1.dta"
					do "${Do}10_flowrates2" 		     /*for each DISTRICT*/
					save "$Data_output\FlowRates2.dta", replace

					clear
					use "$Data_output\FlowRates1.dta"
					do "${Do}11_flowrates3"				/*for each PROVINCE*/
					save "$Data_output\FlowRates3.dta", replace

					clear
					use "$Data_output\FlowRates1.dta"
					do "${Do}12_flowrates4"			   /*for COUNTRY*/
					save "$Data_output\FlowRates4.dta", replace
					
					
*Step 10 - RECONSTRUCT COHORT & evolve from first to last grade   
					clear
					use "$Data_output\FlowRates1.dta" 
					do "${Do}13_rcm1"						/*for each SCHOOL*/
					save "$Data_output\rcm1.dta", replace

					clear
					use "$Data_output\FlowRates2.dta"
					do "${Do}14_rcm2" 						/*for each DISTRICT*/
					save "$Data_output\rcm2.dta", replace
					
					clear
					use "$Data_output\FlowRates3.dta"
					do "${Do}15_rcm3"						/*for each PROVINCE*/
					save "$Data_output\rcm3.dta", replace
					
					clear
					use "$Data_output\FlowRates4.dta"
					do "${Do}16_rcm4"						/*for COUNTRY*/
					save "$Data_output\rcm4.dta", replace
					
					
*Step 11 - create global VARLISTS from cohort evolution 
					clear
					use "$Data_output\rcm1.dta"
					do "${Do}17_lists2a"					/*for SCHOOLS*/
					save "$Data_output\Lists2sch.dta", replace
					
					clear
					use "$Data_output\rcm2.dta"
					do "${Do}18_lists2b" 					/*for DISTRICTS*/
					save "$Data_output\Lists2dist.dta", replace
					
					clear
					use "$Data_output\rcm3.dta"
					do "${Do}18_lists2b"					/*for PROVINCE*/
					save "$Data_output\Lists2prov.dta", replace
					
					clear
					use "$Data_output\rcm4.dta"
					do "${Do}18_lists2b"					/*for COUNTRY*/
					save "$Data_output\Lists2nat.dta", replace
					
					
*Step 12 - calculate SURVIVAL RATE and GPI for each school, region & country 
					clear
					use "$Data_output\Lists2sch.dta"
					do "${Do}19_svrate1"					/*for SCHOOLS*/
					save "$Data_output\SRsch.dta", replace
					
					clear
					use "$Data_output\Lists2dist.dta"
					do "${Do}20_svrate2" 					/*for DISTRICTS*/
					save "$Data_output\SRdist.dta", replace
					
					clear
					use "$Data_output\Lists2prov.dta"
					do "${Do}21_svrate3"					/*for PROVINCE*/
					save "$Data_output\SRprov.dta", replace
					
					clear
					use "$Data_output\Lists2nat.dta"
					do "${Do}22_svrate4"					/*for COUNTRY*/
					save "$Data_output\SRnat.dta", replace
					
					
*Step 13 - calculate Coefficient of Internal Efficiency (CoIE) & GPI 
					clear
					use "$Data_output\SRsch.dta"
					do "${Do}23_coie1"                  /*for SCHOOLS*/
					save "$Data_output\coie1.dta", replace
					
					clear
					use "$Data_output\SRdist.dta"
					do "${Do}24_coie2" 					/*for DISTRICTS*/
					save "$Data_output\coie2.dta", replace
					
					clear
					use "$Data_output\SRprov.dta"
					do "${Do}25_coie3"					/*for PROVINCE*/
					save "$Data_output\coie3.dta", replace
					
					clear
					use "$Data_output\SRnat.dta"
					do "${Do}26_coie4"					/*for COUNTRY*/
					save "$Data_output\coie4.dta", replace


*Step 14 - Create SAMPLE and re-run all relevant do files 
					clear
					use "$Data_output\coie1.dta"
					do "${Do}27_sampling"
					

					
*Step 15 - create regression models
					clear
					use "$Data_output\Sample1.dta" 
					do "${Do}28_models"