******************************************************************************
*                   		  Fit regression models                          *
*                          			                                         *
******************************************************************************      
/*

keep region  			 debs  	  		 constituency  		schoolname ///  	
	 school_num  		 elevel  		 elevelx  		    elevelxx ///   		
	 distance   		 xfounder        xlocation  		count_classrm2018 ///
	 classrmcount   	 hand_washpractice  				soap_handwashing ///   
	 waste_disposal		 mensthygiene    sani_towels ///   
	 hygiene_edu   		 sani_disposal   wash_comm  		communication ///   
	 multishift   		 orphans_pri   	 orphans_sec   	    readmitted_pri /// 
     readmitted_sec   	 wash_wkplan     water    		    electricity ///    
	 class_size2018   	 class_size2017  ptr2018 			ptr2017 ///   
	 g_dis_toilet   	 p_t_r2018   	 p_t_r2017 			g_t_r2018 ///     
	 g_t_r2017   		 toilnotwk_bg_perc   				Schp_txtbk_r2017 ///     
     G7p_txtbk_r2017     G12p_txtbk_r2017    				mean_scorem ///    
	 exam_quintilesm 	 mean_scoref    					exam_quintilesf ///    
	 mean_scoret    	 exam_quintilest f_index			f_tert /// 
	 f_quint 			 e_index  		 e_tert				e_quint ///
	 pdr2018     	 	 pdr2017         pcr2018            w_mean_scoret ///    
	 pcr2017  	 		 plr2018 		 plr2017 			pbr2018 /// 
	 pbr2017 			 srm1_7 		 srf1_7 			srt1_7 /// 
	 srm8_12 			 srf8_12 		 srt8_12 			srm1_12 /// 
	 srf1_12 			 srt1_12 		 gpi_sr1_7 			gpi_sr8_12 /// 
	 gpi_sr1_12			 dr_mpri 		 dr_fpri  			dr_tpri /// 
	 retr_mpri 			 retr_fpri 		 retr_tpri 			retr_mprisec /// 
	 retr_fprisec 		 retr_tprisec 	 retr_msec 			retr_fsec /// 
	 retr_tsec 			 gpi_retr_pri	 gpi_retr_sec 		gpi_retr_prisec /// 
	 pri_coie_m1		 pri_coie_f1 	 pri_coie_t1		sec_coie_m1 ///
	 sec_coie_f1 		 sec_coie_t1 	 gpi_pri_coie_1 	gpi_sec_coie_1 ///
	 weights			 w_pri_coie_t1 	 w_sec_coie_t1	
*/


* Final dataset

drop  total_*  promotees_*  enrolees_*  dropouts_*  repeaters_*  graduates_* ///
	  gpi_dr*  gpi_rr*      gpi_pr1*    gpi_pr2*    gpi_pr3*     gpi_pr4* ///
	  gpi_pr5* gpi_pr6*     gpi_pr7*    gpi_pr8*    gpi_pr9*     drt* /// 
	  drf*     drm*         rrt*        rrf*        rrm*         prt* /// 
	  prf*     prm*         cf*         gpi_reg*    dropg*       repg* ///
	  typewriters_t         projectors_t  tv_t      computers_t  printers_t ///
      music_instrmnts_t     vcr_t       sewmachines_t photocopiers_t sciencekits_t ///
      dup_machines_t        radio_t     cookers_t   fridge_t     vehicles_t /// 
      bicycles_t            braillers_t write_frames_t           other_equip_t ///
	  lockers_t             cupboards_t teacherstables_t         staffclasschairs_t ///
	  pri_test              sec_test    pri_sec_test pri_reptest sec_reptest ///
      pri_sec_reptest       grad_g12t_2018_test     dup_school_num g1t_test ///
	  g2t_test              g3t_test    g4t_test    g5t_test     g6t_test ///
      g7t_test              g8t_test    g9t_test    g10t_test    g11t_test ///
      g12t_test				reg_*       z_* 
	



*For use in models that are not in the GLM family (test for skewness, tranform vars that are skewed using log10 and quietly create graphs) 

global sk_vars 	distance 		   class_size2017 	class_size2018	ptr2018 ///
				ptr2017  		   g_t_r2018  		g_t_r2017 		G7p_txtbk_r2017 /// 
				G12p_txtbk_r2017 					mean_scorem     mean_scoref /// 
				mean_scoret 	   srm1_7 			srf1_7 			srt1_7 /// 
				srm8_12 		   srf8_12 			srt8_12 		gpi_sr1_7 /// 
				gpi_sr8_12 	   	   retr_mpri 		retr_fpri 		retr_tpri /// 
				gpi_retr_pri	   retr_msec		retr_fsec 		retr_tsec /// 
				gpi_retr_sec	   pri_coie_m1 		pri_coie_f1 	pri_coie_t1 /// 
				sec_coie_m1 	   sec_coie_f1     	sec_coie_t1     gpi_pri_coie_1 /// 	    
				gpi_sec_coie_1     f_index			e_index		    w_pri_coie_t1
				

				
foreach var in $sk_vars {
							quietly: sktest `var'
							gen sk_`var' = r(p_skew) 
							gen log_`var' = log(`var') if sk_`var'< 0.05 
							set graphics off
							hist `var', normal name(hist_`var', replace) 
							hist log_`var', normal name(hist_log_`var', replace)
						}	
						
									
						
* visualize a few of the transformed vars	
					
set graphics on						
graph combine hist_distance hist_log_distance, name(distance_transformed, replace)
graph combine hist_class_size2017 hist_log_class_size2017, name(class_size2017_transformed, replace)	
graph combine hist_ptr2017 hist_log_ptr2017, name(ptr2017_transformed, replace)
graph combine hist_mean_scoret hist_log_mean_scoret, name(mean_scoret_transformed, replace)		
graph combine hist_pri_coie_t1 hist_log_pri_coie_t1, name(pri_coie_t1_transformed, replace)	


* variable classification.
	
vl set

vl move (cert_preece2018 cert_specialedu2018 dip_specialedu2018 /// 
advanced_dip2018 bachelor_other2018 bachelor_specialedu2018 dip_ece2018 /// 
master2018 whiteboards typewriters projectors printers vcr tv photocopiers /// 
sciencekits dup_machines radio cookers fridge vehicles bicycles braillers /// 
audiometers write_frames temp_classrm2018 pflushnotwork_boys ppitnotwork_boys /// 
tpit_fstaff ppitwork_fstaff pflushwork_fstaff pflushnotwork_fstaff /// 
ppitnotwork_fstaff tpit_girls pflushnotwork_girls ppitnotwork_girls tpit_mstaff /// 
ppitwork_mstaff pflushwork_mstaff pflushnotwork_mstaff ppitnotwork_mstaff /// 
pflushnotwork_staffh ppitnotwork_staffh temp_classrm2017 cert_preece2017 /// 
cert_specialedu2017 dip_specialedu2017 advanced_dip2017 bachelor_other2017 /// 
bachelor_specialedu2017 dip_ece2017 master2017 toilnotwk_boys toilnotwk_girls /// 
toilets_mstaff toilets_fstaff toilnotwk_mstaff toilnotwk_fstaff toilnotwk_mfstaff /// 
toilnotwk_staffh g_dis_toilet dip_basicsec2018 bachelor_edu2018 none_qual2018 ///
unknown_qual2018 blackboards storeroomstable teacherstables staffclasschairs ///
pupilschairs officeschairs officestables classtables singleseaterdesks shelves ///
cupboards lockers beds matresses labstools dinebenches dinetables dinechairs ///
computers music_instrmnts sewmachines other_equip incomp_classrm2018 srm1_7 ///
perm_classrm2018 good_classrm2018 fair_classrm2018 poor_classrm2018 gpi_sr1_7 ///
count_classrm2018 classrmcount tpit_boys ppitwork_boys pflushwork_boys retr_msec ///
ppitwork_girls pflushwork_girls tpit_staffh ppitwork_staffh pflushwork_staffh /// 
g10books2018 g11books2018 g12books2018 multishift orphans_sec readmitted_pri /// 
readmitted_sec prem_2017 g8m_2017 g9m_2017 g10m_2017 g11m_2017 g12m_2017 /// 
pref_2017 g8f_2017 g9f_2017 g10f_2017 g11f_2017 g12f_2017 g10t_2017 g11t_2017 /// 
g12t_2017 g10books2017 g11books2017 g12books2017 incomp_classrm2017 dr_msec ///
perm_classrm2017 good_classrm2017 fair_classrm2017 poor_classrm2017 ///
count_classrm2017 cert_pri2017 dip_basicsec2017 bachelor_edu2017 /// 
none_qual2017 unknown_qual2017 teach_t2018 teach_t2017 toilets_boys /// 
toilets_girls toilets_boysgirls toilnotwk_boysgirls toilets_mfstaff ///
toil_staffh grad_g7m_2018 grad_g7f_2018 grad_g7t_2018 grad_g12m_2018 ///
grad_g12f_2018 grad_g12t_2018 gpi_retr_prisec cert_pri2018 weights ///
) vlcontinuous


* vl move () vlcategorical

vl substitute categorical_vars = i.vlcategorical
vl substitute continuous_vars = c.vlcontinuous
*vl substitute myinteractions = i.vlcategorical#c.vlcontinuous


display "$categorical_vars"
display "$continuous_vars"
display "$vluncertain"
display "$vlother" 


/*

vl create continuous_vars = continuous_vars - (distance 	    class_size2017 	class_size2018 ///
							ptr2017  	   	   g_t_r2018  		g_t_r2017 		G7p_txtbk_r2017 /// 
							ptr2018            G12p_txtbk_r2017 mean_scorem     mean_scoref /// 
							mean_scoret 	   srm1_7 			srf1_7 			srt1_7 /// 
							srm8_12 		   srf8_12 			srt8_12 		gpi_sr1_7 /// 
							gpi_sr8_12 	   	   retr_mpri 		retr_fpri 		retr_tpri /// 
							gpi_retr_pri	   retr_msec		retr_fsec 		retr_tsec /// 
							gpi_retr_sec	   pri_coie_m1 		pri_coie_f1 	pri_coie_t1 /// 
							sec_coie_m1 	   sec_coie_f1     	sec_coie_t1     gpi_pri_coie_1 /// 	    
							gpi_sec_coie_1     f_index			e_index		    w_pri_coie_t1)


vl modify continuous_vars = continuous_vars + (log_distance         log_class_size2017  log_class_size2018 ///
							log_ptr2017  	   log_g_t_r2018  	    log_g_t_r2017 	 	log_G7p_txtbk_r2017 /// 
							log_ptr2018        log_G12p_txtbk_r2017 log_mean_scorem     log_mean_scoref /// 
							log_mean_scoret    log_srm1_7 			log_srf1_7 		    log_srt1_7 /// 
							log_srm8_12 	   log_srf8_12 			log_srt8_12 	    log_gpi_sr1_7 /// 
							log_gpi_sr8_12 	   log_retr_mpri 		log_retr_fpri 	    log_retr_tpri /// 
							log_gpi_retr_pri   log_retr_msec		log_retr_fsec 	    log_retr_tsec /// 
							log_gpi_retr_sec   log_pri_coie_m1 		log_pri_coie_f1     log_pri_coie_t1 /// 
							log_sec_coie_m1    log_sec_coie_f1     	log_sec_coie_t1     log_gpi_pri_coie_1 /// 	    
							log_gpi_sec_coie_1 log_f_index			log_e_index		    log_w_pri_coie_t1)
						
* check for multi-collinearity between vars	

*pri

set graphics on
if elevel  == 1 | elevel  == 4 /// 				
graph matrix 	log_distance 		log_class_size2017 		log_class_size2018		log_ptr2018 ///
				log_ptr2017  		log_g_t_r2018  			log_g_t_r2017 			log_G7p_txtbk_r2017 /// 
				log_e_index 		log_f_index 			log_srt1_7              log_gpi_sr1_7 ///			
				log_retr_tpri 		log_gpi_retr_pri		log_pri_coie_t1 		log_gpi_pri_coie_1 ///
				log_mean_scoret
						
*sec 

if elevel  != 1 /// 				
graph matrix 	log_distance 		log_class_size2017 		log_class_size2018		log_ptr2018 ///
				log_ptr2017  		log_g_t_r2018  			log_g_t_r2017 			log_G12p_txtbk_r2017 /// 
				log_e_index 		log_f_index 			log_srt8_12             log_gpi_sr8_12 ///			
				log_retr_tsec		log_gpi_retr_sec		log_sec_coie_t1 		log_gpi_sec_coie_1 ///
				log_mean_scoret 

***			
correlate 	log_distance 		log_class_size2017 		log_class_size2018		log_ptr2018 ///  
			log_ptr2017  		log_g_t_r2018  			log_g_t_r2017 			log_G7p_txtbk_r2017 ///	 
			log_e_index 		log_f_index 			log_srt1_7				log_retr_tpri /// 		
			log_gpi_retr_pri	log_pri_coie_t1 		log_gpi_pri_coie_1 		log_mean_scoret   /* output expectedly shows very high  cor (over .9) btwn ptr2017 & ptr2018, g_t_r2017 & g_t_r2018, class_size2017 & class_size2018 */
			   
							              
				
				
**** Run several models for exams results and select most appropriate **********

*LASSO


vl create vars_of_int = (c.log_distance 	 c.log_class_size2018		c.log_ptr2018 ///  
						 c.log_g_t_r2018     c.log_G7p_txtbk_r2017 	    c.log_e_index ///	 
						 c.log_f_index 	     c.log_pri_coie_t1			c.gpi_mean_score /// 
						 i.hygiene_edu 	     i.hand_washpractice 		i.soap_handwashing /// 
						 i.waste_disposal    i.mensthygiene 			i.sani_towels /// 
						 i.sani_disposal     i.wash_comm 				i.wash_wkplan ///
						 i.water 		     i.electricity 				i.communication /// 
						 i.xregion 		     i.xfounder 				i.xlocation) 

						 
				 
					
vl modify categorical_vars = categorical_vars - (c.log_distance 	c.log_class_size2018		c.log_ptr2018 ///  
												 c.log_g_t_r2018    c.log_G7p_txtbk_r2017 	    c.log_e_index ///	 
												 c.log_f_index 	    c.log_pri_coie_t1			c.gpi_mean_score)					
		
vl dir		
		
dsregress log_pri_coie_t1 $categorical_vars $continuous_vars if elevel == 1 | elevel == 4, ///
			controls (c.gpi_retr_sec) missingok
*/	



*GLM

 glm mean_scoret ///  
				log_distance 		log_class_size2017 		log_class_size2018		log_ptr2018 ///
				log_ptr2017  		log_g_t_r2018  			log_g_t_r2017 			log_G12p_txtbk_r2017 /// 
				log_e_index 		log_f_index 			log_srt8_12             log_gpi_sr8_12 ///			
				log_retr_tsec		log_gpi_retr_sec		log_sec_coie_t1 		log_gpi_sec_coie_1 ///
				i.hygiene_edu 		i.hand_washpractice 	i.soap_handwashing 		i.waste_disposal /// 
				i.mensthygiene 		i.sani_towels 			i.sani_disposal 		i.wash_comm /// 
				i.wash_wkplan 		i.water 				i.electricity 			i.communication /// 
				i.xregion 			i.xfounder 				i.xlocation 			i.f_tert /// 
				i.f_quint 			i.e_tert 				i.e_quint 				i.equip /// 
	           c.log_distance#i.xlocation /// 
			   c.log_distance#i.xregion ///
			   c.log_class_size2017#i.xlocation ///	   
			   c.log_ptr2018#i.xlocation ///	   
	 if  elevel == 1 | elevel == 4 ///  
	 family(gaussian) ///  
	 link(identity) eform



**** Run several models for CoIE  and select most appropriate ******************


*Generalized Linear Modelling (multiple linear regression)
	
 glm mean_scoret ///  	 
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









save "$Data_output\models.dta", replace