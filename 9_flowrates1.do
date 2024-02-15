************************************************************************************
* Calculate Student Flow Rates: Promotion Rate (PR) by grade, Repetition Rate (RR) *
*       by grade and Dropout Rate (DR) by grade for every school and their GPIs    *
*                       and for every region and their GPI                         *
************************************************************************************


*REGIONAL *******************************************************************

* Calculate students flowrates by grade, gender and region for schools with all the required data for the 2 years

sort region   

*enrolled boys 2018
foreach var in $allgmlist2018 {
				       quietly: by region: egen reg_`var' = total(`var')
					   }
				
*enrolled girls 2018
foreach var in $allgflist2018 {
				       quietly: by region: egen reg_`var' = total(`var')
					   }

*enrolled boys+girls 2018
foreach var in $allgtlist2018 {
				       quietly: by region: egen reg_`var' = total(`var')
					   }

					   
*repeaters boys 2018
foreach var in $allgmreplist2018 {
				       quietly: by region: egen reg_`var' = total(`var')
					   }
				
*repeaters girls 2018
foreach var in $allgfreplist2018 {
				       quietly: by region: egen reg_`var' = total(`var')
					   }

*repeaters boys+girls 2018
foreach var in $allgtreplist2018 {
				       quietly: by region: egen reg_`var' = total(`var')
					   }					   

					   
*enrolled boys 2017
foreach var in $allgmlist2017 {
				       quietly: by region: egen reg_`var' = total(`var')
					   }
				
*enrolled girls 2017
foreach var in $allgflist2017 {
				       quietly: by region: egen reg_`var' = total(`var')
					   }

*enrolled boys+girls 2017
foreach var in $allgtlist2017 {
				       quietly: by region: egen reg_`var' = total(`var')
					   }


					   
*Regional Uncapped Promotion Rate (uPR) for boys ****************************************
gen reg_uprm1_2 = (reg_g2m_2018-reg_repg2m_2018)/reg_g1m_2017
gen reg_uprm2_3 = (reg_g3m_2018-reg_repg3m_2018)/reg_g2m_2017
gen reg_uprm3_4 = (reg_g4m_2018-reg_repg4m_2018)/reg_g3m_2017
gen reg_uprm4_5 = (reg_g5m_2018-reg_repg5m_2018)/reg_g4m_2017
gen reg_uprm5_6 = (reg_g6m_2018-reg_repg6m_2018)/reg_g5m_2017
gen reg_uprm6_7 = (reg_g7m_2018-reg_repg7m_2018)/reg_g6m_2017
gen reg_uprm7_8 = (reg_g8m_2018-reg_repg8m_2018)/reg_g7m_2017
gen reg_uprm8_9 = (reg_g9m_2018-reg_repg9m_2018)/reg_g8m_2017 
gen reg_uprm9_10 = (reg_g10m_2018-reg_repg10m_2018)/reg_g9m_2017
gen reg_uprm10_11 = (reg_g11m_2018-reg_repg11m_2018)/reg_g10m_2017
gen reg_uprm11_12 = (reg_g12m_2018-reg_repg12m_2018)/reg_g11m_2017
gen reg_uprm12_grad = reg_grad_g12m_2018/reg_g12m_2017

*Regional Uncapped Promotion Rate (uPR) for girl ****************************************
gen reg_uprf1_2 = (reg_g2f_2018-reg_repg2f_2018)/reg_g1f_2017
gen reg_uprf2_3 = (reg_g3f_2018-reg_repg3f_2018)/reg_g2f_2017
gen reg_uprf3_4 = (reg_g4f_2018-reg_repg4f_2018)/reg_g3f_2017
gen reg_uprf4_5 = (reg_g5f_2018-reg_repg5f_2018)/reg_g4f_2017
gen reg_uprf5_6 = (reg_g6f_2018-reg_repg6f_2018)/reg_g5f_2017
gen reg_uprf6_7 = (reg_g7f_2018-reg_repg7f_2018)/reg_g6f_2017
gen reg_uprf7_8 = (reg_g8f_2018-reg_repg8f_2018)/reg_g7f_2017
gen reg_uprf8_9 = (reg_g9f_2018-reg_repg9f_2018)/reg_g8f_2017 
gen reg_uprf9_10 = (reg_g10f_2018-reg_repg10f_2018)/reg_g9f_2017
gen reg_uprf10_11 = (reg_g11f_2018-reg_repg11f_2018)/reg_g10f_2017
gen reg_uprf11_12 = (reg_g12f_2018-reg_repg12f_2018)/reg_g11f_2017
gen reg_uprf12_grad = reg_grad_g12f_2018/reg_g12f_2017

*Regional Uncapped Promotion Rate (uPR) for boys & girls ********************************
gen reg_uprt1_2 = (reg_g2t_2018-reg_repg2t_2018)/reg_g1t_2017
gen reg_uprt2_3 = (reg_g3t_2018-reg_repg3t_2018)/reg_g2t_2017
gen reg_uprt3_4 = (reg_g4t_2018-reg_repg4t_2018)/reg_g3t_2017
gen reg_uprt4_5 = (reg_g5t_2018-reg_repg5t_2018)/reg_g4t_2017
gen reg_uprt5_6 = (reg_g6t_2018-reg_repg6t_2018)/reg_g5t_2017
gen reg_uprt6_7 = (reg_g7t_2018-reg_repg7t_2018)/reg_g6t_2017
gen reg_uprt7_8 = (reg_g8t_2018-reg_repg8t_2018)/reg_g7t_2017
gen reg_uprt8_9 = (reg_g9t_2018-reg_repg9t_2018)/reg_g8t_2017 
gen reg_uprt9_10 = (reg_g10t_2018-reg_repg10t_2018)/reg_g9t_2017
gen reg_uprt10_11 = (reg_g11t_2018-reg_repg11t_2018)/reg_g10t_2017
gen reg_uprt11_12 = (reg_g12t_2018-reg_repg12t_2018)/reg_g11t_2017
gen reg_uprt12_grad = reg_grad_g12t_2018/reg_g12t_2017

*Regional Uncapped Repetition Rate (uRR) for boys ***************************************
gen reg_urrm1_2 = reg_repg1m_2018/reg_g1m_2017
gen reg_urrm2_3 = reg_repg2m_2018/reg_g2m_2017
gen reg_urrm3_4 = reg_repg3m_2018/reg_g3m_2017
gen reg_urrm4_5 = reg_repg4m_2018/reg_g4m_2017
gen reg_urrm5_6 = reg_repg5m_2018/reg_g5m_2017
gen reg_urrm6_7 = reg_repg6m_2018/reg_g6m_2017
gen reg_urrm7_8 = reg_repg7m_2018/reg_g7m_2017
gen reg_urrm8_9 = reg_repg8m_2018/reg_g8m_2017 
gen reg_urrm9_10 = reg_repg9m_2018/reg_g9m_2017
gen reg_urrm10_11 = reg_repg10m_2018/reg_g10m_2017
gen reg_urrm11_12 = reg_repg11m_2018/reg_g11m_2017
gen reg_urrm12_grad = reg_repg12m_2018/reg_g12m_2017

*Regional Uncapped Repetition Rate (uRR) for girls **************************************
gen reg_urrf1_2 = reg_repg1f_2018/reg_g1f_2017
gen reg_urrf2_3 = reg_repg2f_2018/reg_g2f_2017
gen reg_urrf3_4 = reg_repg3f_2018/reg_g3f_2017
gen reg_urrf4_5 = reg_repg4f_2018/reg_g4f_2017
gen reg_urrf5_6 = reg_repg5f_2018/reg_g5f_2017
gen reg_urrf6_7 = reg_repg6f_2018/reg_g6f_2017
gen reg_urrf7_8 = reg_repg7f_2018/reg_g7f_2017
gen reg_urrf8_9 = reg_repg8f_2018/reg_g8f_2017 
gen reg_urrf9_10 = reg_repg9f_2018/reg_g9f_2017
gen reg_urrf10_11 = reg_repg10f_2018/reg_g10f_2017
gen reg_urrf11_12 = reg_repg11f_2018/reg_g11f_2017
gen reg_urrf12_grad = reg_repg12f_2018/reg_g12f_2017

*Regional Uncapped Repetition Rate (uRR) for boys & girls *******************************
gen reg_urrt1_2 = reg_repg1t_2018/reg_g1t_2017
gen reg_urrt2_3 = reg_repg2t_2018/reg_g2t_2017
gen reg_urrt3_4 = reg_repg3t_2018/reg_g3t_2017
gen reg_urrt4_5 = reg_repg4t_2018/reg_g4t_2017
gen reg_urrt5_6 = reg_repg5t_2018/reg_g5t_2017
gen reg_urrt6_7 = reg_repg6t_2018/reg_g6t_2017
gen reg_urrt7_8 = reg_repg7t_2018/reg_g7t_2017
gen reg_urrt8_9 = reg_repg8t_2018/reg_g8t_2017 
gen reg_urrt9_10 = reg_repg9t_2018/reg_g9t_2017
gen reg_urrt10_11 = reg_repg10t_2018/reg_g10t_2017
gen reg_urrt11_12 = reg_repg11t_2018/reg_g11t_2017
gen reg_urrt12_grad = reg_repg12t_2018/reg_g12t_2017

*Regional Uncapped Dropout Rate (uDR) for boys ***************************************
gen reg_udrm1_2 = 1 - (reg_uprm1_2+reg_urrm1_2)
gen reg_udrm2_3 = 1 - (reg_uprm2_3+reg_urrm2_3)
gen reg_udrm3_4 = 1 - (reg_uprm3_4+reg_urrm3_4)
gen reg_udrm4_5 = 1 - (reg_uprm4_5+reg_urrm4_5)
gen reg_udrm5_6 = 1 - (reg_uprm5_6+reg_urrm5_6)
gen reg_udrm6_7 = 1 - (reg_uprm6_7+reg_urrm6_7)
gen reg_udrm7_8 = 1 - (reg_uprm7_8+reg_urrm7_8)
gen reg_udrm8_9 = 1 - (reg_uprm8_9+reg_urrm8_9) 
gen reg_udrm9_10 = 1 - (reg_uprm9_10+reg_urrm9_10)
gen reg_udrm10_11 = 1 - (reg_uprm10_11+reg_urrm10_11)
gen reg_udrm11_12 = 1 - (reg_uprm11_12+reg_urrm11_12)
gen reg_udrm12_grad = 1 - (reg_uprm12_grad+reg_urrm12_grad)

*Regional Uncapped Dropout Rate (uDR) for girls ***************************************
gen reg_udrf1_2 = 1 - (reg_uprf1_2+reg_urrf1_2)
gen reg_udrf2_3 = 1 - (reg_uprf2_3+reg_urrf2_3)
gen reg_udrf3_4 = 1 - (reg_uprf3_4+reg_urrf3_4)
gen reg_udrf4_5 = 1 - (reg_uprf4_5+reg_urrf4_5)
gen reg_udrf5_6 = 1 - (reg_uprf5_6+reg_urrf5_6)
gen reg_udrf6_7 = 1 - (reg_uprf6_7+reg_urrf6_7)
gen reg_udrf7_8 = 1 - (reg_uprf7_8+reg_urrf7_8)
gen reg_udrf8_9 = 1 - (reg_uprf8_9+reg_urrf8_9) 
gen reg_udrf9_10 = 1 - (reg_uprf9_10+reg_urrf9_10)
gen reg_udrf10_11 = 1 - (reg_uprf10_11+reg_urrf10_11)
gen reg_udrf11_12 = 1 - (reg_uprf11_12+reg_urrf11_12)
gen reg_udrf12_grad = 1 - (reg_uprf12_grad+reg_urrf12_grad)

*Regional Uncapped Dropout Rate (uDR) for boys & girls ***************************************
gen reg_udrt1_2 = 1 - (reg_uprt1_2+reg_urrt1_2)
gen reg_udrt2_3 = 1 - (reg_uprt2_3+reg_urrt2_3)
gen reg_udrt3_4 = 1 - (reg_uprt3_4+reg_urrt3_4)
gen reg_udrt4_5 = 1 - (reg_uprt4_5+reg_urrt4_5)
gen reg_udrt5_6 = 1 - (reg_uprt5_6+reg_urrt5_6)
gen reg_udrt6_7 = 1 - (reg_uprt6_7+reg_urrt6_7)
gen reg_udrt7_8 = 1 - (reg_uprt7_8+reg_urrt7_8)
gen reg_udrt8_9 = 1 - (reg_uprt8_9+reg_urrt8_9) 
gen reg_udrt9_10 = 1 - (reg_uprt9_10+reg_urrt9_10)
gen reg_udrt10_11 = 1 - (reg_uprt10_11+reg_urrt10_11)
gen reg_udrt11_12 = 1 - (reg_uprt11_12+reg_urrt11_12)
gen reg_udrt12_grad = 1 - (reg_uprt12_grad+reg_urrt12_grad)			   
					   
*Regional Capping factors boys **********************************************************
gen reg_cfm1_2 = ((reg_g2m_2018-reg_repg2m_2018)/reg_g1m_2017)+(reg_repg1m_2018/reg_g1m_2017)
gen reg_cfm2_3 = ((reg_g3m_2018-reg_repg3m_2018)/reg_g2m_2017)+(reg_repg2m_2018/reg_g2m_2017)
gen reg_cfm3_4 = ((reg_g4m_2018-reg_repg4m_2018)/reg_g3m_2017)+(reg_repg3m_2018/reg_g3m_2017)
gen reg_cfm4_5 = ((reg_g5m_2018-reg_repg5m_2018)/reg_g4m_2017)+(reg_repg4m_2018/reg_g4m_2017)
gen reg_cfm5_6 = ((reg_g6m_2018-reg_repg6m_2018)/reg_g5m_2017)+(reg_repg5m_2018/reg_g5m_2017)
gen reg_cfm6_7 = ((reg_g7m_2018-reg_repg7m_2018)/reg_g6m_2017)+(reg_repg6m_2018/reg_g6m_2017)
gen reg_cfm7_8 = ((reg_g8m_2018-reg_repg8m_2018)/reg_g7m_2017)+(reg_repg7m_2018/reg_g7m_2017)
gen reg_cfm8_9 = ((reg_g9m_2018-reg_repg9m_2018)/reg_g8m_2017)+(reg_repg8m_2018/reg_g8m_2017)
gen reg_cfm9_10 = ((reg_g10m_2018-reg_repg10m_2018)/reg_g9m_2017)+(reg_repg9m_2018/reg_g9m_2017)
gen reg_cfm10_11 = ((reg_g11m_2018-reg_repg11m_2018)/reg_g10m_2017)+(reg_repg10m_2018/reg_g10m_2017)
gen reg_cfm11_12 = ((reg_g12m_2018-reg_repg12m_2018)/reg_g11m_2017)+(reg_repg11m_2018/reg_g11m_2017)
gen reg_cfm12_grad = ((reg_grad_g12m_2018-0)/reg_g12m_2017)+(reg_repg12m_2018/reg_g12m_2017)

*Regional Capping factors girls *********************************************************
gen reg_cff1_2 = ((reg_g2f_2018-reg_repg2f_2018)/reg_g1f_2017)+(reg_repg1f_2018/reg_g1f_2017)
gen reg_cff2_3 = ((reg_g3f_2018-reg_repg3f_2018)/reg_g2f_2017)+(reg_repg2f_2018/reg_g2f_2017)
gen reg_cff3_4 = ((reg_g4f_2018-reg_repg4f_2018)/reg_g3f_2017)+(reg_repg3f_2018/reg_g3f_2017)
gen reg_cff4_5 = ((reg_g5f_2018-reg_repg5f_2018)/reg_g4f_2017)+(reg_repg4f_2018/reg_g4f_2017)
gen reg_cff5_6 = ((reg_g6f_2018-reg_repg6f_2018)/reg_g5f_2017)+(reg_repg5f_2018/reg_g5f_2017)
gen reg_cff6_7 = ((reg_g7f_2018-reg_repg7f_2018)/reg_g6f_2017)+(reg_repg6f_2018/reg_g6f_2017)
gen reg_cff7_8 = ((reg_g8f_2018-reg_repg8f_2018)/reg_g7f_2017)+(reg_repg7f_2018/reg_g7f_2017)
gen reg_cff8_9 = ((reg_g9f_2018-reg_repg9f_2018)/reg_g8f_2017)+(reg_repg8f_2018/reg_g8f_2017)
gen reg_cff9_10 = ((reg_g10f_2018-reg_repg10f_2018)/reg_g9f_2017)+(reg_repg9f_2018/reg_g9f_2017)
gen reg_cff10_11 = ((reg_g11f_2018-reg_repg11f_2018)/reg_g10f_2017)+(reg_repg10f_2018/reg_g10f_2017)
gen reg_cff11_12 = ((reg_g12f_2018-reg_repg12f_2018)/reg_g11f_2017)+(reg_repg11f_2018/reg_g11f_2017)
gen reg_cff12_grad = ((reg_grad_g12f_2018-0)/reg_g12f_2017)+(reg_repg12f_2018/reg_g12f_2017)

*Regional Capping factors higher ********************************************************
gen reg_cfh1_2=reg_cff1_2  
if reg_cfm1_2>reg_cff1_2 replace reg_cfh1_2=reg_cfm1_2  
gen reg_cfh2_3 = reg_cff2_3 
if reg_cfm2_3>reg_cff2_3 replace reg_cfh2_3 = reg_cfm2_3
gen reg_cfh3_4 = reg_cff3_4 
if reg_cfm3_4>reg_cff3_4 replace reg_cfh3_4 = reg_cfm3_4
gen reg_cfh4_5 = reg_cff4_5 
if reg_cfm4_5>reg_cff4_5 replace reg_cfh4_5 = reg_cfm4_5
gen reg_cfh5_6 = reg_cff5_6 
if reg_cfm5_6>reg_cff5_6 replace reg_cfh5_6 = reg_cfm5_6
gen reg_cfh6_7 = reg_cff6_7 
if reg_cfm6_7>reg_cff6_7 replace reg_cfh6_7 = reg_cfm6_7
gen reg_cfh7_8 = reg_cff7_8 
if reg_cfm7_8>reg_cff7_8 replace reg_cfh7_8 = reg_cfm7_8
gen reg_cfh8_9 = reg_cff8_9 
if reg_cfm8_9>reg_cff8_9 replace reg_cfh8_9 = reg_cfm8_9
gen reg_cfh9_10 = reg_cff9_10 
if reg_cfm9_10>reg_cff9_10 replace reg_cfh9_10 = reg_cfm9_10
gen reg_cfh10_11 = reg_cff10_11 
if reg_cfm10_11>reg_cff10_11 replace reg_cfh10_11 = reg_cfm10_11
gen reg_cfh11_12 = reg_cff11_12 
if reg_cfm11_12>reg_cff11_12 replace reg_cfh11_12 = reg_cfm11_12
gen reg_cfh12_grad = reg_cff12_grad                                   /* Higher capping factor for g12 graduates for regions*/
if reg_cfm12_grad > reg_cff12_grad replace reg_cfh12_grad = reg_cfm12_grad 
if elevel == 1 replace reg_cfh12_grad = 0 



*Regional Capped Promotion Rate (PR) boys ***********************************************
gen reg_prm1_2 = reg_uprm1_2 
if reg_cfh1_2>1 replace reg_prm1_2 = reg_uprm1_2/reg_cfh1_2
gen reg_prm2_3 = reg_uprm2_3 
if reg_cfh2_3>1 replace reg_prm2_3 = reg_uprm2_3/reg_cfh2_3
gen reg_prm3_4 = reg_uprm3_4 
if reg_cfh3_4>1 replace reg_prm3_4 = reg_uprm3_4/reg_cfh3_4
gen reg_prm4_5 = reg_uprm4_5 
if reg_cfh4_5>1 replace reg_prm4_5 = reg_uprm4_5/reg_cfh4_5
gen reg_prm5_6 = reg_uprm5_6 
if reg_cfh5_6>1 replace reg_prm5_6 = reg_uprm5_6/reg_cfh5_6
gen reg_prm6_7 = reg_uprm6_7 
if reg_cfh6_7>1 replace reg_prm6_7 = reg_uprm6_7/reg_cfh6_7
gen reg_prm7_8 = reg_uprm7_8 
if reg_cfh7_8>1 replace reg_prm7_8 = reg_uprm7_8/reg_cfh7_8
gen reg_prm8_9 = reg_uprm8_9 
if reg_cfh8_9>1 replace reg_prm8_9 = reg_uprm8_9/reg_cfh8_9
gen reg_prm9_10 = reg_uprm9_10 
if reg_cfh9_10>1 replace reg_prm9_10 = reg_uprm9_10/reg_cfh9_10
gen reg_prm10_11 = reg_uprm10_11 
if reg_cfh10_11>1 replace reg_prm10_11 = reg_uprm10_11/reg_cfh10_11
gen reg_prm11_12 = reg_uprm11_12 
if reg_cfh11_12>1 replace reg_prm11_12 = reg_uprm11_12/reg_cfh11_12
gen reg_prm12_grad = reg_uprm12_grad
if reg_cfh12_grad>1 replace reg_prm12_grad = reg_uprm12_grad/reg_cfh12_grad

*Regional Capped Promotion Rate (PR) girls **********************************************
gen reg_prf1_2 = reg_uprf1_2 
if reg_cfh1_2>1 replace reg_prf1_2 = reg_uprf1_2/reg_cfh1_2
gen reg_prf2_3 = reg_uprf2_3 
if reg_cfh2_3>1 replace reg_prf2_3 = reg_uprf2_3/reg_cfh2_3
gen reg_prf3_4 = reg_uprf3_4 
if reg_cfh3_4>1 replace reg_prf3_4 = reg_uprf3_4/reg_cfh3_4
gen reg_prf4_5 = reg_uprf4_5 
if reg_cfh4_5>1 replace reg_prf4_5 = reg_uprf4_5/reg_cfh4_5
gen reg_prf5_6 = reg_uprf5_6 
if reg_cfh5_6>1 replace reg_prf5_6 = reg_uprf5_6/reg_cfh5_6
gen reg_prf6_7 = reg_uprf6_7 
if reg_cfh6_7>1 replace reg_prf6_7 = reg_uprf6_7/reg_cfh6_7
gen reg_prf7_8 = reg_uprf7_8 
if reg_cfh7_8>1 replace reg_prf7_8 = reg_uprf7_8/reg_cfh7_8
gen reg_prf8_9 = reg_uprf8_9 
if reg_cfh8_9>1 replace reg_prf8_9 = reg_uprf8_9/reg_cfh8_9
gen reg_prf9_10 = reg_uprf9_10 
if reg_cfh9_10>1 replace reg_prf9_10 = reg_uprf9_10/reg_cfh9_10
gen reg_prf10_11 = reg_uprf10_11 
if reg_cfh10_11>1 replace reg_prf10_11 = reg_uprf10_11/reg_cfh10_11
gen reg_prf11_12 = reg_uprf11_12 
if reg_cfh11_12>1 replace reg_prf11_12 = reg_uprf11_12/reg_cfh11_12
gen reg_prf12_grad = reg_uprf12_grad
if reg_cfh12_grad>1 replace reg_prf12_grad = reg_uprf12_grad/reg_cfh12_grad

*Regional Capped Promotion Rate (PR) boys & girls ***************************************
gen reg_prt1_2 = reg_uprt1_2 
if reg_cfh1_2>1 replace reg_prt1_2 = reg_uprt1_2/reg_cfh1_2
gen reg_prt2_3 = reg_uprt2_3 
if reg_cfh2_3>1 replace reg_prt2_3 = reg_uprt2_3/reg_cfh2_3
gen reg_prt3_4 = reg_uprt3_4 
if reg_cfh3_4>1 replace reg_prt3_4 = reg_uprt3_4/reg_cfh3_4
gen reg_prt4_5 = reg_uprt4_5 
if reg_cfh4_5>1 replace reg_prt4_5 = reg_uprt4_5/reg_cfh4_5
gen reg_prt5_6 = reg_uprt5_6 
if reg_cfh5_6>1 replace reg_prt5_6 = reg_uprt5_6/reg_cfh5_6
gen reg_prt6_7 = reg_uprt6_7 
if reg_cfh6_7>1 replace reg_prt6_7 = reg_uprt6_7/reg_cfh6_7
gen reg_prt7_8 = reg_uprt7_8 
if reg_cfh7_8>1 replace reg_prt7_8 = reg_uprt7_8/reg_cfh7_8
gen reg_prt8_9 = reg_uprt8_9 
if reg_cfh8_9>1 replace reg_prt8_9 = reg_uprt8_9/reg_cfh8_9
gen reg_prt9_10 = reg_uprt9_10 
if reg_cfh9_10>1 replace reg_prt9_10 = reg_uprt9_10/reg_cfh9_10
gen reg_prt10_11 = reg_uprt10_11 
if reg_cfh10_11>1 replace reg_prt10_11 = reg_uprt10_11/reg_cfh10_11
gen reg_prt11_12 = reg_uprt11_12 
if reg_cfh11_12>1 replace reg_prt11_12 = reg_uprt11_12/reg_cfh11_12
gen reg_prt12_grad = reg_uprt12_grad
if reg_cfh12_grad>1 replace reg_prt12_grad = reg_uprt12_grad/reg_cfh12_grad

*Regional Capped Repetition Rate (RR) for boys ******************************************
gen reg_rrm1_2 = reg_urrm1_2 
if reg_cfh1_2>1 replace reg_rrm1_2 = reg_urrm1_2/reg_cfh1_2
gen reg_rrm2_3 = reg_urrm2_3 
if reg_cfh2_3>1 replace reg_rrm2_3 = reg_urrm2_3/reg_cfh2_3
gen reg_rrm3_4 = reg_urrm3_4 
if reg_cfh3_4>1 replace reg_rrm3_4 = reg_urrm3_4/reg_cfh3_4
gen reg_rrm4_5 = reg_urrm4_5 
if reg_cfh4_5>1 replace reg_rrm4_5 = reg_urrm4_5/reg_cfh4_5
gen reg_rrm5_6 = reg_urrm5_6 
if reg_cfh5_6>1 replace reg_rrm5_6 = reg_urrm5_6/reg_cfh5_6
gen reg_rrm6_7 = reg_urrm6_7 
if reg_cfh6_7>1 replace reg_rrm6_7 = reg_urrm6_7/reg_cfh6_7
gen reg_rrm7_8 = reg_urrm7_8 
if reg_cfh7_8>1 replace reg_rrm7_8 = reg_urrm7_8/reg_cfh7_8
gen reg_rrm8_9 = reg_urrm8_9 
if reg_cfh8_9>1 replace reg_rrm8_9 = reg_urrm8_9/reg_cfh8_9 
gen reg_rrm9_10 = reg_urrm9_10 
if reg_cfh9_10>1 replace reg_rrm9_10 = reg_urrm9_10/reg_cfh9_10
gen reg_rrm10_11 = reg_urrm10_11 
if reg_cfh10_11>1 replace reg_rrm10_11 = reg_urrm10_11/reg_cfh10_11
gen reg_rrm11_12 = reg_urrm11_12 
if reg_cfh11_12>1 replace reg_rrm11_12 = reg_urrm11_12/reg_cfh11_12
gen reg_rrm12_grad = reg_urrm12_grad 
if reg_cfh12_grad>1 replace reg_rrm12_grad = reg_urrm12_grad/reg_cfh12_grad

*Regional Capped Repetition Rate (RR) for girls ******************************************
gen reg_rrf1_2 = reg_urrf1_2 
if reg_cfh1_2>1 replace reg_rrf1_2 = reg_urrf1_2/reg_cfh1_2
gen reg_rrf2_3 = reg_urrf2_3 
if reg_cfh2_3>1 replace reg_rrf2_3 = reg_urrf2_3/reg_cfh2_3
gen reg_rrf3_4 = reg_urrf3_4 
if reg_cfh3_4>1 replace reg_rrf3_4 = reg_urrf3_4/reg_cfh3_4
gen reg_rrf4_5 = reg_urrf4_5 
if reg_cfh4_5>1 replace reg_rrf4_5 = reg_urrf4_5/reg_cfh4_5
gen reg_rrf5_6 = reg_urrf5_6 
if reg_cfh5_6>1 replace reg_rrf5_6 = reg_urrf5_6/reg_cfh5_6
gen reg_rrf6_7 = reg_urrf6_7 
if reg_cfh6_7>1 replace reg_rrf6_7 = reg_urrf6_7/reg_cfh6_7
gen reg_rrf7_8 = reg_urrf7_8 
if reg_cfh7_8>1 replace reg_rrf7_8 = reg_urrf7_8/reg_cfh7_8
gen reg_rrf8_9 = reg_urrf8_9 
if reg_cfh8_9>1 replace reg_rrf8_9 = reg_urrf8_9/reg_cfh8_9 
gen reg_rrf9_10 = reg_urrf9_10 
if reg_cfh9_10>1 replace reg_rrf9_10 = reg_urrf9_10/reg_cfh9_10
gen reg_rrf10_11 = reg_urrf10_11 
if reg_cfh10_11>1 replace reg_rrf10_11 = reg_urrf10_11/reg_cfh10_11
gen reg_rrf11_12 = reg_urrf11_12 
if reg_cfh11_12>1 replace reg_rrf11_12 = reg_urrf11_12/reg_cfh11_12
gen reg_rrf12_grad = reg_urrf12_grad 
if reg_cfh12_grad>1 replace reg_rrf12_grad = reg_urrf12_grad/reg_cfh12_grad

*Regional Capped Repetition Rate (RR) for boys & girls***********************************
gen reg_rrt1_2 = reg_urrt1_2 
if reg_cfh1_2>1 replace reg_rrt1_2 = reg_urrt1_2/reg_cfh1_2
gen reg_rrt2_3 = reg_urrt2_3 
if reg_cfh2_3>1 replace reg_rrt2_3 = reg_urrt2_3/reg_cfh2_3
gen reg_rrt3_4 = reg_urrt3_4 
if reg_cfh3_4>1 replace reg_rrt3_4 = reg_urrt3_4/reg_cfh3_4
gen reg_rrt4_5 = reg_urrt4_5 
if reg_cfh4_5>1 replace reg_rrt4_5 = reg_urrt4_5/reg_cfh4_5
gen reg_rrt5_6 = reg_urrt5_6 
if reg_cfh5_6>1 replace reg_rrt5_6 = reg_urrt5_6/reg_cfh5_6
gen reg_rrt6_7 = reg_urrt6_7 
if reg_cfh6_7>1 replace reg_rrt6_7 = reg_urrt6_7/reg_cfh6_7
gen reg_rrt7_8 = reg_urrt7_8 
if reg_cfh7_8>1 replace reg_rrt7_8 = reg_urrt7_8/reg_cfh7_8
gen reg_rrt8_9 = reg_urrt8_9 
if reg_cfh8_9>1 replace reg_rrt8_9 = reg_urrt8_9/reg_cfh8_9 
gen reg_rrt9_10 = reg_urrt9_10 
if reg_cfh9_10>1 replace reg_rrt9_10 = reg_urrt9_10/reg_cfh9_10
gen reg_rrt10_11 = reg_urrt10_11 
if reg_cfh10_11>1 replace reg_rrt10_11 = reg_urrt10_11/reg_cfh10_11
gen reg_rrt11_12 = reg_urrt11_12 
if reg_cfh11_12>1 replace reg_rrt11_12 = reg_urrt11_12/reg_cfh11_12
gen reg_rrt12_grad = reg_urrt12_grad 
if reg_cfh12_grad>1 replace reg_rrt12_grad = reg_urrt12_grad/reg_cfh12_grad

*Regional Capped Dropout Rate (DR) for boys *********************************************
gen reg_drm1_2 = 1 - (reg_prm1_2+reg_rrm1_2)
gen reg_drm2_3 = 1 - (reg_prm2_3+reg_rrm2_3)
gen reg_drm3_4 = 1 - (reg_prm3_4+reg_rrm3_4)
gen reg_drm4_5 = 1 - (reg_prm4_5+reg_rrm4_5)
gen reg_drm5_6 = 1 - (reg_prm5_6+reg_rrm5_6)
gen reg_drm6_7 = 1 - (reg_prm6_7+reg_rrm6_7)
gen reg_drm7_8 = 1 - (reg_prm7_8+reg_rrm7_8)
gen reg_drm8_9 = 1 - (reg_prm8_9+reg_rrm8_9) 
gen reg_drm9_10 = 1 - (reg_prm9_10+reg_rrm9_10)
gen reg_drm10_11 = 1 - (reg_prm10_11+reg_rrm10_11)
gen reg_drm11_12 = 1 - (reg_prm11_12+reg_rrm11_12)
gen reg_drm12_grad = 1 - (reg_prm12_grad+reg_rrm12_grad)

*Regional Capped Dropout Rate (DR) for girls ********************************************
gen reg_drf1_2 = 1 - (reg_prf1_2+reg_rrf1_2)
gen reg_drf2_3 = 1 - (reg_prf2_3+reg_rrf2_3)
gen reg_drf3_4 = 1 - (reg_prf3_4+reg_rrf3_4)
gen reg_drf4_5 = 1 - (reg_prf4_5+reg_rrf4_5)
gen reg_drf5_6 = 1 - (reg_prf5_6+reg_rrf5_6)
gen reg_drf6_7 = 1 - (reg_prf6_7+reg_rrf6_7)
gen reg_drf7_8 = 1 - (reg_prf7_8+reg_rrf7_8)
gen reg_drf8_9 = 1 - (reg_prf8_9+reg_rrf8_9) 
gen reg_drf9_10 = 1 - (reg_prf9_10+reg_rrf9_10)
gen reg_drf10_11 = 1 - (reg_prf10_11+reg_rrf10_11)
gen reg_drf11_12 = 1 - (reg_prf11_12+reg_rrf11_12)
gen reg_drf12_grad = 1 - (reg_prf12_grad+reg_rrf12_grad)

*Regional Capped Dropout Rate (DR) for boys & girls ***************************************
gen reg_drt1_2 = 1 - (reg_prt1_2+reg_rrt1_2)
gen reg_drt2_3 = 1 - (reg_prt2_3+reg_rrt2_3)
gen reg_drt3_4 = 1 - (reg_prt3_4+reg_rrt3_4)
gen reg_drt4_5 = 1 - (reg_prt4_5+reg_rrt4_5)
gen reg_drt5_6 = 1 - (reg_prt5_6+reg_rrt5_6)
gen reg_drt6_7 = 1 - (reg_prt6_7+reg_rrt6_7)
gen reg_drt7_8 = 1 - (reg_prt7_8+reg_rrt7_8)
gen reg_drt8_9 = 1 - (reg_prt8_9+reg_rrt8_9) 
gen reg_drt9_10 = 1 - (reg_prt9_10+reg_rrt9_10)
gen reg_drt10_11 = 1 - (reg_prt10_11+reg_rrt10_11)
gen reg_drt11_12 = 1 - (reg_prt11_12+reg_rrt11_12)
gen reg_drt12_grad = 1 - (reg_prt12_grad+reg_rrt12_grad)

*Regional GPI for PR, RR and DR *********************************************************
gen gpi_reg_pr1_2 = reg_prf1_2/reg_prm1_2
gen gpi_reg_pr2_3 = reg_prf2_3/reg_prm2_3
gen gpi_reg_pr3_4 = reg_prf3_4/reg_prm3_4
gen gpi_reg_pr4_5 = reg_prf4_5/reg_prm4_5
gen gpi_reg_pr5_6 = reg_prf5_6/reg_prm5_6
gen gpi_reg_pr6_7 = reg_prf6_7/reg_prm6_7
gen gpi_reg_pr7_8 = reg_prf7_8/reg_prm7_8
gen gpi_reg_pr8_9 = reg_prf8_9/reg_prm8_9
gen gpi_reg_pr9_10 = reg_prf9_10/reg_prm9_10
gen gpi_reg_pr10_11 = reg_prf10_11/reg_prm10_11
gen gpi_reg_pr11_12 = reg_prf11_12/reg_prm11_12
gen gpi_reg_pr12_grad = reg_prf12_grad/reg_prm12_grad

gen gpi_reg_rr1_2 = reg_rrf1_2/reg_rrm1_2
gen gpi_reg_rr2_3 = reg_rrf2_3/reg_rrm2_3
gen gpi_reg_rr3_4 = reg_rrf3_4/reg_rrm3_4
gen gpi_reg_rr4_5 = reg_rrf4_5/reg_rrm4_5
gen gpi_reg_rr5_6 = reg_rrf5_6/reg_rrm5_6
gen gpi_reg_rr6_7 = reg_rrf6_7/reg_rrm6_7
gen gpi_reg_rr7_8 = reg_rrf7_8/reg_rrm7_8
gen gpi_reg_rr8_9 = reg_rrf8_9/reg_rrm8_9
gen gpi_reg_rr9_10 = reg_rrf9_10/reg_rrm9_10
gen gpi_reg_rr10_11 = reg_rrf10_11/reg_rrm10_11
gen gpi_reg_rr11_12 = reg_rrf11_12/reg_rrm11_12
gen gpi_reg_rr12_grad = reg_rrf12_grad/reg_rrm12_grad

gen gpi_reg_dr1_2 = reg_drf1_2/reg_drm1_2
gen gpi_reg_dr2_3 = reg_drf2_3/reg_drm2_3
gen gpi_reg_dr3_4 = reg_drf3_4/reg_drm3_4
gen gpi_reg_dr4_5 = reg_drf4_5/reg_drm4_5
gen gpi_reg_dr5_6 = reg_drf5_6/reg_drm5_6
gen gpi_reg_dr6_7 = reg_drf6_7/reg_drm6_7
gen gpi_reg_dr7_8 = reg_drf7_8/reg_drm7_8
gen gpi_reg_dr8_9 = reg_drf8_9/reg_drm8_9
gen gpi_reg_dr9_10 = reg_drf9_10/reg_drm9_10
gen gpi_reg_dr10_11 = reg_drf10_11/reg_drm10_11
gen gpi_reg_dr11_12 = reg_drf11_12/reg_drm11_12
gen gpi_reg_dr12_grad = reg_drf12_grad/reg_drm12_grad
					   

					   
* Testing for summation of promotion, repetition, dropout rates equalling 100%

gen reg_test_2 = reg_prt1_2 + reg_rrt1_2 + reg_drt1_2
gen reg_test_3 = reg_prt2_3 + reg_rrt2_3 + reg_drt2_3
gen reg_test_4 = reg_prt3_4 + reg_rrt3_4 + reg_drt3_4 
gen reg_test_5 = reg_prt4_5 + reg_rrt4_5 + reg_drt4_5 
gen reg_test_6 = reg_prt5_6 + reg_rrt5_6 + reg_drt5_6
gen reg_test_7 = reg_prt6_7 + reg_rrt6_7 + reg_drt6_7
gen reg_test_8 = reg_prt7_8 + reg_rrt7_8 + reg_drt7_8
gen reg_test_9 = reg_prt8_9 + reg_rrt8_9 + reg_drt8_9
gen reg_test_10 = reg_prt9_10 + reg_rrt9_10 + reg_drt9_10
gen reg_test_11 = reg_prt10_11 + reg_rrt10_11 + reg_drt10_11
gen reg_test_12 = reg_prt11_12 + reg_rrt11_12 + reg_drt11_12
gen reg_test_13 = reg_prt12_grad + reg_rrt12_grad + reg_drt12_grad

gen reg_test_2x = "False"
replace reg_test_2x = "True" if reg_test_2==1
replace reg_test_2x = "n/a" if reg_test_2==0

gen reg_test_3x = "False"
replace reg_test_3x = "True" if reg_test_3==1
replace reg_test_3x = "n/a" if reg_test_3==0

gen reg_test_4x = "False"
replace reg_test_4x = "True" if reg_test_4==1
replace reg_test_4x = "n/a" if reg_test_4==0

gen reg_test_5x = "False"
replace reg_test_5x = "True" if reg_test_5==1
replace reg_test_5x = "n/a" if reg_test_5==0

gen reg_test_6x = "False"
replace reg_test_6x = "True" if reg_test_6==1
replace reg_test_6x = "n/a" if reg_test_6==0

gen reg_test_7x = "False"
replace reg_test_7x = "True" if reg_test_7==1
replace reg_test_7x = "n/a" if reg_test_7==0

gen reg_test_8x = "False"
replace reg_test_8x = "True" if reg_test_8==1
replace reg_test_8x = "n/a" if reg_test_8==0

gen reg_test_9x = "False"
replace reg_test_9x = "True" if reg_test_9==1
replace reg_test_9x = "n/a" if reg_test_9==0

gen reg_test_10x = "False"
replace reg_test_10x = "True" if reg_test_10==1
replace reg_test_10x = "n/a" if reg_test_10==0

gen reg_test_11x = "False"
replace reg_test_11x = "True" if reg_test_11==1
replace reg_test_11x = "n/a" if reg_test_11==0

gen reg_test_12x = "False"
replace reg_test_12x = "True" if reg_test_12==1
replace reg_test_12x = "n/a" if reg_test_12==0

gen reg_test_13x = "False"
replace reg_test_13x = "True" if reg_test_13==1
replace reg_test_13x = "n/a" if reg_test_13==0



foreach var in reg_test_2x reg_test_3x reg_test_4x reg_test_5x reg_test_6x reg_test_7x reg_test_8x reg_test_9x reg_test_10x reg_test_11x reg_test_12x reg_test_13x {
tabulate `var'
}					   

*Impute missing data for school enrolment 2017 and 2018 using regional Promotion Rate

*pupils boys 2018
replace g1m_2018 = round(g1m_2017 * 1.05) if g1m_2018 == 0
replace g2m_2018 = round(g1m_2017 * reg_prm1_2) if g2m_2018 == 0
replace g3m_2018 = round(g2m_2017 * reg_prm2_3) if g3m_2018 == 0
replace g4m_2018 = round(g3m_2017 * reg_prm3_4) if g4m_2018 == 0
replace g5m_2018 = round(g4m_2017 * reg_prm4_5) if g5m_2018 == 0
replace g6m_2018 = round(g5m_2017 * reg_prm5_6) if g6m_2018 == 0
replace g7m_2018 = round(g6m_2017 * reg_prm6_7) if g7m_2018 == 0
replace g8m_2018 = round(g7m_2017 * reg_prm7_8) if g8m_2018 == 0
replace g9m_2018 = round(g8m_2017 * reg_prm8_9) if g9m_2018 == 0
replace g10m_2018 = round(g9m_2017 * reg_prm9_10) if g10m_2018 == 0
replace g11m_2018 = round(g10m_2017 * reg_prm10_11) if g11m_2018 == 0
replace g12m_2018 = round(g11m_2017 * reg_prm11_12) if g12m_2018 == 0

* pupils girls 2018
replace g1f_2018 = round(g1f_2017 * 1.05) if g1f_2018 == 0
replace g2f_2018 = round(g1f_2017 * reg_prf1_2) if g2f_2018 == 0
replace g3f_2018 = round(g2f_2017 * reg_prf2_3) if g3f_2018 == 0
replace g4f_2018 = round(g3f_2017 * reg_prf3_4) if g4f_2018 == 0
replace g5f_2018 = round(g4f_2017 * reg_prf4_5) if g5f_2018 == 0
replace g6f_2018 = round(g5f_2017 * reg_prf5_6) if g6f_2018 == 0
replace g7f_2018 = round(g6f_2017 * reg_prf6_7) if g7f_2018 == 0
replace g8f_2018 = round(g7f_2017 * reg_prf7_8) if g8f_2018 == 0
replace g9f_2018 = round(g8f_2017 * reg_prf8_9) if g9f_2018 == 0
replace g10f_2018 = round(g9f_2017 * reg_prf9_10) if g10f_2018 == 0
replace g11f_2018 = round(g10f_2017 * reg_prf10_11) if g11f_2018 == 0
replace g12f_2018 = round(g11f_2017 * reg_prf11_12) if g12f_2018 == 0

* pupils total 2018
replace g1t_2018 = g1m_2018 + g1f_2018
replace g2t_2018 = g2m_2018 + g2f_2018
replace g3t_2018 = g3m_2018 + g3f_2018
replace g4t_2018 = g4m_2018 + g4f_2018
replace g5t_2018 = g5m_2018 + g5f_2018
replace g6t_2018 = g6m_2018 + g6f_2018
replace g7t_2018 = g7m_2018 + g7f_2018
replace g8t_2018 = g8m_2018 + g8f_2018
replace g9t_2018 = g9m_2018 + g9f_2018
replace g10t_2018 = g10m_2018 + g10f_2018
replace g11t_2018 = g11m_2018 + g11f_2018
replace g12t_2018 = g12m_2018 + g12f_2018



*pupils boys 2017
replace g1m_2017 = round(g2m_2018/reg_prm1_2) if g1m_2017 == 0
replace g2m_2017 = round(g3m_2018/reg_prm2_3) if g2m_2017 == 0
replace g3m_2018 = round(g4m_2018/reg_prm3_4) if g3m_2017 == 0
replace g4m_2017 = round(g5m_2018/reg_prm4_5) if g4m_2017 == 0
replace g5m_2017 = round(g6m_2018/reg_prm5_6) if g5m_2017 == 0
replace g6m_2017 = round(g7m_2018/reg_prm6_7) if g6m_2017 == 0
replace g7m_2017 = round(g8m_2018/reg_prm7_8) if g7m_2017 == 0
replace g8m_2017 = round(g9m_2018/reg_prm8_9) if g8m_2017 == 0
replace g9m_2017 = round(g10m_2018/reg_prm9_10) if g9m_2017 == 0
replace g10m_2017 = round(g11m_2018/reg_prm10_11) if g10m_2017 == 0
replace g11m_2017 = round(g12m_2018/reg_prm11_12) if g11m_2017 == 0
replace g12m_2017 = round(g12m_2018/1.05) if g12m_2017 == 0

* pupils girls 2018
replace g1f_2017 = round(g2f_2018/reg_prf1_2) if g1f_2017 == 0
replace g2f_2017 = round(g3f_2018/reg_prf2_3) if g2f_2017 == 0
replace g3f_2018 = round(g4f_2018/reg_prf3_4) if g3f_2017 == 0
replace g4f_2017 = round(g5f_2018/reg_prf4_5) if g4f_2017 == 0
replace g5f_2017 = round(g6f_2018/reg_prf5_6) if g5f_2017 == 0
replace g6f_2017 = round(g7f_2018/reg_prf6_7) if g6f_2017 == 0
replace g7f_2017 = round(g8f_2018/reg_prf7_8) if g7f_2017 == 0
replace g8f_2017 = round(g9f_2018/reg_prf8_9) if g8f_2017 == 0
replace g9f_2017 = round(g10f_2018/reg_prf9_10) if g9f_2017 == 0
replace g10f_2017 = round(g11f_2018/reg_prf10_11) if g10f_2017 == 0
replace g11f_2017 = round(g12f_2018/reg_prf11_12) if g11f_2017 == 0
replace g12f_2017 = round(g12f_2018/1.05) if g12f_2017 == 0

* pupils total 2018
replace g1t_2017 = g1m_2017 + g1f_2017
replace g2t_2017 = g2m_2017 + g2f_2017
replace g3t_2017 = g3m_2017 + g3f_2017
replace g4t_2017 = g4m_2017 + g4f_2017
replace g5t_2017 = g5m_2017 + g5f_2017
replace g6t_2017 = g6m_2017 + g6f_2017
replace g7t_2017 = g7m_2017 + g7f_2017
replace g8t_2017 = g8m_2017 + g8f_2017
replace g9t_2017 = g9m_2017 + g9f_2017
replace g10t_2017 = g10m_2017 + g10f_2017
replace g11t_2017 = g11m_2017 + g11f_2017
replace g12t_2017 = g12m_2017 + g12f_2017





*******************************************************************************
*SCHOOLS
*******************************************************************************


*Uncapped Promotion Rate (uPR) for boys ****************************************
gen uprm1_2 = (g2m_2018-repg2m_2018)/g1m_2017
gen uprm2_3 = (g3m_2018-repg3m_2018)/g2m_2017
gen uprm3_4 = (g4m_2018-repg4m_2018)/g3m_2017
gen uprm4_5 = (g5m_2018-repg5m_2018)/g4m_2017
gen uprm5_6 = (g6m_2018-repg6m_2018)/g5m_2017
gen uprm6_7 = (g7m_2018-repg7m_2018)/g6m_2017
gen uprm7_8 = (g8m_2018-repg8m_2018)/g7m_2017
gen uprm8_9 = (g9m_2018-repg9m_2018)/g8m_2017 
gen uprm9_10 = (g10m_2018-repg10m_2018)/g9m_2017
gen uprm10_11 = (g11m_2018-repg11m_2018)/g10m_2017
gen uprm11_12 = (g12m_2018-repg12m_2018)/g11m_2017
gen uprm12_grad = grad_g12m_2018/g12m_2017

replace uprm1_2 = 0 if (elevel == 2 | elevel == 3)
replace uprm2_3 = 0 if (elevel == 2 | elevel == 3)
replace uprm3_4 = 0 if (elevel == 2 | elevel == 3)
replace uprm4_5 = 0 if (elevel == 2 | elevel == 3)
replace uprm5_6 = 0 if (elevel == 2 | elevel == 3)
replace uprm6_7 = 0 if (elevel == 2 | elevel == 3)
replace uprm7_8 = grad_g7m_2018/g7m_2017 if elevel == 1    /* uncapped graduation rate for primary schools only */
replace uprm7_8 = 0 if (elevel == 2 | elevel == 3)
replace uprm8_9 = 0 if (elevel == 1) 
replace uprm9_10 = 0 if (elevel == 1)
replace uprm10_11 = 0 if (elevel == 1)
replace uprm11_12 = 0 if (elevel == 1)
replace uprm12_grad = 0 if (elevel == 1)   /* uncapped graduation rate for secondary technical and non-technical schools only */

*Uncapped Promotion Rate (uPR) for girl ****************************************
gen uprf1_2 = (g2f_2018-repg2f_2018)/g1f_2017
gen uprf2_3 = (g3f_2018-repg3f_2018)/g2f_2017
gen uprf3_4 = (g4f_2018-repg4f_2018)/g3f_2017
gen uprf4_5 = (g5f_2018-repg5f_2018)/g4f_2017
gen uprf5_6 = (g6f_2018-repg6f_2018)/g5f_2017
gen uprf6_7 = (g7f_2018-repg7f_2018)/g6f_2017
gen uprf7_8 = (g8f_2018-repg8f_2018)/g7f_2017 
gen uprf8_9 = (g9f_2018-repg9f_2018)/g8f_2017 
gen uprf9_10 = (g10f_2018-repg10f_2018)/g9f_2017
gen uprf10_11 = (g11f_2018-repg11f_2018)/g10f_2017
gen uprf11_12 = (g12f_2018-repg12f_2018)/g11f_2017
gen uprf12_grad = grad_g12f_2018/g12f_2017

replace uprf1_2 = 0 if (elevel== 2 | elevel == 3 )
replace uprf2_3 = 0 if (elevel== 2 | elevel == 3 )
replace uprf3_4 = 0 if (elevel== 2 | elevel == 3 )
replace uprf4_5 = 0 if (elevel== 2 | elevel == 3 )
replace uprf5_6 = 0 if (elevel== 2 | elevel == 3 )
replace uprf6_7 = 0 if (elevel== 2 | elevel == 3 )
replace uprf7_8 = grad_g7f_2018/g7f_2017 if elevel == 1
replace uprf7_8 = 0 if (elevel == 2 | elevel == 3)
replace uprf8_9 = 0 if (elevel == 1) 
replace uprf9_10 = 0 if (elevel == 1)
replace uprf10_11 = 0 if (elevel == 1)
replace uprf11_12 = 0 if (elevel == 1)
replace uprf12_grad = 0 if (elevel == 1)

*Uncapped Promotion Rate (uPR) for boys | girls ********************************
gen uprt1_2 = (g2t_2018-repg2t_2018)/g1t_2017
gen uprt2_3 = (g3t_2018-repg3t_2018)/g2t_2017
gen uprt3_4 = (g4t_2018-repg4t_2018)/g3t_2017
gen uprt4_5 = (g5t_2018-repg5t_2018)/g4t_2017
gen uprt5_6 = (g6t_2018-repg6t_2018)/g5t_2017
gen uprt6_7 = (g7t_2018-repg7t_2018)/g6t_2017
gen uprt7_8 = (g8t_2018-repg8t_2018)/g7t_2017
gen uprt8_9 = (g9t_2018-repg9t_2018)/g8t_2017 
gen uprt9_10 = (g10t_2018-repg10t_2018)/g9t_2017
gen uprt10_11 = (g11t_2018-repg11t_2018)/g10t_2017
gen uprt11_12 = (g12t_2018-repg12t_2018)/g11t_2017
gen uprt12_grad = grad_g12t_2018/g12t_2017

replace uprt1_2 = 0 if (elevel == 2 | elevel == 3 )
replace uprt2_3 = 0 if (elevel == 2 | elevel == 3 )
replace uprt3_4 = 0 if (elevel == 2 | elevel == 3 )
replace uprt4_5 = 0 if (elevel == 2 | elevel == 3 )
replace uprt5_6 = 0 if (elevel == 2 | elevel == 3 )
replace uprt6_7 = 0 if (elevel == 2 | elevel == 3 )
replace uprt7_8 = grad_g7t_2018/g7t_2017 if elevel == 1
replace uprt7_8 = 0 if (elevel == 2 | elevel == 3)
replace uprt8_9 = 0 if (elevel == 1) 
replace uprt9_10 = 0 if (elevel == 1)
replace uprt10_11 = 0 if (elevel == 1)
replace uprt11_12 = 0 if (elevel == 1)
replace uprt12_grad = 0 if (elevel == 1)

*Uncapped Repetition Rate (uRR) for boys ***************************************
gen urrm1_2 = repg1m_2018/g1m_2017
gen urrm2_3 = repg2m_2018/g2m_2017
gen urrm3_4 = repg3m_2018/g3m_2017
gen urrm4_5 = repg4m_2018/g4m_2017
gen urrm5_6 = repg5m_2018/g5m_2017
gen urrm6_7 = repg6m_2018/g6m_2017
gen urrm7_8 = repg7m_2018/g7m_2017
gen urrm8_9 = repg8m_2018/g8m_2017 
gen urrm9_10 = repg9m_2018/g9m_2017
gen urrm10_11 = repg10m_2018/g10m_2017
gen urrm11_12 = repg11m_2018/g11m_2017
gen urrm12_grad = repg12m_2018/g12m_2017

replace urrm1_2 = 0 if (elevel == 2 | elevel == 3 )
replace urrm2_3 = 0 if (elevel == 2 | elevel == 3 )
replace urrm3_4 = 0 if (elevel == 2 | elevel == 3 )
replace urrm4_5 = 0 if (elevel == 2 | elevel == 3 )
replace urrm5_6 = 0 if (elevel == 2 | elevel == 3 )
replace urrm6_7 = 0 if (elevel == 2 | elevel == 3 )
replace urrm7_8 = 0 if (elevel == 2 | elevel == 3 )
replace urrm8_9 = 0 if (elevel == 1) 
replace urrm9_10 = 0 if (elevel == 1)
replace urrm10_11 = 0 if (elevel == 1)
replace urrm11_12 = 0 if (elevel == 1)
replace urrm12_grad = 0 if (elevel == 1)

*Uncapped Repetition Rate (uRR) for girls **************************************
gen urrf1_2 = repg1f_2018/g1f_2017
gen urrf2_3 = repg2f_2018/g2f_2017
gen urrf3_4 = repg3f_2018/g3f_2017
gen urrf4_5 = repg4f_2018/g4f_2017
gen urrf5_6 = repg5f_2018/g5f_2017
gen urrf6_7 = repg6f_2018/g6f_2017
gen urrf7_8 = repg7f_2018/g7f_2017
gen urrf8_9 = repg8f_2018/g8f_2017 
gen urrf9_10 = repg9f_2018/g9f_2017
gen urrf10_11 = repg10f_2018/g10f_2017
gen urrf11_12 = repg11f_2018/g11f_2017
gen urrf12_grad = repg12f_2018/g12f_2017

replace urrf1_2 = 0 if (elevel == 2 | elevel == 3 )
replace urrf2_3 = 0 if (elevel == 2 | elevel == 3 )
replace urrf3_4 = 0 if (elevel == 2 | elevel == 3 )
replace urrf4_5 = 0 if (elevel == 2 | elevel == 3 )
replace urrf5_6 = 0 if (elevel == 2 | elevel == 3 )
replace urrf6_7 = 0 if (elevel == 2 | elevel == 3 )
replace urrf7_8 = 0 if (elevel == 2 | elevel == 3 )
replace urrf8_9 = 0 if (elevel == 1) 
replace urrf9_10 = 0 if (elevel == 1)
replace urrf10_11 = 0 if (elevel == 1)
replace urrf11_12 = 0 if (elevel == 1)
replace urrf12_grad = 0 if (elevel == 1)

*Uncapped Repetition Rate (uRR) for boys | girls *******************************
gen urrt1_2 = repg1t_2018/g1t_2017
gen urrt2_3 = repg2t_2018/g2t_2017
gen urrt3_4 = repg3t_2018/g3t_2017
gen urrt4_5 = repg4t_2018/g4t_2017
gen urrt5_6 = repg5t_2018/g5t_2017
gen urrt6_7 = repg6t_2018/g6t_2017
gen urrt7_8 = repg7t_2018/g7t_2017
gen urrt8_9 = repg8t_2018/g8t_2017 
gen urrt9_10 = repg9t_2018/g9t_2017
gen urrt10_11 = repg10t_2018/g10t_2017
gen urrt11_12 = repg11t_2018/g11t_2017
gen urrt12_grad = repg12t_2018/g12t_2017

replace urrt1_2 = 0 if (elevel == 2 | elevel == 3 )
replace urrt2_3 = 0 if (elevel == 2 | elevel == 3 )
replace urrt3_4 = 0 if (elevel == 2 | elevel == 3 )
replace urrt4_5 = 0 if (elevel == 2 | elevel == 3 )
replace urrt5_6 = 0 if (elevel == 2 | elevel == 3 )
replace urrt6_7 = 0 if (elevel == 2 | elevel == 3 )
replace urrt7_8 = 0 if (elevel == 2 | elevel == 3 )
replace urrt8_9 = 0 if (elevel == 1) 
replace urrt9_10 = 0 if (elevel == 1)
replace urrt10_11 = 0 if (elevel == 1)
replace urrt11_12 = 0 if (elevel == 1)
replace urrt12_grad = 0 if (elevel == 1)

*Uncapped Dropout Rate (uDR) for boys ***************************************
gen udrm1_2 = 1 - (uprm1_2+urrm1_2)
gen udrm2_3 = 1 - (uprm2_3+urrm2_3)
gen udrm3_4 = 1 - (uprm3_4+urrm3_4)
gen udrm4_5 = 1 - (uprm4_5+urrm4_5)
gen udrm5_6 = 1 - (uprm5_6+urrm5_6)
gen udrm6_7 = 1 - (uprm6_7+urrm6_7)
gen udrm7_8 = 1 - (uprm7_8+urrm7_8)
gen udrm8_9 = 1 - (uprm8_9+urrm8_9) 
gen udrm9_10 = 1 - (uprm9_10+urrm9_10)
gen udrm10_11 = 1 - (uprm10_11+urrm10_11)
gen udrm11_12 = 1 - (uprm11_12+urrm11_12)
gen udrm12_grad = 1 - (uprm12_grad+urrm12_grad)

replace udrm1_2 = 0 if (elevel == 2 | elevel == 3 )
replace udrm2_3 = 0 if (elevel == 2 | elevel == 3 )
replace udrm3_4 = 0 if (elevel == 2 | elevel == 3 )
replace udrm4_5 = 0 if (elevel == 2 | elevel == 3 )
replace udrm5_6 = 0 if (elevel == 2 | elevel == 3 )
replace udrm6_7 = 0 if (elevel == 2 | elevel == 3 )
replace udrm7_8 = 0 if (elevel == 2 | elevel == 3 )
replace udrm8_9 = 0 if (elevel == 1) 
replace udrm9_10 = 0 if (elevel == 1)
replace udrm10_11 = 0 if (elevel == 1)
replace udrm12_grad = 0 if (elevel == 1)

*Uncapped Dropout Rate (uDR) for girls ***************************************
gen udrf1_2 = 1 - (uprf1_2+urrf1_2)
gen udrf2_3 = 1 - (uprf2_3+urrf2_3)
gen udrf3_4 = 1 - (uprf3_4+urrf3_4)
gen udrf4_5 = 1 - (uprf4_5+urrf4_5)
gen udrf5_6 = 1 - (uprf5_6+urrf5_6)
gen udrf6_7 = 1 - (uprf6_7+urrf6_7)
gen udrf7_8 = 1 - (uprf7_8+urrf7_8)
gen udrf8_9 = 1 - (uprf8_9+urrf8_9) 
gen udrf9_10 = 1 - (uprf9_10+urrf9_10)
gen udrf10_11 = 1 - (uprf10_11+urrf10_11)
gen udrf11_12 = 1 - (uprf11_12+urrf11_12)
gen udrf12_grad = 1 - (uprf12_grad+urrf12_grad)

replace udrf1_2 = 0 if (elevel == 2 | elevel == 3 )
replace udrf2_3 = 0 if (elevel == 2 | elevel == 3 )
replace udrf3_4 = 0 if (elevel == 2 | elevel == 3 )
replace udrf4_5 = 0 if (elevel == 2 | elevel == 3 )
replace udrf5_6 = 0 if (elevel == 2 | elevel == 3 )
replace udrf6_7 = 0 if (elevel == 2 | elevel == 3 )
replace udrf7_8 = 0 if (elevel == 2 | elevel == 3 )
replace udrf8_9 = 0 if (elevel == 1) 
replace udrf9_10 = 0 if (elevel == 1)
replace udrf10_11 = 0 if (elevel == 1)
replace udrf11_12 = 0 if (elevel == 1)
replace udrf12_grad = 0 if (elevel == 1)

*Uncapped Dropout Rate (uDR) for boys & girls ***************************************
gen udrt1_2 = 1 - (uprt1_2+urrt1_2)
gen udrt2_3 = 1 - (uprt2_3+urrt2_3)
gen udrt3_4 = 1 - (uprt3_4+urrt3_4)
gen udrt4_5 = 1 - (uprt4_5+urrt4_5)
gen udrt5_6 = 1 - (uprt5_6+urrt5_6)
gen udrt6_7 = 1 - (uprt6_7+urrt6_7)
gen udrt7_8 = 1 - (uprt7_8+urrt7_8)
gen udrt8_9 = 1 - (uprt8_9+urrt8_9) 
gen udrt9_10 = 1 - (uprt9_10+urrt9_10)
gen udrt10_11 = 1 - (uprt10_11+urrt10_11)
gen udrt11_12 = 1 - (uprt11_12+urrt11_12)
gen udrt12_grad = 1 - (uprt12_grad+urrt12_grad)

replace udrt1_2 = 0 if (elevel == 2 | elevel == 3 )
replace udrt2_3 = 0 if (elevel == 2 | elevel == 3 )
replace udrt3_4 = 0 if (elevel == 2 | elevel == 3 )
replace udrt4_5 = 0 if (elevel == 2 | elevel == 3 )
replace udrt5_6 = 0 if (elevel == 2 | elevel == 3 )
replace udrt6_7 = 0 if (elevel == 2 | elevel == 3 )
replace udrt7_8 = 0 if (elevel == 2 | elevel == 3 )
replace udrt8_9 = 0 if (elevel == 1) 
replace udrt9_10 = 0 if (elevel == 1)
replace udrt10_11 = 0 if (elevel == 1)
replace udrt11_12 = 0 if (elevel == 1)
replace udrt12_grad = 0 if (elevel == 1)

*Capping factors boys **********************************************************
gen cfm1_2 = ((g2m_2018-repg2m_2018)/g1m_2017)+(repg1m_2018/g1m_2017)
gen cfm2_3 = ((g3m_2018-repg3m_2018)/g2m_2017)+(repg2m_2018/g2m_2017)
gen cfm3_4 = ((g4m_2018-repg4m_2018)/g3m_2017)+(repg3m_2018/g3m_2017)
gen cfm4_5 = ((g5m_2018-repg5m_2018)/g4m_2017)+(repg4m_2018/g4m_2017)
gen cfm5_6 = ((g6m_2018-repg6m_2018)/g5m_2017)+(repg5m_2018/g5m_2017)
gen cfm6_7 = ((g7m_2018-repg7m_2018)/g6m_2017)+(repg6m_2018/g6m_2017)
gen cfm7_8 = ((g8m_2018-repg8m_2018)/g7m_2017)+(repg7m_2018/g7m_2017) 
gen cfm8_9 = ((g9m_2018-repg9m_2018)/g8m_2017)+(repg8m_2018/g8m_2017)
gen cfm9_10 = ((g10m_2018-repg10m_2018)/g9m_2017)+(repg9m_2018/g9m_2017)
gen cfm10_11 = ((g11m_2018-repg11m_2018)/g10m_2017)+(repg10m_2018/g10m_2017)
gen cfm11_12 = ((g12m_2018-repg12m_2018)/g11m_2017)+(repg11m_2018/g11m_2017)
gen cfm12_grad = ((grad_g12m_2018-0)/g12m_2017)+(repg12m_2018/g12m_2017)

replace cfm1_2 = 0 if (elevel == 2 | elevel == 3 )
replace cfm2_3 = 0 if (elevel == 2 | elevel == 3 )
replace cfm3_4 = 0 if (elevel == 2 | elevel == 3 )
replace cfm4_5 = 0 if (elevel == 2 | elevel == 3 )
replace cfm5_6 = 0 if (elevel == 2 | elevel == 3 )
replace cfm6_7 = 0 if (elevel == 2 | elevel == 3 )
replace cfm7_8 = 0 if elevel == 3 
replace cfm7_8 = ((grad_g7m_2018-0)/g7m_2017)+(repg7m_2018/g7m_2017) if elevel == 1
replace cfm8_9 = 0 if (elevel == 1)
replace cfm9_10 = 0 if (elevel == 1)
replace cfm10_11 = 0 if (elevel == 1)
replace cfm11_12 = 0 if (elevel == 1)
replace cfm12_grad = 0 if (elevel == 1)

*Capping factors girls *********************************************************
gen cff1_2 = ((g2f_2018-repg2f_2018)/g1f_2017)+(repg1f_2018/g1f_2017)
gen cff2_3 = ((g3f_2018-repg3f_2018)/g2f_2017)+(repg2f_2018/g2f_2017)
gen cff3_4 = ((g4f_2018-repg4f_2018)/g3f_2017)+(repg3f_2018/g3f_2017)
gen cff4_5 = ((g5f_2018-repg5f_2018)/g4f_2017)+(repg4f_2018/g4f_2017)
gen cff5_6 = ((g6f_2018-repg6f_2018)/g5f_2017)+(repg5f_2018/g5f_2017)
gen cff6_7 = ((g7f_2018-repg7f_2018)/g6f_2017)+(repg6f_2018/g6f_2017)
gen cff7_8 = ((g8f_2018-repg8f_2018)/g7f_2017)+(repg7f_2018/g7f_2017) 
gen cff8_9 = ((g9f_2018-repg9f_2018)/g8f_2017)+(repg8f_2018/g8f_2017)
gen cff9_10 = ((g10f_2018-repg10f_2018)/g9f_2017)+(repg9f_2018/g9f_2017)
gen cff10_11 = ((g11f_2018-repg11f_2018)/g10f_2017)+(repg10f_2018/g10f_2017)
gen cff11_12 = ((g12f_2018-repg12f_2018)/g11f_2017)+(repg11f_2018/g11f_2017)
gen cff12_grad = ((grad_g12f_2018-0)/g12f_2017)+(repg12f_2018/g12f_2017)

replace cff1_2 = 0 if (elevel == 2 | elevel == 3 )
replace cff2_3 = 0 if (elevel == 2 | elevel == 3 )
replace cff3_4 = 0 if (elevel == 2 | elevel == 3 )
replace cff4_5 = 0 if (elevel == 2 | elevel == 3 )
replace cff5_6 = 0 if (elevel == 2 | elevel == 3 )
replace cff6_7 = 0 if (elevel == 2 | elevel == 3 )
replace cff7_8 = 0 if elevel == 3 
replace cff7_8 = ((grad_g7f_2018-0)/g7f_2017)+(repg7f_2018/g7f_2017) if elevel == 1
replace cff8_9 = 0 if (elevel == 1)
replace cff9_10 = 0 if (elevel == 1)
replace cff10_11 = 0 if (elevel == 1)
replace cff11_12 = 0 if (elevel == 1)
replace cff12_grad = 0 if (elevel == 1)

*Capping factors higher ********************************************************
gen cfh1_2 = cff1_2  
if cfm1_2 > cff1_2 replace cfh1_2 = cfm1_2
if (elevel== 2 | elevel == 3) replace cfh1_2 = 0
 
gen cfh2_3 = cff2_3 
if cfm2_3 > cff2_3 replace cfh2_3 = cfm2_3
if (elevel== 2 | elevel == 3) replace cfh2_3 = 0 

gen cfh3_4 = cff3_4 
if cfm3_4 > cff3_4 replace cfh3_4 = cfm3_4
if (elevel== 2 | elevel == 3) replace cfh3_4 = 0 

gen cfh4_5 = cff4_5 
if cfm4_5 > cff4_5 replace cfh4_5 = cfm4_5
if (elevel== 2 | elevel == 3) replace cfh4_5 = 0 

gen cfh5_6 = cff5_6 
if cfm5_6  >cff5_6 replace cfh5_6 = cfm5_6
if (elevel== 2 | elevel == 3) replace cfh5_6 = 0 

gen cfh6_7 = cff6_7 
if cfm6_7 > cff6_7 replace cfh6_7 = cfm6_7
if (elevel== 2 | elevel == 3) replace cfh6_7 = 0 

gen cfh7_8 = cff7_8 
if cfm7_8 > cff7_8 replace cfh7_8 = cfm7_8
if (elevel== 2 | elevel == 3) replace cfh7_8 = 0 

gen cfh8_9 = cff8_9 
if cfm8_9 > cff8_9 replace cfh8_9 = cfm8_9
if elevel == 1 replace cfh8_9 = 0 

gen cfh9_10 = cff9_10 
if cfm9_10 > cff9_10 replace cfh9_10 = cfm9_10
if elevel == 1 replace cfh9_10 = 0 

gen cfh10_11 = cff10_11 
if cfm10_11 > cff10_11 replace cfh10_11 = cfm10_11
if elevel == 1 replace cfh10_11 = 0 

gen cfh11_12 = cff11_12 
if cfm11_12 > cff11_12 replace cfh11_12 = cfm11_12
if elevel == 1 replace cfh11_12 = 0 

gen cfh12_grad = cff12_grad                                   /* Higher capping factor for g12 graduates */
if cfm12_grad > cff12_grad replace cfh12_grad = cfm12_grad 
if elevel == 1 replace cfh12_grad = 0 


*Capped Promotion Rate (PR) boys ***********************************************
gen prm1_2 = uprm1_2 
if cfh1_2>1 replace prm1_2 = uprm1_2/cfh1_2
if prm1_2>1 replace prm1_2 = reg_prm1_2

gen prm2_3 = uprm2_3 
if cfh2_3>1 replace prm2_3 = uprm2_3/cfh2_3
if prm2_3>1 replace prm2_3 = reg_prm2_3

gen prm3_4 = uprm3_4 
if cfh3_4>1 replace prm3_4 = uprm3_4/cfh3_4
if prm3_4>1 replace prm3_4 = reg_prm3_4

gen prm4_5 = uprm4_5 
if cfh4_5>1 replace prm4_5 = uprm4_5/cfh4_5
if prm4_5>1 replace prm4_5 = reg_prm4_5

gen prm5_6 = uprm5_6 
if cfh5_6>1 replace prm5_6 = uprm5_6/cfh5_6
if prm5_6>1 replace prm5_6 = reg_prm5_6

gen prm6_7 = uprm6_7 
if cfh6_7>1 replace prm6_7 = uprm6_7/cfh6_7
if prm6_7>1 replace prm6_7 = reg_prm6_7

gen prm7_8 = uprm7_8 
if cfh7_8>1 replace prm7_8 = uprm7_8/cfh7_8
if prm7_8>1 replace prm7_8 = reg_prm7_8

gen prm8_9 = uprm8_9 
if cfh8_9>1 replace prm8_9 = uprm8_9/cfh8_9
if prm8_9>1 replace prm8_9 = reg_prm8_9

gen prm9_10 = uprm9_10 
if cfh9_10>1 replace prm9_10 = uprm9_10/cfh9_10
if prm9_10>1 replace prm9_10 = reg_prm9_10

gen prm10_11 = uprm10_11 
if cfh10_11>1 replace prm10_11 = uprm10_11/cfh10_11
if prm10_11>1 replace prm10_11 = reg_prm10_11

gen prm11_12 = uprm11_12 
if cfh11_12>1 replace prm11_12 = uprm11_12/cfh11_12
if prm11_12>1 replace prm11_12 = reg_prm11_12

gen prm12_grad = uprm12_grad
if cfh12_grad>1 replace prm12_grad = uprm12_grad/cfh12_grad
if prm12_grad>1 replace prm12_grad = reg_prm12_grad

*Capped Promotion Rate (PR) girls **********************************************
gen prf1_2 = uprf1_2 
if cfh1_2>1 replace prf1_2 = uprf1_2/cfh1_2
if prf1_2>1 replace prf1_2 = reg_prf1_2

gen prf2_3 = uprf2_3 
if cfh2_3>1 replace prf2_3 = uprf2_3/cfh2_3
if prf2_3>1 replace prf2_3 = reg_prf2_3

gen prf3_4 = uprf3_4 
if cfh3_4>1 replace prf3_4 = uprf3_4/cfh3_4
if prf3_4>1 replace prf3_4 = reg_prf3_4

gen prf4_5 = uprf4_5 
if cfh4_5>1 replace prf4_5 = uprf4_5/cfh4_5
if prf4_5>1 replace prf4_5 = reg_prf4_5

gen prf5_6 = uprf5_6 
if cfh5_6>1 replace prf5_6 = uprf5_6/cfh5_6
if prf5_6>1 replace prf5_6 = reg_prf5_6

gen prf6_7 = uprf6_7 
if cfh6_7>1 replace prf6_7 = uprf6_7/cfh6_7
if prf6_7>1 replace prf6_7 = reg_prf6_7

gen prf7_8 = uprf7_8 
if cfh7_8>1 replace prf7_8 = uprf7_8/cfh7_8
if prf7_8>1 replace prf7_8 = reg_prf7_8

gen prf8_9 = uprf8_9 
if cfh8_9>1 replace prf8_9 = uprf8_9/cfh8_9
if prf8_9>1 replace prf8_9 = reg_prf8_9

gen prf9_10 = uprf9_10 
if cfh9_10>1 replace prf9_10 = uprf9_10/cfh9_10
if prf9_10>1 replace prf9_10 = reg_prf9_10

gen prf10_11 = uprf10_11 
if cfh10_11>1 replace prf10_11 = uprf10_11/cfh10_11
if prf10_11>1 replace prf10_11 = reg_prf10_11

gen prf11_12 = uprf11_12 
if cfh11_12>1 replace prf11_12 = uprf11_12/cfh11_12
if prf11_12>1 replace prf11_12 = reg_prf11_12

gen prf12_grad = uprf12_grad
if cfh12_grad>1 replace prf12_grad = uprf12_grad/cfh12_grad
if prf12_grad>1 replace prf12_grad = reg_prf12_grad

*Capped Promotion Rate (PR) boys & girls ***************************************
gen prt1_2 = uprt1_2 
if cfh1_2>1 replace prt1_2 = uprt1_2/cfh1_2
if prt1_2>1 replace prt1_2 = reg_prt1_2

gen prt2_3 = uprt2_3 
if cfh2_3>1 replace prt2_3 = uprt2_3/cfh2_3
if prt2_3>1 replace prt2_3 = reg_prt2_3

gen prt3_4 = uprt3_4 
if cfh3_4>1 replace prt3_4 = uprt3_4/cfh3_4
if prt3_4>1 replace prt3_4 = reg_prt3_4

gen prt4_5 = uprt4_5 
if cfh4_5>1 replace prt4_5 = uprt4_5/cfh4_5
if prt4_5>1 replace prt4_5 = reg_prt4_5

gen prt5_6 = uprt5_6 
if cfh5_6>1 replace prt5_6 = uprt5_6/cfh5_6
if prt5_6>1 replace prt5_6 = reg_prt5_6

gen prt6_7 = uprt6_7 
if cfh6_7>1 replace prt6_7 = uprt6_7/cfh6_7
if prt6_7>1 replace prt6_7 = reg_prt6_7

gen prt7_8 = uprt7_8 
if cfh7_8>1 replace prt7_8 = uprt7_8/cfh7_8
if prt7_8>1 replace prt7_8 = reg_prt7_8

gen prt8_9 = uprt8_9 
if cfh8_9>1 replace prt8_9 = uprt8_9/cfh8_9
if prt8_9>1 replace prt8_9 = reg_prt8_9

gen prt9_10 = uprt9_10 
if cfh9_10>1 replace prt9_10 = uprt9_10/cfh9_10
if prt9_10>1 replace prt9_10 = reg_prt9_10

gen prt10_11 = uprt10_11 
if cfh10_11>1 replace prt10_11 = uprt10_11/cfh10_11
if prt10_11>1 replace prt10_11 = reg_prt10_11

gen prt11_12 = uprt11_12 
if cfh11_12>1 replace prt11_12 = uprt11_12/cfh11_12
if prt11_12>1 replace prt11_12 = reg_prt11_12

gen prt12_grad = uprt12_grad
if cfh12_grad>1 replace prt12_grad = uprt12_grad/cfh12_grad
if prt12_grad>1 replace prt12_grad = reg_prt12_grad

*Capped Repetition Rate (RR) for boys ******************************************
gen rrm1_2 = urrm1_2 
if cfh1_2>1 replace rrm1_2 = urrm1_2/cfh1_2
gen rrm2_3 = urrm2_3 
if cfh2_3>1 replace rrm2_3 = urrm2_3/cfh2_3
gen rrm3_4 = urrm3_4 
if cfh3_4>1 replace rrm3_4 = urrm3_4/cfh3_4
gen rrm4_5 = urrm4_5 
if cfh4_5>1 replace rrm4_5 = urrm4_5/cfh4_5
gen rrm5_6 = urrm5_6 
if cfh5_6>1 replace rrm5_6 = urrm5_6/cfh5_6
gen rrm6_7 = urrm6_7 
if cfh6_7>1 replace rrm6_7 = urrm6_7/cfh6_7
gen rrm7_8 = urrm7_8 
if cfh7_8>1 replace rrm7_8 = urrm7_8/cfh7_8
gen rrm8_9 = urrm8_9 
if cfh8_9>1 replace rrm8_9 = urrm8_9/cfh8_9 
gen rrm9_10 = urrm9_10 
if cfh9_10>1 replace rrm9_10 = urrm9_10/cfh9_10
gen rrm10_11 = urrm10_11 
if cfh10_11>1 replace rrm10_11 = urrm10_11/cfh10_11
gen rrm11_12 = urrm11_12 
if cfh11_12>1 replace rrm11_12 = urrm11_12/cfh11_12
gen rrm12_grad = urrm12_grad 
if cfh12_grad>1 replace rrm12_grad = urrm12_grad/cfh12_grad

*substitute mRR with regional RR if PR is above 100%
if uprm1_2 > 1 replace rrm1_2 = reg_rrm1_2
if uprm2_3 > 1 replace rrm2_3 = reg_rrm2_3
if uprm3_4 > 1 replace rrm3_4 = reg_rrm3_4
if uprm4_5 > 1 replace rrm4_5 = reg_rrm4_5
if uprm5_6 > 1 replace rrm5_6 = reg_rrm5_6
if uprm6_7 > 1 replace rrm6_7 = reg_rrm6_7
if uprm7_8 > 1 replace rrm7_8 = reg_rrm7_8
if uprm8_9 > 1 replace rrm8_9 = reg_rrm8_9
if uprm9_10 > 1 replace rrm9_10 = reg_rrm9_10
if uprm10_11 > 1 replace rrm10_11 = reg_rrm10_11
if uprm11_12 > 1 replace rrm11_12 = reg_rrm11_12
if uprm12_grad > 1 replace rrm12_grad = reg_rrm12_grad

*Capped Repetition Rate (RR) for girls ******************************************
gen rrf1_2 = urrf1_2 
if cfh1_2>1 replace rrf1_2 = urrf1_2/cfh1_2
gen rrf2_3 = urrf2_3 
if cfh2_3>1 replace rrf2_3 = urrf2_3/cfh2_3
gen rrf3_4 = urrf3_4 
if cfh3_4>1 replace rrf3_4 = urrf3_4/cfh3_4
gen rrf4_5 = urrf4_5 
if cfh4_5>1 replace rrf4_5 = urrf4_5/cfh4_5
gen rrf5_6 = urrf5_6 
if cfh5_6>1 replace rrf5_6 = urrf5_6/cfh5_6
gen rrf6_7 = urrf6_7 
if cfh6_7>1 replace rrf6_7 = urrf6_7/cfh6_7
gen rrf7_8 = urrf7_8 
if cfh7_8>1 replace rrf7_8 = urrf7_8/cfh7_8
gen rrf8_9 = urrf8_9 
if cfh8_9>1 replace rrf8_9 = urrf8_9/cfh8_9 
gen rrf9_10 = urrf9_10 
if cfh9_10>1 replace rrf9_10 = urrf9_10/cfh9_10
gen rrf10_11 = urrf10_11 
if cfh10_11>1 replace rrf10_11 = urrf10_11/cfh10_11
gen rrf11_12 = urrf11_12 
if cfh11_12>1 replace rrf11_12 = urrf11_12/cfh11_12
gen rrf12_grad = urrf12_grad 
if cfh12_grad>1 replace rrf12_grad = urrf12_grad/cfh12_grad

*substitute fRR with regional RR if PR is above 100%
if uprf1_2 > 1 replace rrf1_2 = reg_rrf1_2
if uprf2_3 > 1 replace rrf2_3 = reg_rrf2_3
if uprf3_4 > 1 replace rrf3_4 = reg_rrf3_4
if uprf4_5 > 1 replace rrf4_5 = reg_rrf4_5
if uprf5_6 > 1 replace rrf5_6 = reg_rrf5_6
if uprf6_7 > 1 replace rrf6_7 = reg_rrf6_7
if uprf7_8 > 1 replace rrf7_8 = reg_rrf7_8
if uprf8_9 > 1 replace rrf8_9 = reg_rrf8_9
if uprf9_10 > 1 replace rrf9_10 = reg_rrf9_10
if uprf10_11 > 1 replace rrf10_11 = reg_rrf10_11
if uprf11_12 > 1 replace rrf11_12 = reg_rrf11_12
if uprf12_grad > 1 replace rrf12_grad = reg_rrf12_grad


*Capped Repetition Rate (RR) for boys & girls***********************************
gen rrt1_2 = urrt1_2 
if cfh1_2>1 replace rrt1_2 = urrt1_2/cfh1_2
gen rrt2_3 = urrt2_3 
if cfh2_3>1 replace rrt2_3 = urrt2_3/cfh2_3
gen rrt3_4 = urrt3_4 
if cfh3_4>1 replace rrt3_4 = urrt3_4/cfh3_4
gen rrt4_5 = urrt4_5 
if cfh4_5>1 replace rrt4_5 = urrt4_5/cfh4_5
gen rrt5_6 = urrt5_6 
if cfh5_6>1 replace rrt5_6 = urrt5_6/cfh5_6
gen rrt6_7 = urrt6_7 
if cfh6_7>1 replace rrt6_7 = urrt6_7/cfh6_7
gen rrt7_8 = urrt7_8 
if cfh7_8>1 replace rrt7_8 = urrt7_8/cfh7_8
gen rrt8_9 = urrt8_9 
if cfh8_9>1 replace rrt8_9 = urrt8_9/cfh8_9 
gen rrt9_10 = urrt9_10 
if cfh9_10>1 replace rrt9_10 = urrt9_10/cfh9_10
gen rrt10_11 = urrt10_11 
if cfh10_11>1 replace rrt10_11 = urrt10_11/cfh10_11
gen rrt11_12 = urrt11_12 
if cfh11_12>1 replace rrt11_12 = urrt11_12/cfh11_12
gen rrt12_grad = urrt12_grad 
if cfh12_grad>1 replace rrt12_grad = urrt12_grad/cfh12_grad

*substitute tRR with regional RR if PR is above 100%
if uprt1_2 > 1 replace rrt1_2 = reg_rrt1_2
if uprt2_3 > 1 replace rrt2_3 = reg_rrt2_3
if uprt3_4 > 1 replace rrt3_4 = reg_rrt3_4
if uprt4_5 > 1 replace rrt4_5 = reg_rrt4_5
if uprt5_6 > 1 replace rrt5_6 = reg_rrt5_6
if uprt6_7 > 1 replace rrt6_7 = reg_rrt6_7
if uprt7_8 > 1 replace rrt7_8 = reg_rrt7_8
if uprt8_9 > 1 replace rrt8_9 = reg_rrt8_9
if uprt9_10 > 1 replace rrt9_10 = reg_rrt9_10
if uprt10_11 > 1 replace rrt10_11 = reg_rrt10_11
if uprt11_12 > 1 replace rrt11_12 = reg_rrt11_12
if uprt12_grad > 1 replace rrt12_grad = reg_rrt12_grad


*Capped Dropout Rate (DR) for boys *********************************************
gen drm1_2 = 1 - (prm1_2+rrm1_2)
gen drm2_3 = 1 - (prm2_3+rrm2_3)
gen drm3_4 = 1 - (prm3_4+rrm3_4)
gen drm4_5 = 1 - (prm4_5+rrm4_5)
gen drm5_6 = 1 - (prm5_6+rrm5_6)
gen drm6_7 = 1 - (prm6_7+rrm6_7)
gen drm7_8 = 1 - (prm7_8+rrm7_8)
gen drm8_9 = 1 - (prm8_9+rrm8_9) 
gen drm9_10 = 1 - (prm9_10+rrm9_10)
gen drm10_11 = 1 - (prm10_11+rrm10_11)
gen drm11_12 = 1 - (prm11_12+rrm11_12)
gen drm12_grad = 1 - (prm12_grad+rrm12_grad)

replace drm1_2 = 0 if (elevel == 2 | elevel == 3 )
replace drm2_3 = 0 if (elevel == 2 | elevel == 3 )
replace drm3_4 = 0 if (elevel == 2 | elevel == 3 )
replace drm4_5 = 0 if (elevel == 2 | elevel == 3 )
replace drm5_6 = 0 if (elevel == 2 | elevel == 3 )
replace drm6_7 = 0 if (elevel == 2 | elevel == 3 )
replace drm7_8 = 0 if (elevel == 1)
replace drm8_9 = 0 if (elevel == 1)
replace drm9_10 = 0 if (elevel == 1)
replace drm10_11 = 0 if (elevel == 1)
replace drm11_12 = 0 if (elevel == 1)
replace drm12_grad = 0 if (elevel == 1)

*Capped Dropout Rate (DR) for girls ********************************************
gen drf1_2 = 1 - (prf1_2+rrf1_2)
gen drf2_3 = 1 - (prf2_3+rrf2_3)
gen drf3_4 = 1 - (prf3_4+rrf3_4)
gen drf4_5 = 1 - (prf4_5+rrf4_5)
gen drf5_6 = 1 - (prf5_6+rrf5_6)
gen drf6_7 = 1 - (prf6_7+rrf6_7)
gen drf7_8 = 1 - (prf7_8+rrf7_8)
gen drf8_9 = 1 - (prf8_9+rrf8_9) 
gen drf9_10 = 1 - (prf9_10+rrf9_10)
gen drf10_11 = 1 - (prf10_11+rrf10_11)
gen drf11_12 = 1 - (prf11_12+rrf11_12)
gen drf12_grad = 1 - (prf12_grad+rrf12_grad)

replace drf1_2 = 0 if (elevel == 2 | elevel == 3 )
replace drf2_3 = 0 if (elevel == 2 | elevel == 3 )
replace drf3_4 = 0 if (elevel == 2 | elevel == 3 )
replace drf4_5 = 0 if (elevel == 2 | elevel == 3 )
replace drf5_6 = 0 if (elevel == 2 | elevel == 3 )
replace drf6_7 = 0 if (elevel == 2 | elevel == 3 )
replace drf7_8 = 0 if (elevel == 1)
replace drf8_9 = 0 if (elevel == 1)
replace drf9_10 = 0 if (elevel == 1)
replace drf10_11 = 0 if (elevel == 1)
replace drf11_12 = 0 if (elevel == 1)
replace drf12_grad = 0 if (elevel == 1)

*Capped Dropout Rate (DR) for boys & girls ***************************************
gen drt1_2 = 1 - (prt1_2+rrt1_2)
gen drt2_3 = 1 - (prt2_3+rrt2_3)
gen drt3_4 = 1 - (prt3_4+rrt3_4)
gen drt4_5 = 1 - (prt4_5+rrt4_5)
gen drt5_6 = 1 - (prt5_6+rrt5_6)
gen drt6_7 = 1 - (prt6_7+rrt6_7)
gen drt7_8 = 1 - (prt7_8+rrt7_8)
gen drt8_9 = 1 - (prt8_9+rrt8_9) 
gen drt9_10 = 1 - (prt9_10+rrt9_10)
gen drt10_11 = 1 - (prt10_11+rrt10_11)
gen drt11_12 = 1 - (prt11_12+rrt11_12)
gen drt12_grad = 1 - (prt12_grad+rrt12_grad)

replace drt1_2 = 0 if (elevel == 2 | elevel == 3 )
replace drt2_3 = 0 if (elevel == 2 | elevel == 3 )
replace drt3_4 = 0 if (elevel == 2 | elevel == 3 )
replace drt4_5 = 0 if (elevel == 2 | elevel == 3 )
replace drt5_6 = 0 if (elevel == 2 | elevel == 3 )
replace drt6_7 = 0 if (elevel == 2 | elevel == 3 )
replace drt7_8 = 0 if (elevel == 1)
replace drt8_9 = 0 if (elevel == 1)
replace drt9_10 = 0 if (elevel == 1)
replace drt10_11 = 0 if (elevel == 1)
replace drt11_12 = 0 if (elevel == 1)
replace drt12_grad = 0 if (elevel == 1)

*GPI for PR, RR and DR *********************************************************
gen gpi_pr1_2 = prf1_2/prm1_2
gen gpi_pr2_3 = prf2_3/prm2_3
gen gpi_pr3_4 = prf3_4/prm3_4
gen gpi_pr4_5 = prf4_5/prm4_5
gen gpi_pr5_6 = prf5_6/prm5_6
gen gpi_pr6_7 = prf6_7/prm6_7
gen gpi_pr7_8 = prf7_8/prm7_8
gen gpi_pr8_9 = prf8_9/prm8_9
gen gpi_pr9_10 = prf9_10/prm9_10
gen gpi_pr10_11 = prf10_11/prm10_11
gen gpi_pr11_12 = prf11_12/prm11_12
gen gpi_pr12_grad = prf12_grad/prm12_grad

gen gpi_rr1_2 = rrf1_2/rrm1_2
gen gpi_rr2_3 = rrf2_3/rrm2_3
gen gpi_rr3_4 = rrf3_4/rrm3_4
gen gpi_rr4_5 = rrf4_5/rrm4_5
gen gpi_rr5_6 = rrf5_6/rrm5_6
gen gpi_rr6_7 = rrf6_7/rrm6_7
gen gpi_rr7_8 = rrf7_8/rrm7_8
gen gpi_rr8_9 = rrf8_9/rrm8_9
gen gpi_rr9_10 = rrf9_10/rrm9_10
gen gpi_rr10_11 = rrf10_11/rrm10_11
gen gpi_rr11_12 = rrf11_12/rrm11_12
gen gpi_rr12_grad = rrf12_grad/rrm12_grad

gen gpi_dr1_2 = drf1_2/drm1_2
gen gpi_dr2_3 = drf2_3/drm2_3
gen gpi_dr3_4 = drf3_4/drm3_4
gen gpi_dr4_5 = drf4_5/drm4_5
gen gpi_dr5_6 = drf5_6/drm5_6
gen gpi_dr6_7 = drf6_7/drm6_7
gen gpi_dr7_8 = drf7_8/drm7_8
gen gpi_dr8_9 = drf8_9/drm8_9
gen gpi_dr9_10 = drf9_10/drm9_10
gen gpi_dr10_11 = drf10_11/drm10_11
gen gpi_dr11_12 = drf11_12/drm11_12
gen gpi_dr12_grad = drf12_grad/drm12_grad


*label all var *****************************************************************

label variable uprm1_2 "Boys Uncapped Promotion Rate grade 1 to 2"
label variable uprm2_3 "Boys Uncapped Promotion Rate grade 2 to 3" 
label variable uprm3_4 "Boys Uncapped Promotion Rate grade 3 to 4"
label variable uprm4_5 "Boys Uncapped Promotion Rate grade 4 to 5"
label variable uprm5_6 "Boys Uncapped Promotion Rate grade 5 to 6"
label variable uprm6_7 "Boys Uncapped Promotion Rate grade 6 to 7"
label variable uprm7_8 "Boys Uncapped Promotion Rate grade 7 to 8"
label variable uprm8_9 "Boys Uncapped Promotion Rate grade 8 to 9"
label variable uprm9_10 "Boys Uncapped Promotion Rate grade 9 to 10"
label variable uprm10_11 "Boys Uncapped Promotion Rate grade 10 to 11"
label variable uprm11_12 "Boys Uncapped Promotion Rate grade 11 to 12"
label variable uprm12_grad "Boys Uncapped Promotion Rate grade 12 to graduation"

label variable uprf1_2 "Girls Uncapped Promotion Rate grade 1 to 2"
label variable uprf2_3 "Girls Uncapped Promotion Rate grade 2 to 3" 
label variable uprf3_4 "Girls Uncapped Promotion Rate grade 3 to 4"
label variable uprf4_5 "Girls Uncapped Promotion Rate grade 4 to 5"
label variable uprf5_6 "Girls Uncapped Promotion Rate grade 5 to 6"
label variable uprf6_7 "Girls Uncapped Promotion Rate grade 6 to 7"
label variable uprf7_8 "Girls Uncapped Promotion Rate grade 7 to 8"
label variable uprf8_9 "Girls Uncapped Promotion Rate grade 8 to 9"
label variable uprf9_10 "Girls Uncapped Promotion Rate grade 9 to 10"
label variable uprf10_11 "Girls Uncapped Promotion Rate grade 10 to 11"
label variable uprf11_12 "Girls Uncapped Promotion Rate grade 11 to 12"
label variable uprf12_grad "Girls Uncapped Promotion Rate grade 12 to graduation"

label variable uprt1_2 "Boys & girls Uncapped Promotion Rate grade 1 to 2"
label variable uprt2_3 "Boys & girls Uncapped Promotion Rate grade 2 to 3" 
label variable uprt3_4 "Boys & girls Uncapped Promotion Rate grade 3 to 4"
label variable uprt4_5 "Boys & girls Uncapped Promotion Rate grade 4 to 5"
label variable uprt5_6 "Boys & girls Uncapped Promotion Rate grade 5 to 6"
label variable uprt6_7 "Boys & girls Uncapped Promotion Rate grade 6 to 7"
label variable uprt7_8 "Boys & girls Uncapped Promotion Rate grade 7 to 8"
label variable uprt8_9 "Boys & girls Uncapped Promotion Rate grade 8 to 9"
label variable uprt9_10 "Boys & girls Uncapped Promotion Rate grade 9 to 10"
label variable uprt10_11 "Boys & girls Uncapped Promotion Rate grade 10 to 11"
label variable uprt11_12 "Boys & girls Uncapped Promotion Rate grade 11 to 12"
label variable uprt12_grad "Boys & girls Uncapped Promotion Rate grade 12 to graduation"

label variable urrm1_2 "Boys Uncapped Repetition Rate grade 1 to 2"
label variable urrm2_3 "Boys Uncapped Repetition Rate grade 2 to 3" 
label variable urrm3_4 "Boys Uncapped Repetition Rate grade 3 to 4"
label variable urrm4_5 "Boys Uncapped Repetition Rate grade 4 to 5"
label variable urrm5_6 "Boys Uncapped Repetition Rate grade 5 to 6"
label variable urrm6_7 "Boys Uncapped Repetition Rate grade 6 to 7"
label variable urrm7_8 "Boys Uncapped Repetition Rate grade 7 to 8"
label variable urrm8_9 "Boys Uncapped Repetition Rate grade 8 to 9"
label variable urrm9_10 "Boys Uncapped Repetition Rate grade 9 to 10"
label variable urrm10_11 "Boys Uncapped Repetition Rate grade 10 to 11"
label variable urrm11_12 "Boys Uncapped Repetition Rate grade 11 to 12"
label variable urrm12_grad "Boys Uncapped Repetition Rate grade 12 to graduation"

label variable urrf1_2 "Girls Uncapped Repetition Rate grade 1 to 2"
label variable urrf2_3 "Girls Uncapped Repetition Rate grade 2 to 3" 
label variable urrf3_4 "Girls Uncapped Repetition Rate grade 3 to 4"
label variable urrf4_5 "Girls Uncapped Repetition Rate grade 4 to 5"
label variable urrf5_6 "Girls Uncapped Repetition Rate grade 5 to 6"
label variable urrf6_7 "Girls Uncapped Repetition Rate grade 6 to 7"
label variable urrf7_8 "Girls Uncapped Repetition Rate grade 7 to 8"
label variable urrf8_9 "Girls Uncapped Repetition Rate grade 8 to 9"
label variable urrf9_10 "Girls Uncapped Repetition Rate grade 9 to 10"
label variable urrf10_11 "Girls Uncapped Repetition Rate grade 10 to 11"
label variable urrf11_12 "Girls Uncapped Repetition Rate grade 11 to 12"
label variable urrf12_grad "Girls Uncapped Repetition Rate grade 12 to graduation"

label variable urrt1_2 "Boys & girls Uncapped Repetition Rate grade 1 to 2"
label variable urrt2_3 "Boys & girls Uncapped Repetition Rate grade 2 to 3" 
label variable urrt3_4 "Boys & girls Uncapped Repetition Rate grade 3 to 4"
label variable urrt4_5 "Boys & girls Uncapped Repetition Rate grade 4 to 5"
label variable urrt5_6 "Boys & girls Uncapped Repetition Rate grade 5 to 6"
label variable urrt6_7 "Boys & girls Uncapped Repetition Rate grade 6 to 7"
label variable urrt7_8 "Boys & girls Uncapped Repetition Rate grade 7 to 8"
label variable urrt8_9 "Boys & girls Uncapped Repetition Rate grade 8 to 9"
label variable urrt9_10 "Boys & girls Uncapped Repetition Rate grade 9 to 10"
label variable urrt10_11 "Boys & girls Uncapped Repetition Rate grade 10 to 11"
label variable urrt11_12 "Boys & girls Uncapped Repetition Rate grade 11 to 12"
label variable urrt12_grad "Boys & girls Uncapped Repetition Rate grade 12 to graduation"

label variable udrm1_2 "Boys Uncapped Dropout Rate grade 1 to 2" 
label variable udrm2_3 "Boys Uncapped Dropout Rate grade 2 to 3"
label variable udrm3_4 "Boys Uncapped Dropout Rate grade 3 to 4" 
label variable udrm4_5 "Boys Uncapped Dropout Rate grade 4 to 5"
label variable udrm5_6 "Boys Uncapped Dropout Rate grade 5 to 6" 
label variable udrm6_7 "Boys Uncapped Dropout Rate grade 6 to 7"
label variable udrm7_8 "Boys Uncapped Dropout Rate grade 7 to 8"
label variable udrm8_9 "Boys Uncapped Dropout Rate grade 8 to 9"
label variable udrm9_10 "Boys Uncapped Dropout Rate grade 9 to 10"
label variable udrm10_11 "Boys Uncapped Dropout Rate grade 10 to 11"
label variable udrm11_12 "Boys Uncapped Dropout Rate grade 11 to 12"
label variable udrm12_grad "Boys Uncapped Dropout Rate grade 12 to graduation"

label variable udrf1_2 "Girls Uncapped Dropout Rate grade 1 to 2" 
label variable udrf2_3 "Girls Uncapped Dropout Rate grade 2 to 3"
label variable udrf3_4 "Girls Uncapped Dropout Rate grade 3 to 4" 
label variable udrf4_5 "Girls Uncapped Dropout Rate grade 4 to 5"
label variable udrf5_6 "Girls Uncapped Dropout Rate grade 5 to 6" 
label variable udrf6_7 "Girls Uncapped Dropout Rate grade 6 to 7"
label variable udrf7_8 "Girls Uncapped Dropout Rate grade 7 to 8"
label variable udrf8_9 "Girls Uncapped Dropout Rate grade 8 to 9"
label variable udrf9_10 "Girls Uncapped Dropout Rate grade 9 to 10"
label variable udrf10_11 "Girls Uncapped Dropout Rate grade 10 to 11"
label variable udrf11_12 "Girls Uncapped Dropout Rate grade 11 to 12"
label variable udrf12_grad "Girls Uncapped Dropout Rate grade 12 to graduation"

label variable udrt1_2 "Boys & girls Uncapped Dropout Rate grade 1 to 2" 
label variable udrt2_3 "Boys & girls Uncapped Dropout Rate grade 2 to 3"
label variable udrt3_4 "Boys & girls Uncapped Dropout Rate grade 3 to 4" 
label variable udrt4_5 "Boys & girls Uncapped Dropout Rate grade 4 to 5"
label variable udrt5_6 "Boys & girls Uncapped Dropout Rate grade 5 to 6" 
label variable udrt6_7 "Boys & girls Uncapped Dropout Rate grade 6 to 7"
label variable udrt7_8 "Boys & girls Uncapped Dropout Rate grade 7 to 8"
label variable udrt8_9 "Boys & girls Uncapped Dropout Rate grade 8 to 9"
label variable udrt9_10 "Boys & girls Uncapped Dropout Rate grade 9 to 10"
label variable udrt10_11 "Boys & girls Uncapped Dropout Rate grade 10 to 11"
label variable udrt11_12 "Boys & girls Uncapped Dropout Rate grade 11 to 12"
label variable udrt12_grad "Boys & girls Uncapped Dropout Rate grade 12 to graduation"

label variable prm1_2 "Boys Promotion Rate grade 1 to 2"
label variable prm2_3 "Boys Promotion Rate grade 2 to 3" 
label variable prm3_4 "Boys Promotion Rate grade 3 to 4"
label variable prm4_5 "Boys Promotion Rate grade 4 to 5"
label variable prm5_6 "Boys Promotion Rate grade 5 to 6"
label variable prm6_7 "Boys Promotion Rate grade 6 to 7"
label variable prm7_8 "Boys Promotion Rate grade 7 to 8"
label variable prm8_9 "Boys Promotion Rate grade 8 to 9"
label variable prm9_10 "Boys Promotion Rate grade 9 to 10"
label variable prm10_11 "Boys Promotion Rate grade 10 to 11"
label variable prm11_12 "Boys Promotion Rate grade 11 to 12"
label variable prm12_grad "Boys Promotion Rate grade 12 to graduation"

label variable prf1_2 "Girls Promotion Rate grade 1 to 2"
label variable prf2_3 "Girls Promotion Rate grade 2 to 3" 
label variable prf3_4 "Girls Promotion Rate grade 3 to 4"
label variable prf4_5 "Girls Promotion Rate grade 4 to 5"
label variable prf5_6 "Girls Promotion Rate grade 5 to 6"
label variable prf6_7 "Girls Promotion Rate grade 6 to 7"
label variable prf7_8 "Girls Promotion Rate grade 7 to 8"
label variable prf8_9 "Girls Promotion Rate grade 8 to 9"
label variable prf9_10 "Girls Promotion Rate grade 9 to 10"
label variable prf10_11 "Girls Promotion Rate grade 10 to 11"
label variable prf11_12 "Girls Promotion Rate grade 11 to 12"
label variable prf12_grad "Girls Promotion Rate grade 12 to graduation"

label variable prt1_2 "Boys & girls Promotion Rate grade 1 to 2"
label variable prt2_3 "Boys & girls Promotion Rate grade 2 to 3" 
label variable prt3_4 "Boys & girls Promotion Rate grade 3 to 4"
label variable prt4_5 "Boys & girls Promotion Rate grade 4 to 5"
label variable prt5_6 "Boys & girls Promotion Rate grade 5 to 6"
label variable prt6_7 "Boys & girls Promotion Rate grade 6 to 7"
label variable prt7_8 "Boys & girls Promotion Rate grade 7 to 8"
label variable prt8_9 "Boys & girls Promotion Rate grade 8 to 9"
label variable prt9_10 "Boys & girls Promotion Rate grade 9 to 10"
label variable prt10_11 "Boys & girls Promotion Rate grade 10 to 11"
label variable prt11_12 "Boys & girls Promotion Rate grade 11 to 12"
label variable prt12_grad "Boys & girls Promotion Rate grade 12 to graduation"

label variable rrm1_2 "Boys Repetition Rate grade 1 to 2"
label variable rrm2_3 "Boys Repetition Rate grade 2 to 3" 
label variable rrm3_4 "Boys Repetition Rate grade 3 to 4"
label variable rrm4_5 "Boys Repetition Rate grade 4 to 5"
label variable rrm5_6 "Boys Repetition Rate grade 5 to 6"
label variable rrm6_7 "Boys Repetition Rate grade 6 to 7"
label variable rrm7_8 "Boys Repetition Rate grade 7 to 8"
label variable rrm8_9 "Boys Repetition Rate grade 8 to 9"
label variable rrm9_10 "Boys Repetition Rate grade 9 to 10"
label variable rrm10_11 "Boys Repetition Rate grade 10 to 11"
label variable rrm11_12 "Boys Repetition Rate grade 11 to 12"
label variable rrm12_grad "Boys Repetition Rate grade 12 to graduation"

label variable rrf1_2 "Girls Repetition Rate grade 1 to 2"
label variable rrf2_3 "Girls Repetition Rate grade 2 to 3" 
label variable rrf3_4 "Girls Repetition Rate grade 3 to 4"
label variable rrf4_5 "Girls Repetition Rate grade 4 to 5"
label variable rrf5_6 "Girls Repetition Rate grade 5 to 6"
label variable rrf6_7 "Girls Repetition Rate grade 6 to 7"
label variable rrf7_8 "Girls Repetition Rate grade 7 to 8"
label variable rrf8_9 "Girls Repetition Rate grade 8 to 9"
label variable rrf9_10 "Girls Repetition Rate grade 9 to 10"
label variable rrf10_11 "Girls Repetition Rate grade 10 to 11"
label variable rrf11_12 "Girls Repetition Rate grade 11 to 12"
label variable rrf12_grad "Girls Repetition Rate grade 12 to graduation"

label variable rrt1_2 "Boys & girls Repetition Rate grade 1 to 2"
label variable rrt2_3 "Boys & girls Repetition Rate grade 2 to 3" 
label variable rrt3_4 "Boys & girls Repetition Rate grade 3 to 4"
label variable rrt4_5 "Boys & girls Repetition Rate grade 4 to 5"
label variable rrt5_6 "Boys & girls Repetition Rate grade 5 to 6"
label variable rrt6_7 "Boys & girls Repetition Rate grade 6 to 7"
label variable rrt7_8 "Boys & girls Repetition Rate grade 7 to 8"
label variable rrt8_9 "Boys & girls Repetition Rate grade 8 to 9"
label variable rrt9_10 "Boys & girls Repetition Rate grade 9 to 10"
label variable rrt10_11 "Boys & girls Repetition Rate grade 10 to 11"
label variable rrt11_12 "Boys & girls Repetition Rate grade 11 to 12"
label variable rrt12_grad "Boys & girls Repetition Rate grade 12 to graduation"

label variable drm1_2 "Boys Dropout Rate grade 1 to 2" 
label variable drm2_3 "Boys Dropout Rate grade 2 to 3"
label variable drm3_4 "Boys Dropout Rate grade 3 to 4" 
label variable drm4_5 "Boys Dropout Rate grade 4 to 5"
label variable drm5_6 "Boys Dropout Rate grade 5 to 6" 
label variable drm6_7 "Boys Dropout Rate grade 6 to 7"
label variable drm7_8 "Boys Dropout Rate grade 7 to 8"
label variable drm8_9 "Boys Dropout Rate grade 8 to 9"
label variable drm9_10 "Boys Dropout Rate grade 9 to 10"
label variable drm10_11 "Boys Dropout Rate grade 10 to 11"
label variable drm11_12 "Boys Dropout Rate grade 11 to 12"
label variable drm12_grad "Boys Dropout Rate grade 12 to graduation"

label variable drf1_2 "Girls Dropout Rate grade 1 to 2" 
label variable drf2_3 "Girls Dropout Rate grade 2 to 3"
label variable drf3_4 "Girls Dropout Rate grade 3 to 4" 
label variable drf4_5 "Girls Dropout Rate grade 4 to 5"
label variable drf5_6 "Girls Dropout Rate grade 5 to 6" 
label variable drf6_7 "Girls Dropout Rate grade 6 to 7"
label variable drf7_8 "Girls Dropout Rate grade 7 to 8"
label variable drf8_9 "Girls Dropout Rate grade 8 to 9"
label variable drf9_10 "Girls Dropout Rate grade 9 to 10"
label variable drf10_11 "Girls Dropout Rate grade 10 to 11"
label variable drf11_12 "Girls Dropout Rate grade 11 to 12"
label variable drf12_grad "Girls Dropout Rate grade 12 to graduation"

label variable drt1_2 "Boys & girls Dropout Rate grade 1 to 2" 
label variable drt2_3 "Boys & girls Dropout Rate grade 2 to 3"
label variable drt3_4 "Boys & girls Dropout Rate grade 3 to 4" 
label variable drt4_5 "Boys & girls Dropout Rate grade 4 to 5"
label variable drt5_6 "Boys & girls Dropout Rate grade 5 to 6" 
label variable drt6_7 "Boys & girls Dropout Rate grade 6 to 7"
label variable drt7_8 "Boys & girls Dropout Rate grade 7 to 8"
label variable drt8_9 "Boys & girls Dropout Rate grade 8 to 9"
label variable drt9_10 "Boys & girls Dropout Rate grade 9 to 10"
label variable drt10_11 "Boys & girls Dropout Rate grade 10 to 11"
label variable drt11_12 "Boys & girls Dropout Rate grade 11 to 12"
label variable drt12_grad "Boys & girls Dropout Rate grade 12 to graduation"

label variable gpi_pr1_2 "GPI Promotion Rate grade 1 to 2"
label variable gpi_pr2_3 "GPI Promotion Rate grade 2 to 3" 
label variable gpi_pr3_4 "GPI Promotion Rate grade 3 to 4"
label variable gpi_pr4_5 "GPI Promotion Rate grade 4 to 5"
label variable gpi_pr5_6 "GPI Promotion Rate grade 5 to 6"
label variable gpi_pr6_7 "GPI Promotion Rate grade 6 to 7"
label variable gpi_pr7_8 "GPI Promotion Rate grade 7 to 8"
label variable gpi_pr8_9 "GPI Promotion Rate grade 8 to 9"
label variable gpi_pr9_10 "GPI Promotion Rate grade 9 to 10"
label variable gpi_pr10_11 "GPI Promotion Rate grade 10 to 11"
label variable gpi_pr11_12 "GPI Promotion Rate grade 11 to 12"
label variable gpi_pr12_grad "GPI Promotion Rate grade 12 to graduation"

label variable gpi_rr1_2 "GPI Repetition Rate grade 1 to 2"
label variable gpi_rr2_3 "GPI Repetition Rate grade 2 to 3" 
label variable gpi_rr3_4 "GPI Repetition Rate grade 3 to 4"
label variable gpi_rr4_5 "GPI Repetition Rate grade 4 to 5"
label variable gpi_rr5_6 "GPI Repetition Rate grade 5 to 6"
label variable gpi_rr6_7 "GPI Repetition Rate grade 6 to 7"
label variable gpi_rr7_8 "GPI Repetition Rate grade 7 to 8"
label variable gpi_rr8_9 "GPI Repetition Rate grade 8 to 9"
label variable gpi_rr9_10 "GPI Repetition Rate grade 9 to 10"
label variable gpi_rr10_11 "GPI Repetition Rate grade 10 to 11"
label variable gpi_rr11_12 "GPI Repetition Rate grade 11 to 12"
label variable gpi_rr12_grad "GPI Repetition Rate grade 12 to graduation"

label variable gpi_dr1_2 "GPI Dropout Rate grade 1 to 2"
label variable gpi_dr2_3 "GPI Dropout Rate grade 2 to 3" 
label variable gpi_dr3_4 "GPI Dropout Rate grade 3 to 4"
label variable gpi_dr4_5 "GPI Dropout Rate grade 4 to 5"
label variable gpi_dr5_6 "GPI Dropout Rate grade 5 to 6"
label variable gpi_dr6_7 "GPI Dropout Rate grade 6 to 7"
label variable gpi_dr7_8 "GPI Dropout Rate grade 7 to 8"
label variable gpi_dr8_9 "GPI Dropout Rate grade 8 to 9"
label variable gpi_dr9_10 "GPI Dropout Rate grade 9 to 10"
label variable gpi_dr10_11 "GPI Dropout Rate grade 10 to 11"
label variable gpi_dr11_12 "GPI Dropout Rate grade 11 to 12"
label variable gpi_dr12_grad "GPI Dropout Rate grade 12 to graduation"

* Testing for summation of promotion, repetition, dropout rates equalling 100%

gen test_2 = prt1_2 + rrt1_2 + drt1_2
gen test_3 = prt2_3 + rrt2_3 + drt2_3
gen test_4 = prt3_4 + rrt3_4 + drt3_4 
gen test_5 = prt4_5 + rrt4_5 + drt4_5 
gen test_6 = prt5_6 + rrt5_6 + drt5_6
gen test_7 = prt6_7 + rrt6_7 + drt6_7
gen test_8 = prt7_8 + rrt7_8 + drt7_8
gen test_9 = prt8_9 + rrt8_9 + drt8_9
gen test_10 = prt9_10 + rrt9_10 + drt9_10
gen test_11 = prt10_11 + rrt10_11 + drt10_11
gen test_12 = prt11_12 + rrt11_12 + drt11_12
gen test_13 = prt12_grad + rrt12_grad + drt12_grad

gen test_2x = "False"
replace test_2x = "True" if test_2==1
replace test_2x = "n/a" if test_2==0

gen test_3x = "False"
replace test_3x = "True" if test_3==1
replace test_3x = "n/a" if test_3==0

gen test_4x = "False"
replace test_4x = "True" if test_4==1
replace test_4x = "n/a" if test_4==0

gen test_5x = "False"
replace test_5x = "True" if test_5==1
replace test_5x = "n/a" if test_5==0

gen test_6x = "False"
replace test_6x = "True" if test_6==1
replace test_6x = "n/a" if test_6==0

gen test_7x = "False"
replace test_7x = "True" if test_7==1
replace test_7x = "n/a" if test_7==0

gen test_8x = "False"
replace test_8x = "True" if test_8==1
replace test_8x = "n/a" if test_8==0

gen test_9x = "False"
replace test_9x = "True" if test_9==1
replace test_9x = "n/a" if test_9==0

gen test_10x = "False"
replace test_10x = "True" if test_10==1
replace test_10x = "n/a" if test_10==0

gen test_11x = "False"
replace test_11x = "True" if test_11==1
replace test_11x = "n/a" if test_11==0

gen test_12x = "False"
replace test_12x = "True" if test_12==1
replace test_12x = "n/a" if test_12==0

gen test_13x = "False"
replace test_13x = "True" if test_13==1
replace test_13x = "n/a" if test_13==0


foreach var in test_2x test_3x test_4x test_5x test_6x test_7x test_8x test_9x test_10x test_11x test_12x {
tabulate `var'
}


drop test_* reg_u* reg_c* upr* urr* udr*
					   


