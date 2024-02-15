********************************************************************************
*       Calculate Student Flow Rates for each district       *
********************************************************************************

collapse (sum) $allgmlist2018 $allgflist2018 $allgtlist2018 $allgmreplist2018 ///
$allgfreplist2018 $allgtreplist2018 $allgmlist2017 $allgflist2017 /// 
$allgtlist2017 $xmresults, by(debs)

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

*Uncapped Promotion Rate (uPR) for boys & girls ********************************
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


*Uncapped Repetition Rate (uRR) for boys & girls *******************************
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


*Capping factors boys **********************************************************
gen cfm1_2 = ((g2m_2018-repg2m_2018)/g1m_2017)+(repg1m_2018/g1m_2017)
gen cfm2_3 = ((g3m_2018-repg3m_2018)/g2m_2017)+(repg2m_2018/g2m_2017)
gen cfm3_4 = ((g4m_2018-repg4m_2018)/g3m_2017)+(repg3m_2018/g3m_2017)
gen cfm4_5 = ((g5m_2018-repg5m_2018)/g4m_2017)+(repg4m_2018/g4m_2017)
gen cfm5_6 = ((g6m_2018-repg6m_2018)/g5m_2017)+(repg5m_2018/g5m_2017)
gen cfm6_7 = ((g7m_2018-repg7m_2018)/g6m_2017)+(repg6m_2018/g6m_2017)
gen cfm7_8 = ((g8m_2018+grad_g7m_2018-repg8m_2018)/g7m_2017)+(repg7m_2018/g7m_2017) 
gen cfm8_9 = ((g9m_2018-repg9m_2018)/g8m_2017)+(repg8m_2018/g8m_2017)
gen cfm9_10 = ((g10m_2018-repg10m_2018)/g9m_2017)+(repg9m_2018/g9m_2017)
gen cfm10_11 = ((g11m_2018-repg11m_2018)/g10m_2017)+(repg10m_2018/g10m_2017)
gen cfm11_12 = ((g12m_2018-repg12m_2018)/g11m_2017)+(repg11m_2018/g11m_2017)
gen cfm12_grad = ((grad_g12m_2018-0)/g12m_2017)+(repg12m_2018/g12m_2017)


*Capping factors girls *********************************************************
gen cff1_2 = ((g2f_2018-repg2f_2018)/g1f_2017)+(repg1f_2018/g1f_2017)
gen cff2_3 = ((g3f_2018-repg3f_2018)/g2f_2017)+(repg2f_2018/g2f_2017)
gen cff3_4 = ((g4f_2018-repg4f_2018)/g3f_2017)+(repg3f_2018/g3f_2017)
gen cff4_5 = ((g5f_2018-repg5f_2018)/g4f_2017)+(repg4f_2018/g4f_2017)
gen cff5_6 = ((g6f_2018-repg6f_2018)/g5f_2017)+(repg5f_2018/g5f_2017)
gen cff6_7 = ((g7f_2018-repg7f_2018)/g6f_2017)+(repg6f_2018/g6f_2017)
gen cff7_8 = ((g8f_2018+grad_g7f_2018-repg8f_2018)/g7f_2017)+(repg7f_2018/g7f_2017) 
gen cff8_9 = ((g9f_2018-repg9f_2018)/g8f_2017)+(repg8f_2018/g8f_2017)
gen cff9_10 = ((g10f_2018-repg10f_2018)/g9f_2017)+(repg9f_2018/g9f_2017)
gen cff10_11 = ((g11f_2018-repg11f_2018)/g10f_2017)+(repg10f_2018/g10f_2017)
gen cff11_12 = ((g12f_2018-repg12f_2018)/g11f_2017)+(repg11f_2018/g11f_2017)
gen cff12_grad = ((grad_g12f_2018-0)/g12f_2017)+(repg12f_2018/g12f_2017)


*Capping factors higher ********************************************************
gen cfh1_2 = cff1_2  
if cfm1_2 > cff1_2 replace cfh1_2 = cfm1_2

gen cfh2_3 = cff2_3 
if cfm2_3 > cff2_3 replace cfh2_3 = cfm2_3

gen cfh3_4 = cff3_4 
if cfm3_4 > cff3_4 replace cfh3_4 = cfm3_4

gen cfh4_5 = cff4_5 
if cfm4_5 > cff4_5 replace cfh4_5 = cfm4_5

gen cfh5_6 = cff5_6 
if cfm5_6  >cff5_6 replace cfh5_6 = cfm5_6

gen cfh6_7 = cff6_7 
if cfm6_7 > cff6_7 replace cfh6_7 = cfm6_7

gen cfh7_8 = cff7_8 
if cfm7_8 > cff7_8 replace cfh7_8 = cfm7_8

gen cfh8_9 = cff8_9 
if cfm8_9 > cff8_9 replace cfh8_9 = cfm8_9

gen cfh9_10 = cff9_10 
if cfm9_10 > cff9_10 replace cfh9_10 = cfm9_10

gen cfh10_11 = cff10_11 
if cfm10_11 > cff10_11 replace cfh10_11 = cfm10_11

gen cfh11_12 = cff11_12 
if cfm11_12 > cff11_12 replace cfh11_12 = cfm11_12

gen cfh12_grad = cff12_grad                                   /* Higher capping factor for g12 graduates */
if cfm12_grad > cff12_grad replace cfh12_grad = cfm12_grad 


*Capped Promotion Rate (PR) boys ***********************************************
gen prm1_2 = uprm1_2 
if cfh1_2>1 replace prm1_2 = uprm1_2/cfh1_2
gen prm2_3 = uprm2_3 
if cfh2_3>1 replace prm2_3 = uprm2_3/cfh2_3
gen prm3_4 = uprm3_4 
if cfh3_4>1 replace prm3_4 = uprm3_4/cfh3_4
gen prm4_5 = uprm4_5 
if cfh4_5>1 replace prm4_5 = uprm4_5/cfh4_5
gen prm5_6 = uprm5_6 
if cfh5_6>1 replace prm5_6 = uprm5_6/cfh5_6
gen prm6_7 = uprm6_7 
if cfh6_7>1 replace prm6_7 = uprm6_7/cfh6_7
gen prm7_8 = uprm7_8 
if cfh7_8>1 replace prm7_8 = uprm7_8/cfh7_8
gen prm8_9 = uprm8_9 
if cfh8_9>1 replace prm8_9 = uprm8_9/cfh8_9
gen prm9_10 = uprm9_10 
if cfh9_10>1 replace prm9_10 = uprm9_10/cfh9_10
gen prm10_11 = uprm10_11 
if cfh10_11>1 replace prm10_11 = uprm10_11/cfh10_11
gen prm11_12 = uprm11_12 
if cfh11_12>1 replace prm11_12 = uprm11_12/cfh11_12
gen prm12_grad = uprm12_grad
if cfh12_grad>1 replace prm12_grad = uprm12_grad/cfh12_grad

*Capped Promotion Rate (PR) girls **********************************************
gen prf1_2 = uprf1_2 
if cfh1_2>1 replace prf1_2 = uprf1_2/cfh1_2
gen prf2_3 = uprf2_3 
if cfh2_3>1 replace prf2_3 = uprf2_3/cfh2_3
gen prf3_4 = uprf3_4 
if cfh3_4>1 replace prf3_4 = uprf3_4/cfh3_4
gen prf4_5 = uprf4_5 
if cfh4_5>1 replace prf4_5 = uprf4_5/cfh4_5
gen prf5_6 = uprf5_6 
if cfh5_6>1 replace prf5_6 = uprf5_6/cfh5_6
gen prf6_7 = uprf6_7 
if cfh6_7>1 replace prf6_7 = uprf6_7/cfh6_7
gen prf7_8 = uprf7_8 
if cfh7_8>1 replace prf7_8 = uprf7_8/cfh7_8
gen prf8_9 = uprf8_9 
if cfh8_9>1 replace prf8_9 = uprf8_9/cfh8_9
gen prf9_10 = uprf9_10 
if cfh9_10>1 replace prf9_10 = uprf9_10/cfh9_10
gen prf10_11 = uprf10_11 
if cfh10_11>1 replace prf10_11 = uprf10_11/cfh10_11
gen prf11_12 = uprf11_12 
if cfh11_12>1 replace prf11_12 = uprf11_12/cfh11_12
gen prf12_grad = uprf12_grad
if cfh12_grad>1 replace prf12_grad = uprf12_grad/cfh12_grad

*Capped Promotion Rate (PR) boys & girls ***************************************
gen prt1_2 = uprt1_2 
if cfh1_2>1 replace prt1_2 = uprt1_2/cfh1_2
gen prt2_3 = uprt2_3 
if cfh2_3>1 replace prt2_3 = uprt2_3/cfh2_3
gen prt3_4 = uprt3_4 
if cfh3_4>1 replace prt3_4 = uprt3_4/cfh3_4
gen prt4_5 = uprt4_5 
if cfh4_5>1 replace prt4_5 = uprt4_5/cfh4_5
gen prt5_6 = uprt5_6 
if cfh5_6>1 replace prt5_6 = uprt5_6/cfh5_6
gen prt6_7 = uprt6_7 
if cfh6_7>1 replace prt6_7 = uprt6_7/cfh6_7
gen prt7_8 = uprt7_8 
if cfh7_8>1 replace prt7_8 = uprt7_8/cfh7_8
gen prt8_9 = uprt8_9 
if cfh8_9>1 replace prt8_9 = uprt8_9/cfh8_9
gen prt9_10 = uprt9_10 
if cfh9_10>1 replace prt9_10 = uprt9_10/cfh9_10
gen prt10_11 = uprt10_11 
if cfh10_11>1 replace prt10_11 = uprt10_11/cfh10_11
gen prt11_12 = uprt11_12 
if cfh11_12>1 replace prt11_12 = uprt11_12/cfh11_12
gen prt12_grad = uprt12_grad
if cfh12_grad>1 replace prt12_grad = uprt12_grad/cfh12_grad

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

label var uprm1_2 "Boys Uncapped Promotion Rate grade 1 to 2"
label var uprm2_3 "Boys Uncapped Promotion Rate grade 2 to 3" 
label var uprm3_4 "Boys Uncapped Promotion Rate grade 3 to 4"
label var uprm4_5 "Boys Uncapped Promotion Rate grade 4 to 5"
label var uprm5_6 "Boys Uncapped Promotion Rate grade 5 to 6"
label var uprm6_7 "Boys Uncapped Promotion Rate grade 6 to 7"
label var uprm7_8 "Boys Uncapped Promotion Rate grade 7 to 8"
label var uprm8_9 "Boys Uncapped Promotion Rate grade 8 to 9"
label var uprm9_10 "Boys Uncapped Promotion Rate grade 9 to 10"
label var uprm10_11 "Boys Uncapped Promotion Rate grade 10 to 11"
label var uprm11_12 "Boys Uncapped Promotion Rate grade 11 to 12"
label var uprm12_grad "Boys Uncapped Promotion Rate grade 12 to graduation"

label var uprf1_2 "Girls Uncapped Promotion Rate grade 1 to 2"
label var uprf2_3 "Girls Uncapped Promotion Rate grade 2 to 3" 
label var uprf3_4 "Girls Uncapped Promotion Rate grade 3 to 4"
label var uprf4_5 "Girls Uncapped Promotion Rate grade 4 to 5"
label var uprf5_6 "Girls Uncapped Promotion Rate grade 5 to 6"
label var uprf6_7 "Girls Uncapped Promotion Rate grade 6 to 7"
label var uprf7_8 "Girls Uncapped Promotion Rate grade 7 to 8"
label var uprf8_9 "Girls Uncapped Promotion Rate grade 8 to 9"
label var uprf9_10 "Girls Uncapped Promotion Rate grade 9 to 10"
label var uprf10_11 "Girls Uncapped Promotion Rate grade 10 to 11"
label var uprf11_12 "Girls Uncapped Promotion Rate grade 11 to 12"
label var uprf12_grad "Girls Uncapped Promotion Rate grade 12 to graduation"

label var uprt1_2 "Boys & girls Uncapped Promotion Rate grade 1 to 2"
label var uprt2_3 "Boys & girls Uncapped Promotion Rate grade 2 to 3" 
label var uprt3_4 "Boys & girls Uncapped Promotion Rate grade 3 to 4"
label var uprt4_5 "Boys & girls Uncapped Promotion Rate grade 4 to 5"
label var uprt5_6 "Boys & girls Uncapped Promotion Rate grade 5 to 6"
label var uprt6_7 "Boys & girls Uncapped Promotion Rate grade 6 to 7"
label var uprt7_8 "Boys & girls Uncapped Promotion Rate grade 7 to 8"
label var uprt8_9 "Boys & girls Uncapped Promotion Rate grade 8 to 9"
label var uprt9_10 "Boys & girls Uncapped Promotion Rate grade 9 to 10"
label var uprt10_11 "Boys & girls Uncapped Promotion Rate grade 10 to 11"
label var uprt11_12 "Boys & girls Uncapped Promotion Rate grade 11 to 12"
label var uprt12_grad "Boys & girls Uncapped Promotion Rate grade 12 to graduation"

label var urrm1_2 "Boys Uncapped Repetition Rate grade 1 to 2"
label var urrm2_3 "Boys Uncapped Repetition Rate grade 2 to 3" 
label var urrm3_4 "Boys Uncapped Repetition Rate grade 3 to 4"
label var urrm4_5 "Boys Uncapped Repetition Rate grade 4 to 5"
label var urrm5_6 "Boys Uncapped Repetition Rate grade 5 to 6"
label var urrm6_7 "Boys Uncapped Repetition Rate grade 6 to 7"
label var urrm7_8 "Boys Uncapped Repetition Rate grade 7 to 8"
label var urrm8_9 "Boys Uncapped Repetition Rate grade 8 to 9"
label var urrm9_10 "Boys Uncapped Repetition Rate grade 9 to 10"
label var urrm10_11 "Boys Uncapped Repetition Rate grade 10 to 11"
label var urrm11_12 "Boys Uncapped Repetition Rate grade 11 to 12"
label var urrm12_grad "Boys Uncapped Repetition Rate grade 12 to graduation"

label var urrf1_2 "Girls Uncapped Repetition Rate grade 1 to 2"
label var urrf2_3 "Girls Uncapped Repetition Rate grade 2 to 3" 
label var urrf3_4 "Girls Uncapped Repetition Rate grade 3 to 4"
label var urrf4_5 "Girls Uncapped Repetition Rate grade 4 to 5"
label var urrf5_6 "Girls Uncapped Repetition Rate grade 5 to 6"
label var urrf6_7 "Girls Uncapped Repetition Rate grade 6 to 7"
label var urrf7_8 "Girls Uncapped Repetition Rate grade 7 to 8"
label var urrf8_9 "Girls Uncapped Repetition Rate grade 8 to 9"
label var urrf9_10 "Girls Uncapped Repetition Rate grade 9 to 10"
label var urrf10_11 "Girls Uncapped Repetition Rate grade 10 to 11"
label var urrf11_12 "Girls Uncapped Repetition Rate grade 11 to 12"
label var urrf12_grad "Girls Uncapped Repetition Rate grade 12 to graduation"

label var urrt1_2 "Boys & girls Uncapped Repetition Rate grade 1 to 2"
label var urrt2_3 "Boys & girls Uncapped Repetition Rate grade 2 to 3" 
label var urrt3_4 "Boys & girls Uncapped Repetition Rate grade 3 to 4"
label var urrt4_5 "Boys & girls Uncapped Repetition Rate grade 4 to 5"
label var urrt5_6 "Boys & girls Uncapped Repetition Rate grade 5 to 6"
label var urrt6_7 "Boys & girls Uncapped Repetition Rate grade 6 to 7"
label var urrt7_8 "Boys & girls Uncapped Repetition Rate grade 7 to 8"
label var urrt8_9 "Boys & girls Uncapped Repetition Rate grade 8 to 9"
label var urrt9_10 "Boys & girls Uncapped Repetition Rate grade 9 to 10"
label var urrt10_11 "Boys & girls Uncapped Repetition Rate grade 10 to 11"
label var urrt11_12 "Boys & girls Uncapped Repetition Rate grade 11 to 12"
label var urrt12_grad "Boys & girls Uncapped Repetition Rate grade 12 to graduation"

label var udrm1_2 "Boys Uncapped Dropout Rate grade 1 to 2" 
label var udrm2_3 "Boys Uncapped Dropout Rate grade 2 to 3"
label var udrm3_4 "Boys Uncapped Dropout Rate grade 3 to 4" 
label var udrm4_5 "Boys Uncapped Dropout Rate grade 4 to 5"
label var udrm5_6 "Boys Uncapped Dropout Rate grade 5 to 6" 
label var udrm6_7 "Boys Uncapped Dropout Rate grade 6 to 7"
label var udrm7_8 "Boys Uncapped Dropout Rate grade 7 to 8"
label var udrm8_9 "Boys Uncapped Dropout Rate grade 8 to 9"
label var udrm9_10 "Boys Uncapped Dropout Rate grade 9 to 10"
label var udrm10_11 "Boys Uncapped Dropout Rate grade 10 to 11"
label var udrm11_12 "Boys Uncapped Dropout Rate grade 11 to 12"
label var udrm12_grad "Boys Uncapped Dropout Rate grade 12 to graduation"

label var udrf1_2 "Girls Uncapped Dropout Rate grade 1 to 2" 
label var udrf2_3 "Girls Uncapped Dropout Rate grade 2 to 3"
label var udrf3_4 "Girls Uncapped Dropout Rate grade 3 to 4" 
label var udrf4_5 "Girls Uncapped Dropout Rate grade 4 to 5"
label var udrf5_6 "Girls Uncapped Dropout Rate grade 5 to 6" 
label var udrf6_7 "Girls Uncapped Dropout Rate grade 6 to 7"
label var udrf7_8 "Girls Uncapped Dropout Rate grade 7 to 8"
label var udrf8_9 "Girls Uncapped Dropout Rate grade 8 to 9"
label var udrf9_10 "Girls Uncapped Dropout Rate grade 9 to 10"
label var udrf10_11 "Girls Uncapped Dropout Rate grade 10 to 11"
label var udrf11_12 "Girls Uncapped Dropout Rate grade 11 to 12"
label var udrf12_grad "Girls Uncapped Dropout Rate grade 12 to graduation"

label var udrt1_2 "Boys & girls Uncapped Dropout Rate grade 1 to 2" 
label var udrt2_3 "Boys & girls Uncapped Dropout Rate grade 2 to 3"
label var udrt3_4 "Boys & girls Uncapped Dropout Rate grade 3 to 4" 
label var udrt4_5 "Boys & girls Uncapped Dropout Rate grade 4 to 5"
label var udrt5_6 "Boys & girls Uncapped Dropout Rate grade 5 to 6" 
label var udrt6_7 "Boys & girls Uncapped Dropout Rate grade 6 to 7"
label var udrt7_8 "Boys & girls Uncapped Dropout Rate grade 7 to 8"
label var udrt8_9 "Boys & girls Uncapped Dropout Rate grade 8 to 9"
label var udrt9_10 "Boys & girls Uncapped Dropout Rate grade 9 to 10"
label var udrt10_11 "Boys & girls Uncapped Dropout Rate grade 10 to 11"
label var udrt11_12 "Boys & girls Uncapped Dropout Rate grade 11 to 12"
label var udrt12_grad "Boys & girls Uncapped Dropout Rate grade 12 to graduation"

label var prm1_2 "Boys Promotion Rate grade 1 to 2"
label var prm2_3 "Boys Promotion Rate grade 2 to 3" 
label var prm3_4 "Boys Promotion Rate grade 3 to 4"
label var prm4_5 "Boys Promotion Rate grade 4 to 5"
label var prm5_6 "Boys Promotion Rate grade 5 to 6"
label var prm6_7 "Boys Promotion Rate grade 6 to 7"
label var prm7_8 "Boys Promotion Rate grade 7 to 8"
label var prm8_9 "Boys Promotion Rate grade 8 to 9"
label var prm9_10 "Boys Promotion Rate grade 9 to 10"
label var prm10_11 "Boys Promotion Rate grade 10 to 11"
label var prm11_12 "Boys Promotion Rate grade 11 to 12"
label var prm12_grad "Boys Promotion Rate grade 12 to graduation"

label var prf1_2 "Girls Promotion Rate grade 1 to 2"
label var prf2_3 "Girls Promotion Rate grade 2 to 3" 
label var prf3_4 "Girls Promotion Rate grade 3 to 4"
label var prf4_5 "Girls Promotion Rate grade 4 to 5"
label var prf5_6 "Girls Promotion Rate grade 5 to 6"
label var prf6_7 "Girls Promotion Rate grade 6 to 7"
label var prf7_8 "Girls Promotion Rate grade 7 to 8"
label var prf8_9 "Girls Promotion Rate grade 8 to 9"
label var prf9_10 "Girls Promotion Rate grade 9 to 10"
label var prf10_11 "Girls Promotion Rate grade 10 to 11"
label var prf11_12 "Girls Promotion Rate grade 11 to 12"
label var prf12_grad "Girls Promotion Rate grade 12 to graduation"

label var prt1_2 "Boys & girls Promotion Rate grade 1 to 2"
label var prt2_3 "Boys & girls Promotion Rate grade 2 to 3" 
label var prt3_4 "Boys & girls Promotion Rate grade 3 to 4"
label var prt4_5 "Boys & girls Promotion Rate grade 4 to 5"
label var prt5_6 "Boys & girls Promotion Rate grade 5 to 6"
label var prt6_7 "Boys & girls Promotion Rate grade 6 to 7"
label var prt7_8 "Boys & girls Promotion Rate grade 7 to 8"
label var prt8_9 "Boys & girls Promotion Rate grade 8 to 9"
label var prt9_10 "Boys & girls Promotion Rate grade 9 to 10"
label var prt10_11 "Boys & girls Promotion Rate grade 10 to 11"
label var prt11_12 "Boys & girls Promotion Rate grade 11 to 12"
label var prt12_grad "Boys & girls Promotion Rate grade 12 to graduation"

label var rrm1_2 "Boys Repetition Rate grade 1 to 2"
label var rrm2_3 "Boys Repetition Rate grade 2 to 3" 
label var rrm3_4 "Boys Repetition Rate grade 3 to 4"
label var rrm4_5 "Boys Repetition Rate grade 4 to 5"
label var rrm5_6 "Boys Repetition Rate grade 5 to 6"
label var rrm6_7 "Boys Repetition Rate grade 6 to 7"
label var rrm7_8 "Boys Repetition Rate grade 7 to 8"
label var rrm8_9 "Boys Repetition Rate grade 8 to 9"
label var rrm9_10 "Boys Repetition Rate grade 9 to 10"
label var rrm10_11 "Boys Repetition Rate grade 10 to 11"
label var rrm11_12 "Boys Repetition Rate grade 11 to 12"
label var rrm12_grad "Boys Repetition Rate grade 12 to graduation"

label var rrf1_2 "Girls Repetition Rate grade 1 to 2"
label var rrf2_3 "Girls Repetition Rate grade 2 to 3" 
label var rrf3_4 "Girls Repetition Rate grade 3 to 4"
label var rrf4_5 "Girls Repetition Rate grade 4 to 5"
label var rrf5_6 "Girls Repetition Rate grade 5 to 6"
label var rrf6_7 "Girls Repetition Rate grade 6 to 7"
label var rrf7_8 "Girls Repetition Rate grade 7 to 8"
label var rrf8_9 "Girls Repetition Rate grade 8 to 9"
label var rrf9_10 "Girls Repetition Rate grade 9 to 10"
label var rrf10_11 "Girls Repetition Rate grade 10 to 11"
label var rrf11_12 "Girls Repetition Rate grade 11 to 12"
label var rrf12_grad "Girls Repetition Rate grade 12 to graduation"

label var rrt1_2 "Boys & girls Repetition Rate grade 1 to 2"
label var rrt2_3 "Boys & girls Repetition Rate grade 2 to 3" 
label var rrt3_4 "Boys & girls Repetition Rate grade 3 to 4"
label var rrt4_5 "Boys & girls Repetition Rate grade 4 to 5"
label var rrt5_6 "Boys & girls Repetition Rate grade 5 to 6"
label var rrt6_7 "Boys & girls Repetition Rate grade 6 to 7"
label var rrt7_8 "Boys & girls Repetition Rate grade 7 to 8"
label var rrt8_9 "Boys & girls Repetition Rate grade 8 to 9"
label var rrt9_10 "Boys & girls Repetition Rate grade 9 to 10"
label var rrt10_11 "Boys & girls Repetition Rate grade 10 to 11"
label var rrt11_12 "Boys & girls Repetition Rate grade 11 to 12"
label var rrt12_grad "Boys & girls Repetition Rate grade 12 to graduation"

label var drm1_2 "Boys Dropout Rate grade 1 to 2" 
label var drm2_3 "Boys Dropout Rate grade 2 to 3"
label var drm3_4 "Boys Dropout Rate grade 3 to 4" 
label var drm4_5 "Boys Dropout Rate grade 4 to 5"
label var drm5_6 "Boys Dropout Rate grade 5 to 6" 
label var drm6_7 "Boys Dropout Rate grade 6 to 7"
label var drm7_8 "Boys Dropout Rate grade 7 to 8"
label var drm8_9 "Boys Dropout Rate grade 8 to 9"
label var drm9_10 "Boys Dropout Rate grade 9 to 10"
label var drm10_11 "Boys Dropout Rate grade 10 to 11"
label var drm11_12 "Boys Dropout Rate grade 11 to 12"
label var drm12_grad "Boys Dropout Rate grade 12 to graduation"

label var drf1_2 "Girls Dropout Rate grade 1 to 2" 
label var drf2_3 "Girls Dropout Rate grade 2 to 3"
label var drf3_4 "Girls Dropout Rate grade 3 to 4" 
label var drf4_5 "Girls Dropout Rate grade 4 to 5"
label var drf5_6 "Girls Dropout Rate grade 5 to 6" 
label var drf6_7 "Girls Dropout Rate grade 6 to 7"
label var drf7_8 "Girls Dropout Rate grade 7 to 8"
label var drf8_9 "Girls Dropout Rate grade 8 to 9"
label var drf9_10 "Girls Dropout Rate grade 9 to 10"
label var drf10_11 "Girls Dropout Rate grade 10 to 11"
label var drf11_12 "Girls Dropout Rate grade 11 to 12"
label var drf12_grad "Girls Dropout Rate grade 12 to graduation"

label var drt1_2 "Boys & girls Dropout Rate grade 1 to 2" 
label var drt2_3 "Boys & girls Dropout Rate grade 2 to 3"
label var drt3_4 "Boys & girls Dropout Rate grade 3 to 4" 
label var drt4_5 "Boys & girls Dropout Rate grade 4 to 5"
label var drt5_6 "Boys & girls Dropout Rate grade 5 to 6" 
label var drt6_7 "Boys & girls Dropout Rate grade 6 to 7"
label var drt7_8 "Boys & girls Dropout Rate grade 7 to 8"
label var drt8_9 "Boys & girls Dropout Rate grade 8 to 9"
label var drt9_10 "Boys & girls Dropout Rate grade 9 to 10"
label var drt10_11 "Boys & girls Dropout Rate grade 10 to 11"
label var drt11_12 "Boys & girls Dropout Rate grade 11 to 12"
label var drt12_grad "Boys & girls Dropout Rate grade 12 to graduation"

label var gpi_pr1_2 "GPI Promotion Rate grade 1 to 2"
label var gpi_pr2_3 "GPI Promotion Rate grade 2 to 3" 
label var gpi_pr3_4 "GPI Promotion Rate grade 3 to 4"
label var gpi_pr4_5 "GPI Promotion Rate grade 4 to 5"
label var gpi_pr5_6 "GPI Promotion Rate grade 5 to 6"
label var gpi_pr6_7 "GPI Promotion Rate grade 6 to 7"
label var gpi_pr7_8 "GPI Promotion Rate grade 7 to 8"
label var gpi_pr8_9 "GPI Promotion Rate grade 8 to 9"
label var gpi_pr9_10 "GPI Promotion Rate grade 9 to 10"
label var gpi_pr10_11 "GPI Promotion Rate grade 10 to 11"
label var gpi_pr11_12 "GPI Promotion Rate grade 11 to 12"
label var gpi_pr12_grad "GPI Promotion Rate grade 12 to graduation"

label var gpi_rr1_2 "GPI Repetition Rate grade 1 to 2"
label var gpi_rr2_3 "GPI Repetition Rate grade 2 to 3" 
label var gpi_rr3_4 "GPI Repetition Rate grade 3 to 4"
label var gpi_rr4_5 "GPI Repetition Rate grade 4 to 5"
label var gpi_rr5_6 "GPI Repetition Rate grade 5 to 6"
label var gpi_rr6_7 "GPI Repetition Rate grade 6 to 7"
label var gpi_rr7_8 "GPI Repetition Rate grade 7 to 8"
label var gpi_rr8_9 "GPI Repetition Rate grade 8 to 9"
label var gpi_rr9_10 "GPI Repetition Rate grade 9 to 10"
label var gpi_rr10_11 "GPI Repetition Rate grade 10 to 11"
label var gpi_rr11_12 "GPI Repetition Rate grade 11 to 12"
label var gpi_rr12_grad "GPI Repetition Rate grade 12 to graduation"

label var gpi_dr1_2 "GPI Dropout Rate grade 1 to 2"
label var gpi_dr2_3 "GPI Dropout Rate grade 2 to 3" 
label var gpi_dr3_4 "GPI Dropout Rate grade 3 to 4"
label var gpi_dr4_5 "GPI Dropout Rate grade 4 to 5"
label var gpi_dr5_6 "GPI Dropout Rate grade 5 to 6"
label var gpi_dr6_7 "GPI Dropout Rate grade 6 to 7"
label var gpi_dr7_8 "GPI Dropout Rate grade 7 to 8"
label var gpi_dr8_9 "GPI Dropout Rate grade 8 to 9"
label var gpi_dr9_10 "GPI Dropout Rate grade 9 to 10"
label var gpi_dr10_11 "GPI Dropout Rate grade 10 to 11"
label var gpi_dr11_12 "GPI Dropout Rate grade 11 to 12"
label var gpi_dr12_grad "GPI Dropout Rate grade 12 to graduation"

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

drop test_* upr* urr* udr*


********************************************************************************

