********************************************************************************************
*             Reconstructed Cohort Method : Evolution from G1 to G12 (by provice)           *
********************************************************************************************

gen mcohort_size = 100

* boys grade 1 cohort evolution

gen enrolees_gm1_2017 = mcohort_size
gen promotees_gm1_2017 = enrolees_gm1_2017 * prm1_2
gen repeaters_gm1_2017 = enrolees_gm1_2017 * rrm1_2
gen dropouts_gm1_2017 = enrolees_gm1_2017 * drm1_2

gen enrolees_gm1_2018 = 0 + repeaters_gm1_2017
gen promotees_gm1_2018 = enrolees_gm1_2018 * prm1_2
gen repeaters_gm1_2018 = enrolees_gm1_2018 * rrm1_2
gen dropouts_gm1_2018 = enrolees_gm1_2018 * drm1_2

gen enrolees_gm1_2019 = 0 + repeaters_gm1_2018
gen promotees_gm1_2019 = enrolees_gm1_2019 * prm1_2
gen repeaters_gm1_2019 = enrolees_gm1_2019 * rrm1_2
gen dropouts_gm1_2019 = enrolees_gm1_2019 * drm1_2

gen enrolees_gm1_2020 = 0 + repeaters_gm1_2019
gen promotees_gm1_2020 = enrolees_gm1_2020 * prm1_2
gen repeaters_gm1_2020 = enrolees_gm1_2020 * rrm1_2
gen dropouts_gm1_2020 = enrolees_gm1_2020 * drm1_2

gen enrolees_gm1_2021 = 0 + repeaters_gm1_2020
gen promotees_gm1_2021 = enrolees_gm1_2021 * prm1_2
gen repeaters_gm1_2021 = enrolees_gm1_2021 * rrm1_2
gen dropouts_gm1_2021 = enrolees_gm1_2021 * drm1_2

gen enrolees_gm1_2022 = 0 + repeaters_gm1_2021
gen promotees_gm1_2022 = enrolees_gm1_2022 * prm1_2
gen repeaters_gm1_2022 = enrolees_gm1_2022 * rrm1_2
gen dropouts_gm1_2022 = enrolees_gm1_2022 * drm1_2

gen enrolees_gm1_2023 = 0 + repeaters_gm1_2022
gen promotees_gm1_2023 = enrolees_gm1_2023 * prm1_2
gen repeaters_gm1_2023 = enrolees_gm1_2023 * rrm1_2
gen dropouts_gm1_2023 = enrolees_gm1_2023 * drm1_2

gen enrolees_gm1_2024 = 0 + repeaters_gm1_2023
gen promotees_gm1_2024 = enrolees_gm1_2024 * prm1_2
gen repeaters_gm1_2024 = enrolees_gm1_2024 * rrm1_2
gen dropouts_gm1_2024 = enrolees_gm1_2024 * drm1_2

gen enrolees_gm1_2025 = 0 + repeaters_gm1_2024
gen promotees_gm1_2025 = enrolees_gm1_2025 * prm1_2
gen repeaters_gm1_2025 = enrolees_gm1_2025 * rrm1_2
gen dropouts_gm1_2025 = enrolees_gm1_2025 * drm1_2

gen enrolees_gm1_2026 = 0 + repeaters_gm1_2025
gen promotees_gm1_2026 = enrolees_gm1_2026 * prm1_2
gen repeaters_gm1_2026 = enrolees_gm1_2026 * rrm1_2
gen dropouts_gm1_2026 = enrolees_gm1_2026 * drm1_2

gen enrolees_gm1_2027 = 0 + repeaters_gm1_2026
gen promotees_gm1_2027 = enrolees_gm1_2027 * prm1_2
gen repeaters_gm1_2027 = enrolees_gm1_2027 * rrm1_2
gen dropouts_gm1_2027 = enrolees_gm1_2027 * drm1_2


* boys grade 2 cohort evolution

gen enrolees_gm2_2018 = promotees_gm1_2017 + 0
gen promotees_gm2_2018 = enrolees_gm2_2018 * prm2_3
gen repeaters_gm2_2018 = enrolees_gm2_2018 * rrm2_3
gen dropouts_gm2_2018 = enrolees_gm2_2018 * drm2_3

gen enrolees_gm2_2019 = promotees_gm1_2018 + repeaters_gm2_2018
gen promotees_gm2_2019 = enrolees_gm2_2019 * prm2_3
gen repeaters_gm2_2019 = enrolees_gm2_2019 * rrm2_3
gen dropouts_gm2_2019 = enrolees_gm2_2019 * drm2_3

gen enrolees_gm2_2020 = promotees_gm1_2019 + repeaters_gm2_2019
gen promotees_gm2_2020 = enrolees_gm2_2020 * prm2_3
gen repeaters_gm2_2020 = enrolees_gm2_2020 * rrm2_3
gen dropouts_gm2_2020 = enrolees_gm2_2020 * drm2_3

gen enrolees_gm2_2021 = promotees_gm1_2020 + repeaters_gm2_2020
gen promotees_gm2_2021 = enrolees_gm2_2021 * prm2_3
gen repeaters_gm2_2021 = enrolees_gm2_2021 * rrm2_3
gen dropouts_gm2_2021 = enrolees_gm2_2021 * drm2_3

gen enrolees_gm2_2022 = promotees_gm1_2021 + repeaters_gm2_2021
gen promotees_gm2_2022 = enrolees_gm2_2022 * prm2_3
gen repeaters_gm2_2022 = enrolees_gm2_2022 * rrm2_3
gen dropouts_gm2_2022 = enrolees_gm2_2022 * drm2_3

gen enrolees_gm2_2023 = promotees_gm1_2022 + repeaters_gm2_2022
gen promotees_gm2_2023 = enrolees_gm2_2023 * prm2_3
gen repeaters_gm2_2023 = enrolees_gm2_2023 * rrm2_3
gen dropouts_gm2_2023 = enrolees_gm2_2023 * drm2_3

gen enrolees_gm2_2024 = promotees_gm1_2023 + repeaters_gm2_2023
gen promotees_gm2_2024 = enrolees_gm2_2024 * prm2_3
gen repeaters_gm2_2024 = enrolees_gm2_2024 * rrm2_3
gen dropouts_gm2_2024 = enrolees_gm2_2024 * drm2_3

gen enrolees_gm2_2025 = promotees_gm1_2024 + repeaters_gm2_2024
gen promotees_gm2_2025 = enrolees_gm2_2025 * prm2_3
gen repeaters_gm2_2025 = enrolees_gm2_2025 * rrm2_3
gen dropouts_gm2_2025 = enrolees_gm2_2025 * drm2_3

gen enrolees_gm2_2026 = promotees_gm1_2025 + repeaters_gm2_2025
gen promotees_gm2_2026 = enrolees_gm2_2026 * prm2_3
gen repeaters_gm2_2026 = enrolees_gm2_2026 * rrm2_3
gen dropouts_gm2_2026 = enrolees_gm2_2026 * drm2_3

gen enrolees_gm2_2027 = promotees_gm1_2026 + repeaters_gm2_2026
gen promotees_gm2_2027 = enrolees_gm2_2027 * prm2_3
gen repeaters_gm2_2027 = enrolees_gm2_2027 * rrm2_3
gen dropouts_gm2_2027 = enrolees_gm2_2027 * drm2_3

gen enrolees_gm2_2028 = promotees_gm1_2027 + repeaters_gm2_2027
gen promotees_gm2_2028 = enrolees_gm2_2028 * prm2_3
gen repeaters_gm2_2028 = enrolees_gm2_2028 * rrm2_3
gen dropouts_gm2_2028 = enrolees_gm2_2028 * drm2_3


* boys grade 3 cohort evolution

gen enrolees_gm3_2019 = promotees_gm2_2018 + 0
gen promotees_gm3_2019 = enrolees_gm3_2019 * prm3_4
gen repeaters_gm3_2019 = enrolees_gm3_2019 * rrm3_4
gen dropouts_gm3_2019 = enrolees_gm3_2019 * drm3_4

gen enrolees_gm3_2020 = promotees_gm2_2019 + repeaters_gm3_2019
gen promotees_gm3_2020 = enrolees_gm3_2020 * prm3_4
gen repeaters_gm3_2020 = enrolees_gm3_2020 * rrm3_4
gen dropouts_gm3_2020 = enrolees_gm3_2020 * drm3_4

gen enrolees_gm3_2021 = promotees_gm2_2020 + repeaters_gm3_2020
gen promotees_gm3_2021 = enrolees_gm3_2021 * prm3_4
gen repeaters_gm3_2021 = enrolees_gm3_2021 * rrm3_4
gen dropouts_gm3_2021 = enrolees_gm3_2021 * drm3_4

gen enrolees_gm3_2022 = promotees_gm2_2021 + repeaters_gm3_2021
gen promotees_gm3_2022 = enrolees_gm3_2022 * prm3_4
gen repeaters_gm3_2022 = enrolees_gm3_2022 * rrm3_4
gen dropouts_gm3_2022 = enrolees_gm3_2022 * drm3_4

gen enrolees_gm3_2023 = promotees_gm2_2022 + repeaters_gm3_2022
gen promotees_gm3_2023 = enrolees_gm3_2023 * prm3_4
gen repeaters_gm3_2023 = enrolees_gm3_2023 * rrm3_4
gen dropouts_gm3_2023 = enrolees_gm3_2023 * drm3_4

gen enrolees_gm3_2024 = promotees_gm2_2023 + repeaters_gm3_2023
gen promotees_gm3_2024 = enrolees_gm3_2024 * prm3_4
gen repeaters_gm3_2024 = enrolees_gm3_2024 * rrm3_4
gen dropouts_gm3_2024 = enrolees_gm3_2024 * drm3_4

gen enrolees_gm3_2025 = promotees_gm2_2024 + repeaters_gm3_2024
gen promotees_gm3_2025 = enrolees_gm3_2025 * prm3_4
gen repeaters_gm3_2025 = enrolees_gm3_2025 * rrm3_4
gen dropouts_gm3_2025 = enrolees_gm3_2025 * drm3_4

gen enrolees_gm3_2026 = promotees_gm2_2025 + repeaters_gm3_2025
gen promotees_gm3_2026 = enrolees_gm3_2026 * prm3_4
gen repeaters_gm3_2026 = enrolees_gm3_2026 * rrm3_4
gen dropouts_gm3_2026 = enrolees_gm3_2026 * drm3_4

gen enrolees_gm3_2027 = promotees_gm2_2026 + repeaters_gm3_2026
gen promotees_gm3_2027 = enrolees_gm3_2027 * prm3_4
gen repeaters_gm3_2027 = enrolees_gm3_2027 * rrm3_4
gen dropouts_gm3_2027 = enrolees_gm3_2027 * drm3_4

gen enrolees_gm3_2028 = promotees_gm2_2027 + repeaters_gm3_2027
gen promotees_gm3_2028 = enrolees_gm3_2028 * prm3_4
gen repeaters_gm3_2028 = enrolees_gm3_2028 * rrm3_4
gen dropouts_gm3_2028 = enrolees_gm3_2028 * drm3_4

gen enrolees_gm3_2029 = promotees_gm2_2028 + repeaters_gm3_2028
gen promotees_gm3_2029 = enrolees_gm3_2029 * prm3_4
gen repeaters_gm3_2029 = enrolees_gm3_2029 * rrm3_4
gen dropouts_gm3_2029 = enrolees_gm3_2029 * drm3_4


* boys grade 4 cohort evolution
gen enrolees_gm4_2020 = promotees_gm3_2019 + 0
gen promotees_gm4_2020 = enrolees_gm4_2020 * prm4_5
gen repeaters_gm4_2020 = enrolees_gm4_2020 * rrm4_5
gen dropouts_gm4_2020 = enrolees_gm4_2020 * drm4_5

gen enrolees_gm4_2021 = promotees_gm3_2020 + repeaters_gm4_2020
gen promotees_gm4_2021 = enrolees_gm4_2021 * prm4_5
gen repeaters_gm4_2021 = enrolees_gm4_2021 * rrm4_5
gen dropouts_gm4_2021 = enrolees_gm4_2021 * drm4_5

gen enrolees_gm4_2022 = promotees_gm3_2021 + repeaters_gm4_2021
gen promotees_gm4_2022 = enrolees_gm4_2022 * prm4_5
gen repeaters_gm4_2022 = enrolees_gm4_2022 * rrm4_5
gen dropouts_gm4_2022 = enrolees_gm4_2022 * drm4_5

gen enrolees_gm4_2023 = promotees_gm3_2022 + repeaters_gm4_2022
gen promotees_gm4_2023 = enrolees_gm4_2023 * prm4_5
gen repeaters_gm4_2023 = enrolees_gm4_2023 * rrm4_5
gen dropouts_gm4_2023 = enrolees_gm4_2023 * drm4_5

gen enrolees_gm4_2024 = promotees_gm3_2023 + repeaters_gm4_2023
gen promotees_gm4_2024 = enrolees_gm4_2024 * prm4_5
gen repeaters_gm4_2024 = enrolees_gm4_2024 * rrm4_5
gen dropouts_gm4_2024 = enrolees_gm4_2024 * drm4_5

gen enrolees_gm4_2025 = promotees_gm3_2024 + repeaters_gm4_2024
gen promotees_gm4_2025 = enrolees_gm4_2025 * prm4_5
gen repeaters_gm4_2025 = enrolees_gm4_2025 * rrm4_5
gen dropouts_gm4_2025 = enrolees_gm4_2025 * drm4_5

gen enrolees_gm4_2026 = promotees_gm3_2025 + repeaters_gm4_2025
gen promotees_gm4_2026 = enrolees_gm4_2026 * prm4_5
gen repeaters_gm4_2026 = enrolees_gm4_2026 * rrm4_5
gen dropouts_gm4_2026 = enrolees_gm4_2026 * drm4_5

gen enrolees_gm4_2027 = promotees_gm3_2026 + repeaters_gm4_2026
gen promotees_gm4_2027 = enrolees_gm4_2027 * prm4_5
gen repeaters_gm4_2027 = enrolees_gm4_2027 * rrm4_5
gen dropouts_gm4_2027 = enrolees_gm4_2027 * drm4_5

gen enrolees_gm4_2028 = promotees_gm3_2027 + repeaters_gm4_2027
gen promotees_gm4_2028 = enrolees_gm4_2028 * prm4_5
gen repeaters_gm4_2028 = enrolees_gm4_2028 * rrm4_5
gen dropouts_gm4_2028 = enrolees_gm4_2028 * drm4_5

gen enrolees_gm4_2029 = promotees_gm3_2028 + repeaters_gm4_2028
gen promotees_gm4_2029 = enrolees_gm4_2029 * prm4_5
gen repeaters_gm4_2029 = enrolees_gm4_2029 * rrm4_5
gen dropouts_gm4_2029 = enrolees_gm4_2029 * drm4_5

gen enrolees_gm4_2030 = promotees_gm3_2029 + repeaters_gm4_2029
gen promotees_gm4_2030 = enrolees_gm4_2030 * prm4_5
gen repeaters_gm4_2030 = enrolees_gm4_2030 * rrm4_5
gen dropouts_gm4_2030 = enrolees_gm4_2030 * drm4_5


* boys grade 5 cohort evolution
gen enrolees_gm5_2021 = promotees_gm4_2020 + 0
gen promotees_gm5_2021 = enrolees_gm5_2021 * prm5_6
gen repeaters_gm5_2021 = enrolees_gm5_2021 * rrm5_6
gen dropouts_gm5_2021 = enrolees_gm5_2021 * drm5_6

gen enrolees_gm5_2022 = promotees_gm4_2021 + repeaters_gm5_2021
gen promotees_gm5_2022 = enrolees_gm5_2022 * prm5_6
gen repeaters_gm5_2022 = enrolees_gm5_2022 * rrm5_6
gen dropouts_gm5_2022 = enrolees_gm5_2022 * drm5_6

gen enrolees_gm5_2023 = promotees_gm4_2022 + repeaters_gm5_2022
gen promotees_gm5_2023 = enrolees_gm5_2023 * prm5_6
gen repeaters_gm5_2023 = enrolees_gm5_2023 * rrm5_6
gen dropouts_gm5_2023 = enrolees_gm5_2023 * drm5_6

gen enrolees_gm5_2024 = promotees_gm4_2023 + repeaters_gm5_2023
gen promotees_gm5_2024 = enrolees_gm5_2024 * prm5_6
gen repeaters_gm5_2024 = enrolees_gm5_2024 * rrm5_6
gen dropouts_gm5_2024 = enrolees_gm5_2024 * drm5_6

gen enrolees_gm5_2025 = promotees_gm4_2024 + repeaters_gm5_2024
gen promotees_gm5_2025 = enrolees_gm5_2025 * prm5_6
gen repeaters_gm5_2025 = enrolees_gm5_2025 * rrm5_6
gen dropouts_gm5_2025 = enrolees_gm5_2025 * drm5_6

gen enrolees_gm5_2026 = promotees_gm4_2025 + repeaters_gm5_2025
gen promotees_gm5_2026 = enrolees_gm5_2026 * prm5_6 	 	
gen repeaters_gm5_2026 = enrolees_gm5_2026 * rrm5_6
gen dropouts_gm5_2026 = enrolees_gm5_2026 * drm5_6

gen enrolees_gm5_2027 = promotees_gm4_2026 + repeaters_gm5_2026
gen promotees_gm5_2027 = enrolees_gm5_2027 * prm5_6
gen repeaters_gm5_2027 = enrolees_gm5_2027 * rrm5_6
gen dropouts_gm5_2027 = enrolees_gm5_2027 * drm5_6

gen enrolees_gm5_2028 = promotees_gm4_2027 + repeaters_gm5_2027
gen promotees_gm5_2028 = enrolees_gm5_2028 * prm5_6
gen repeaters_gm5_2028 = enrolees_gm5_2028 * rrm5_6
gen dropouts_gm5_2028 = enrolees_gm5_2028 * drm5_6

gen enrolees_gm5_2029 = promotees_gm4_2028 + repeaters_gm5_2028
gen promotees_gm5_2029 = enrolees_gm5_2029 * prm5_6
gen repeaters_gm5_2029 = enrolees_gm5_2029 * rrm5_6
gen dropouts_gm5_2029 = enrolees_gm5_2029 * drm5_6

gen enrolees_gm5_2030 = promotees_gm4_2029 + repeaters_gm5_2029
gen promotees_gm5_2030 = enrolees_gm5_2030 * prm5_6
gen repeaters_gm5_2030 = enrolees_gm5_2030 * rrm5_6
gen dropouts_gm5_2030 = enrolees_gm5_2030 * drm5_6

gen enrolees_gm5_2031 = promotees_gm4_2030 + repeaters_gm5_2030
gen promotees_gm5_2031 = enrolees_gm5_2031 * prm5_6
gen repeaters_gm5_2031 = enrolees_gm5_2031 * rrm5_6
gen dropouts_gm5_2031 = enrolees_gm5_2031 * drm5_6


* boys grade 6 cohort evolution
gen enrolees_gm6_2022 = promotees_gm5_2021 + 0
gen promotees_gm6_2022 = enrolees_gm6_2022 * prm6_7
gen repeaters_gm6_2022 = enrolees_gm6_2022 * rrm6_7
gen dropouts_gm6_2022 = enrolees_gm6_2022 * drm6_7

gen enrolees_gm6_2023 = promotees_gm5_2022 + repeaters_gm6_2022
gen promotees_gm6_2023 = enrolees_gm6_2023 * prm6_7
gen repeaters_gm6_2023 = enrolees_gm6_2023 * rrm6_7
gen dropouts_gm6_2023 = enrolees_gm6_2023 * drm6_7

gen enrolees_gm6_2024 = promotees_gm5_2023 + repeaters_gm6_2023
gen promotees_gm6_2024 = enrolees_gm6_2024 * prm6_7
gen repeaters_gm6_2024 = enrolees_gm6_2024 * rrm6_7
gen dropouts_gm6_2024 = enrolees_gm6_2024 * drm6_7

gen enrolees_gm6_2025 = promotees_gm5_2024 + repeaters_gm6_2024
gen promotees_gm6_2025 = enrolees_gm6_2025 * prm6_7
gen repeaters_gm6_2025 = enrolees_gm6_2025 * rrm6_7
gen dropouts_gm6_2025 = enrolees_gm6_2025 * drm6_7

gen enrolees_gm6_2026 = promotees_gm5_2025 + repeaters_gm6_2025
gen promotees_gm6_2026 = enrolees_gm6_2026 * prm6_7 	 	
gen repeaters_gm6_2026 = enrolees_gm6_2026 * rrm6_7
gen dropouts_gm6_2026 = enrolees_gm6_2026 * drm6_7

gen enrolees_gm6_2027 = promotees_gm5_2026 + repeaters_gm6_2026
gen promotees_gm6_2027 = enrolees_gm6_2027 * prm6_7
gen repeaters_gm6_2027 = enrolees_gm6_2027 * rrm6_7
gen dropouts_gm6_2027 = enrolees_gm6_2027 * drm6_7

gen enrolees_gm6_2028 = promotees_gm5_2027 + repeaters_gm6_2027
gen promotees_gm6_2028 = enrolees_gm6_2028 * prm6_7
gen repeaters_gm6_2028 = enrolees_gm6_2028 * rrm6_7
gen dropouts_gm6_2028 = enrolees_gm6_2028 * drm6_7

gen enrolees_gm6_2029 = promotees_gm5_2028 + repeaters_gm6_2028
gen promotees_gm6_2029 = enrolees_gm6_2029 * prm6_7
gen repeaters_gm6_2029 = enrolees_gm6_2029 * rrm6_7
gen dropouts_gm6_2029 = enrolees_gm6_2029 * drm6_7

gen enrolees_gm6_2030 = promotees_gm5_2029 + repeaters_gm6_2029
gen promotees_gm6_2030 = enrolees_gm6_2030 * prm6_7
gen repeaters_gm6_2030 = enrolees_gm6_2030 * rrm6_7
gen dropouts_gm6_2030 = enrolees_gm6_2030 * drm6_7

gen enrolees_gm6_2031 = promotees_gm5_2030 + repeaters_gm6_2030 
gen promotees_gm6_2031 = enrolees_gm6_2031 * prm6_7
gen repeaters_gm6_2031 = enrolees_gm6_2031 * rrm6_7
gen dropouts_gm6_2031 = enrolees_gm6_2031 * drm6_7

gen enrolees_gm6_2032 = promotees_gm5_2031 + repeaters_gm6_2031 
gen promotees_gm6_2032 = enrolees_gm6_2032 * prm6_7
gen repeaters_gm6_2032 = enrolees_gm6_2032 * rrm6_7
gen dropouts_gm6_2032 = enrolees_gm6_2032 * drm6_7


* boys grade 7 cohort evolution (schools with G1 to G12)
gen enrolees_gm7_2023 = promotees_gm6_2022 + 0
gen promotees_gm7_2023 = enrolees_gm7_2023 * prm7_8  
gen repeaters_gm7_2023 = enrolees_gm7_2023 * rrm7_8
gen dropouts_gm7_2023 = enrolees_gm7_2023 * drm7_8

gen enrolees_gm7_2024 = promotees_gm6_2023 + repeaters_gm7_2023
gen promotees_gm7_2024 = enrolees_gm7_2024 * prm7_8
gen repeaters_gm7_2024 = enrolees_gm7_2024 * rrm7_8
gen dropouts_gm7_2024 = enrolees_gm7_2024 * drm7_8

gen enrolees_gm7_2025 = promotees_gm6_2024 + repeaters_gm7_2024
gen promotees_gm7_2025 = enrolees_gm7_2025 * prm7_8
gen repeaters_gm7_2025 = enrolees_gm7_2025 * rrm7_8
gen dropouts_gm7_2025 = enrolees_gm7_2025 * drm7_8

gen enrolees_gm7_2026 = promotees_gm6_2025 + repeaters_gm7_2025
gen promotees_gm7_2026 = enrolees_gm7_2026 * prm7_8 	 	
gen repeaters_gm7_2026 = enrolees_gm7_2026 * rrm7_8
gen dropouts_gm7_2026 = enrolees_gm7_2026 * drm7_8

gen enrolees_gm7_2027 = promotees_gm6_2026 + repeaters_gm7_2026
gen promotees_gm7_2027 = enrolees_gm7_2027 * prm7_8
gen repeaters_gm7_2027 = enrolees_gm7_2027 * rrm7_8
gen dropouts_gm7_2027 = enrolees_gm7_2027 * drm7_8

gen enrolees_gm7_2028 = promotees_gm6_2027 + repeaters_gm7_2027
gen promotees_gm7_2028 = enrolees_gm7_2028 * prm7_8
gen repeaters_gm7_2028 = enrolees_gm7_2028 * rrm7_8
gen dropouts_gm7_2028 = enrolees_gm7_2028 * drm7_8

gen enrolees_gm7_2029 = promotees_gm6_2028 + repeaters_gm7_2028
gen promotees_gm7_2029 = enrolees_gm7_2029 * prm7_8
gen repeaters_gm7_2029 = enrolees_gm7_2029 * rrm7_8
gen dropouts_gm7_2029 = enrolees_gm7_2029 * drm7_8

gen enrolees_gm7_2030 = promotees_gm6_2029 + repeaters_gm7_2029
gen promotees_gm7_2030 = enrolees_gm7_2030 * prm7_8
gen repeaters_gm7_2030 = enrolees_gm7_2030 * rrm7_8
gen dropouts_gm7_2030 = enrolees_gm7_2030 * drm7_8

gen enrolees_gm7_2031 = promotees_gm6_2030 + repeaters_gm7_2030 
gen promotees_gm7_2031 = enrolees_gm7_2031 * prm7_8
gen repeaters_gm7_2031 = enrolees_gm7_2031 * rrm7_8
gen dropouts_gm7_2031 = enrolees_gm7_2031 * drm7_8

gen enrolees_gm7_2032 = promotees_gm6_2031 + repeaters_gm7_2031 
gen promotees_gm7_2032 = enrolees_gm7_2032 * prm7_8
gen repeaters_gm7_2032 = enrolees_gm7_2032 * rrm7_8
gen dropouts_gm7_2032 = enrolees_gm7_2032 * drm7_8

gen enrolees_gm7_2033 = promotees_gm6_2032 + repeaters_gm7_2032 
gen promotees_gm7_2033 = enrolees_gm7_2033 * prm7_8
gen repeaters_gm7_2033 = enrolees_gm7_2033 * rrm7_8
gen dropouts_gm7_2033 = enrolees_gm7_2033 * drm7_8


* boys grade 8 cohort evolution (schools with G1 to G12)
gen enrolees_gm8_2024 = promotees_gm7_2023 + 0
gen promotees_gm8_2024 = enrolees_gm8_2024 * prm8_9
gen repeaters_gm8_2024 = enrolees_gm8_2024 * rrm8_9
gen dropouts_gm8_2024 = enrolees_gm8_2024 * drm8_9

gen enrolees_gm8_2025 = promotees_gm7_2024 + repeaters_gm8_2024
gen promotees_gm8_2025 = enrolees_gm8_2025 * prm8_9
gen repeaters_gm8_2025 = enrolees_gm8_2025 * rrm8_9
gen dropouts_gm8_2025 = enrolees_gm8_2025 * drm8_9

gen enrolees_gm8_2026 = promotees_gm7_2025 + repeaters_gm8_2025
gen promotees_gm8_2026 = enrolees_gm8_2026 * prm8_9 	 	
gen repeaters_gm8_2026 = enrolees_gm8_2026 * rrm8_9
gen dropouts_gm8_2026 = enrolees_gm8_2026 * drm8_9

gen enrolees_gm8_2027 = promotees_gm7_2026 + repeaters_gm8_2026
gen promotees_gm8_2027 = enrolees_gm8_2027 * prm8_9
gen repeaters_gm8_2027 = enrolees_gm8_2027 * rrm8_9
gen dropouts_gm8_2027 = enrolees_gm8_2027 * drm8_9

gen enrolees_gm8_2028 = promotees_gm7_2027 + repeaters_gm8_2027
gen promotees_gm8_2028 = enrolees_gm8_2028 * prm8_9
gen repeaters_gm8_2028 = enrolees_gm8_2028 * rrm8_9
gen dropouts_gm8_2028 = enrolees_gm8_2028 * drm8_9

gen enrolees_gm8_2029 = promotees_gm7_2028 + repeaters_gm8_2028
gen promotees_gm8_2029 = enrolees_gm8_2029 * prm8_9
gen repeaters_gm8_2029 = enrolees_gm8_2029 * rrm8_9
gen dropouts_gm8_2029 = enrolees_gm8_2029 * drm8_9

gen enrolees_gm8_2030 = promotees_gm7_2029 + repeaters_gm8_2029
gen promotees_gm8_2030 = enrolees_gm8_2030 * prm8_9
gen repeaters_gm8_2030 = enrolees_gm8_2030 * rrm8_9
gen dropouts_gm8_2030 = enrolees_gm8_2030 * drm8_9

gen enrolees_gm8_2031 = promotees_gm7_2030 + repeaters_gm8_2030 
gen promotees_gm8_2031 = enrolees_gm8_2031 * prm8_9
gen repeaters_gm8_2031 = enrolees_gm8_2031 * rrm8_9
gen dropouts_gm8_2031 = enrolees_gm8_2031 * drm8_9

gen enrolees_gm8_2032 = promotees_gm7_2031 + repeaters_gm8_2031 
gen promotees_gm8_2032 = enrolees_gm8_2032 * prm8_9
gen repeaters_gm8_2032 = enrolees_gm8_2032 * rrm8_9
gen dropouts_gm8_2032 = enrolees_gm8_2032 * drm8_9

gen enrolees_gm8_2033 = promotees_gm7_2032 + repeaters_gm8_2032 
gen promotees_gm8_2033 = enrolees_gm8_2033 * prm8_9
gen repeaters_gm8_2033 = enrolees_gm8_2033 * rrm8_9
gen dropouts_gm8_2033 = enrolees_gm8_2033 * drm8_9

gen enrolees_gm8_2034 = promotees_gm7_2033 + repeaters_gm8_2033 
gen promotees_gm8_2034 = enrolees_gm8_2034 * prm8_9
gen repeaters_gm8_2034 = enrolees_gm8_2034 * rrm8_9
gen dropouts_gm8_2034 = enrolees_gm8_2034 * drm8_9


* boys grade 9 cohort evolution (schools with G1 to G12)
gen enrolees_gm9_2025 = promotees_gm8_2024 + 0
gen promotees_gm9_2025 = enrolees_gm9_2025 * prm9_10
gen repeaters_gm9_2025 = enrolees_gm9_2025 * rrm9_10
gen dropouts_gm9_2025 = enrolees_gm9_2025 * drm9_10

gen enrolees_gm9_2026 = promotees_gm8_2025 + repeaters_gm9_2025
gen promotees_gm9_2026 = enrolees_gm9_2026 * prm9_10 	 	
gen repeaters_gm9_2026 = enrolees_gm9_2026 * rrm9_10
gen dropouts_gm9_2026 = enrolees_gm9_2026 * drm9_10

gen enrolees_gm9_2027 = promotees_gm8_2026 + repeaters_gm9_2026
gen promotees_gm9_2027 = enrolees_gm9_2027 * prm9_10
gen repeaters_gm9_2027 = enrolees_gm9_2027 * rrm9_10
gen dropouts_gm9_2027 = enrolees_gm9_2027 * drm9_10

gen enrolees_gm9_2028 = promotees_gm8_2027 + repeaters_gm9_2027
gen promotees_gm9_2028 = enrolees_gm9_2028 * prm9_10
gen repeaters_gm9_2028 = enrolees_gm9_2028 * rrm9_10
gen dropouts_gm9_2028 = enrolees_gm9_2028 * drm9_10

gen enrolees_gm9_2029 = promotees_gm8_2028 + repeaters_gm9_2028
gen promotees_gm9_2029 = enrolees_gm9_2029 * prm9_10
gen repeaters_gm9_2029 = enrolees_gm9_2029 * rrm9_10
gen dropouts_gm9_2029 = enrolees_gm9_2029 * drm9_10

gen enrolees_gm9_2030 = promotees_gm8_2029 + repeaters_gm9_2029
gen promotees_gm9_2030 = enrolees_gm9_2030 * prm9_10
gen repeaters_gm9_2030 = enrolees_gm9_2030 * rrm9_10
gen dropouts_gm9_2030 = enrolees_gm9_2030 * drm9_10

gen enrolees_gm9_2031 = promotees_gm8_2030 + repeaters_gm9_2030 
gen promotees_gm9_2031 = enrolees_gm9_2031 * prm9_10
gen repeaters_gm9_2031 = enrolees_gm9_2031 * rrm9_10
gen dropouts_gm9_2031 = enrolees_gm9_2031 * drm9_10

gen enrolees_gm9_2032 = promotees_gm8_2031 + repeaters_gm9_2031 
gen promotees_gm9_2032 = enrolees_gm9_2032 * prm9_10
gen repeaters_gm9_2032 = enrolees_gm9_2032 * rrm9_10
gen dropouts_gm9_2032 = enrolees_gm9_2032 * drm9_10

gen enrolees_gm9_2033 = promotees_gm8_2032 + repeaters_gm9_2032 
gen promotees_gm9_2033 = enrolees_gm9_2033 * prm9_10
gen repeaters_gm9_2033 = enrolees_gm9_2033 * rrm9_10
gen dropouts_gm9_2033 = enrolees_gm9_2033 * drm9_10

gen enrolees_gm9_2034 = promotees_gm8_2033 + repeaters_gm9_2033 
gen promotees_gm9_2034 = enrolees_gm9_2034 * prm9_10
gen repeaters_gm9_2034 = enrolees_gm9_2034 * rrm9_10
gen dropouts_gm9_2034 = enrolees_gm9_2034 * drm9_10

gen enrolees_gm9_2035 = promotees_gm8_2034 + repeaters_gm9_2034 
gen promotees_gm9_2035 = enrolees_gm9_2035 * prm9_10
gen repeaters_gm9_2035 = enrolees_gm9_2035 * rrm9_10
gen dropouts_gm9_2035 = enrolees_gm9_2035 * drm9_10


* boys grade 10 cohort evolution (schools with G1 to G12)
gen enrolees_gm10_2026 = promotees_gm9_2025 + 0
gen promotees_gm10_2026 = enrolees_gm10_2026 * prm10_11 	 	
gen repeaters_gm10_2026 = enrolees_gm10_2026 * rrm10_11
gen dropouts_gm10_2026 = enrolees_gm10_2026 * drm10_11

gen enrolees_gm10_2027 = promotees_gm9_2026 + repeaters_gm10_2026
gen promotees_gm10_2027 = enrolees_gm10_2027 * prm10_11
gen repeaters_gm10_2027 = enrolees_gm10_2027 * rrm10_11
gen dropouts_gm10_2027 = enrolees_gm10_2027 * drm10_11

gen enrolees_gm10_2028 = promotees_gm9_2027 + repeaters_gm10_2027
gen promotees_gm10_2028 = enrolees_gm10_2028 * prm10_11
gen repeaters_gm10_2028 = enrolees_gm10_2028 * rrm10_11
gen dropouts_gm10_2028 = enrolees_gm10_2028 * drm10_11

gen enrolees_gm10_2029 = promotees_gm9_2028 + repeaters_gm10_2028
gen promotees_gm10_2029 = enrolees_gm10_2029 * prm10_11
gen repeaters_gm10_2029 = enrolees_gm10_2029 * rrm10_11
gen dropouts_gm10_2029 = enrolees_gm10_2029 * drm10_11

gen enrolees_gm10_2030 = promotees_gm9_2029 + repeaters_gm10_2029
gen promotees_gm10_2030 = enrolees_gm10_2030 * prm10_11
gen repeaters_gm10_2030 = enrolees_gm10_2030 * rrm10_11
gen dropouts_gm10_2030 = enrolees_gm10_2030 * drm10_11

gen enrolees_gm10_2031 = promotees_gm9_2030 + repeaters_gm10_2030 
gen promotees_gm10_2031 = enrolees_gm10_2031 * prm10_11
gen repeaters_gm10_2031 = enrolees_gm10_2031 * rrm10_11
gen dropouts_gm10_2031 = enrolees_gm10_2031 * drm10_11

gen enrolees_gm10_2032 = promotees_gm9_2031 + repeaters_gm10_2031 
gen promotees_gm10_2032 = enrolees_gm10_2032 * prm10_11
gen repeaters_gm10_2032 = enrolees_gm10_2032 * rrm10_11
gen dropouts_gm10_2032 = enrolees_gm10_2032 * drm10_11

gen enrolees_gm10_2033 = promotees_gm9_2032 + repeaters_gm10_2032 
gen promotees_gm10_2033 = enrolees_gm10_2033 * prm10_11
gen repeaters_gm10_2033 = enrolees_gm10_2033 * rrm10_11
gen dropouts_gm10_2033 = enrolees_gm10_2033 * drm10_11

gen enrolees_gm10_2034 = promotees_gm9_2033 + repeaters_gm10_2033 
gen promotees_gm10_2034 = enrolees_gm10_2034 * prm10_11
gen repeaters_gm10_2034 = enrolees_gm10_2034 * rrm10_11
gen dropouts_gm10_2034 = enrolees_gm10_2034 * drm10_11

gen enrolees_gm10_2035 = promotees_gm9_2034 + repeaters_gm10_2034 
gen promotees_gm10_2035 = enrolees_gm10_2035 * prm10_11
gen repeaters_gm10_2035 = enrolees_gm10_2035 * rrm10_11
gen dropouts_gm10_2035 = enrolees_gm10_2035 * drm10_11

gen enrolees_gm10_2036 = promotees_gm9_2035 + repeaters_gm10_2035 
gen promotees_gm10_2036 = enrolees_gm10_2036 * prm10_11
gen repeaters_gm10_2036 = enrolees_gm10_2036 * rrm10_11
gen dropouts_gm10_2036 = enrolees_gm10_2036 * drm10_11


* boys grade 11 cohort evolution (schools with G1 to G12)

gen enrolees_gm11_2027 = promotees_gm10_2026 + 0
gen promotees_gm11_2027 = enrolees_gm11_2027 * prm11_12
gen repeaters_gm11_2027 = enrolees_gm11_2027 * rrm11_12
gen dropouts_gm11_2027 = enrolees_gm11_2027 * drm11_12

gen enrolees_gm11_2028 = promotees_gm10_2027 + repeaters_gm11_2027
gen promotees_gm11_2028 = enrolees_gm11_2028 * prm11_12
gen repeaters_gm11_2028 = enrolees_gm11_2028 * rrm11_12
gen dropouts_gm11_2028 = enrolees_gm11_2028 * drm11_12

gen enrolees_gm11_2029 = promotees_gm10_2028 + repeaters_gm11_2028
gen promotees_gm11_2029 = enrolees_gm11_2029 * prm11_12
gen repeaters_gm11_2029 = enrolees_gm11_2029 * rrm11_12
gen dropouts_gm11_2029 = enrolees_gm11_2029 * drm11_12

gen enrolees_gm11_2030 = promotees_gm10_2029 + repeaters_gm11_2029
gen promotees_gm11_2030 = enrolees_gm11_2030 * prm11_12
gen repeaters_gm11_2030 = enrolees_gm11_2030 * rrm11_12
gen dropouts_gm11_2030 = enrolees_gm11_2030 * drm11_12

gen enrolees_gm11_2031 = promotees_gm10_2030 + repeaters_gm11_2030 
gen promotees_gm11_2031 = enrolees_gm11_2031 * prm11_12
gen repeaters_gm11_2031 = enrolees_gm11_2031 * rrm11_12
gen dropouts_gm11_2031 = enrolees_gm11_2031 * drm11_12

gen enrolees_gm11_2032 = promotees_gm10_2031 + repeaters_gm11_2031 
gen promotees_gm11_2032 = enrolees_gm11_2032 * prm11_12
gen repeaters_gm11_2032 = enrolees_gm11_2032 * rrm11_12
gen dropouts_gm11_2032 = enrolees_gm11_2032 * drm11_12

gen enrolees_gm11_2033 = promotees_gm10_2032 + repeaters_gm11_2032 
gen promotees_gm11_2033 = enrolees_gm11_2033 * prm11_12
gen repeaters_gm11_2033 = enrolees_gm11_2033 * rrm11_12
gen dropouts_gm11_2033 = enrolees_gm11_2033 * drm11_12

gen enrolees_gm11_2034 = promotees_gm10_2033 + repeaters_gm11_2033 
gen promotees_gm11_2034 = enrolees_gm11_2034 * prm11_12
gen repeaters_gm11_2034 = enrolees_gm11_2034 * rrm11_12
gen dropouts_gm11_2034 = enrolees_gm11_2034 * drm11_12

gen enrolees_gm11_2035 = promotees_gm10_2034 + repeaters_gm11_2034 
gen promotees_gm11_2035 = enrolees_gm11_2035 * prm11_12
gen repeaters_gm11_2035 = enrolees_gm11_2035 * rrm11_12
gen dropouts_gm11_2035 = enrolees_gm11_2035 * drm11_12

gen enrolees_gm11_2036 = promotees_gm10_2035 + repeaters_gm11_2035 
gen promotees_gm11_2036 = enrolees_gm11_2036 * prm11_12
gen repeaters_gm11_2036 = enrolees_gm11_2036 * rrm11_12
gen dropouts_gm11_2036 = enrolees_gm11_2036 * drm11_12

gen enrolees_gm11_2037 = promotees_gm10_2036 + repeaters_gm11_2036 
gen promotees_gm11_2037 = enrolees_gm11_2037 * prm11_12
gen repeaters_gm11_2037 = enrolees_gm11_2037 * rrm11_12
gen dropouts_gm11_2037 = enrolees_gm11_2037 * drm11_12



* boys grade 12 cohort evolution (schools with G1 to G12)

gen enrolees_gm12_2028 = promotees_gm11_2027 + 0
gen graduates_gm12_2028 = enrolees_gm12_2028 * prm12_grad
gen repeaters_gm12_2028 = enrolees_gm12_2028 * rrm12_grad
gen dropouts_gm12_2028 = enrolees_gm12_2028 * drm12_grad

gen enrolees_gm12_2029 = promotees_gm11_2028 + repeaters_gm12_2028
gen graduates_gm12_2029 = enrolees_gm12_2029 * prm12_grad
gen repeaters_gm12_2029 = enrolees_gm12_2029 * rrm12_grad
gen dropouts_gm12_2029 = enrolees_gm12_2029 * drm12_grad

gen enrolees_gm12_2030 = promotees_gm11_2029 + repeaters_gm12_2029
gen graduates_gm12_2030 = enrolees_gm12_2030 * prm12_grad
gen repeaters_gm12_2030 = enrolees_gm12_2030 * rrm12_grad
gen dropouts_gm12_2030 = enrolees_gm12_2030 * drm12_grad

gen enrolees_gm12_2031 = promotees_gm11_2030 + repeaters_gm12_2030
gen graduates_gm12_2031 = enrolees_gm12_2031 * prm12_grad
gen repeaters_gm12_2031 = enrolees_gm12_2031 * rrm12_grad
gen dropouts_gm12_2031 = enrolees_gm12_2031 * drm12_grad

gen enrolees_gm12_2032 = promotees_gm11_2031 + repeaters_gm12_2031
gen graduates_gm12_2032 = enrolees_gm12_2032 * prm12_grad
gen repeaters_gm12_2032 = enrolees_gm12_2032 * rrm12_grad
gen dropouts_gm12_2032 = enrolees_gm12_2032 * drm12_grad

gen enrolees_gm12_2033 = promotees_gm11_2032 + repeaters_gm12_2032 
gen graduates_gm12_2033 = enrolees_gm12_2033 * prm12_grad
gen repeaters_gm12_2033 = enrolees_gm12_2033 * rrm12_grad
gen dropouts_gm12_2033 = enrolees_gm12_2033 * drm12_grad

gen enrolees_gm12_2034 = promotees_gm11_2033 + repeaters_gm12_2033 
gen graduates_gm12_2034 = enrolees_gm12_2034 * prm12_grad
gen repeaters_gm12_2034 = enrolees_gm12_2034 * rrm12_grad
gen dropouts_gm12_2034 = enrolees_gm12_2034 * drm12_grad

gen enrolees_gm12_2035 = promotees_gm11_2034 + repeaters_gm12_2034 
gen graduates_gm12_2035 = enrolees_gm12_2035 * prm12_grad
gen repeaters_gm12_2035 = enrolees_gm12_2035 * rrm12_grad
gen dropouts_gm12_2035 = enrolees_gm12_2035 * drm12_grad

gen enrolees_gm12_2036 = promotees_gm11_2035 + repeaters_gm12_2035 
gen graduates_gm12_2036 = enrolees_gm12_2036 * prm12_grad
gen repeaters_gm12_2036 = enrolees_gm12_2036 * rrm12_grad
gen dropouts_gm12_2036 = enrolees_gm12_2036 * drm12_grad

gen enrolees_gm12_2037 = promotees_gm11_2036 + repeaters_gm12_2036 
gen graduates_gm12_2037 = enrolees_gm12_2037 * prm12_grad
gen repeaters_gm12_2037 = enrolees_gm12_2037 * rrm12_grad
gen dropouts_gm12_2037 = enrolees_gm12_2037 * drm12_grad

gen enrolees_gm12_2038 = promotees_gm11_2037 + repeaters_gm12_2037 
gen graduates_gm12_2038 = enrolees_gm12_2038 * prm12_grad
gen repeaters_gm12_2038 = enrolees_gm12_2038 * rrm12_grad
gen dropouts_gm12_2038 = enrolees_gm12_2038 * drm12_grad



*******************************************************************************
*                                   Girls                                     *
*******************************************************************************

gen fcohort_size = 100


* boys grade 1 cohort evolution

gen enrolees_gf1_2017 = mcohort_size
gen promotees_gf1_2017 = enrolees_gf1_2017 * prf1_2
gen repeaters_gf1_2017 = enrolees_gf1_2017 * rrf1_2
gen dropouts_gf1_2017 = enrolees_gf1_2017 * drf1_2

gen enrolees_gf1_2018 = 0 + repeaters_gf1_2017
gen promotees_gf1_2018 = enrolees_gf1_2018 * prf1_2
gen repeaters_gf1_2018 = enrolees_gf1_2018 * rrf1_2
gen dropouts_gf1_2018 = enrolees_gf1_2018 * drf1_2

gen enrolees_gf1_2019 = 0 + repeaters_gf1_2018
gen promotees_gf1_2019 = enrolees_gf1_2019 * prf1_2
gen repeaters_gf1_2019 = enrolees_gf1_2019 * rrf1_2
gen dropouts_gf1_2019 = enrolees_gf1_2019 * drf1_2

gen enrolees_gf1_2020 = 0 + repeaters_gf1_2019
gen promotees_gf1_2020 = enrolees_gf1_2020 * prf1_2
gen repeaters_gf1_2020 = enrolees_gf1_2020 * rrf1_2
gen dropouts_gf1_2020 = enrolees_gf1_2020 * drf1_2

gen enrolees_gf1_2021 = 0 + repeaters_gf1_2020
gen promotees_gf1_2021 = enrolees_gf1_2021 * prf1_2
gen repeaters_gf1_2021 = enrolees_gf1_2021 * rrf1_2
gen dropouts_gf1_2021 = enrolees_gf1_2021 * drf1_2

gen enrolees_gf1_2022 = 0 + repeaters_gf1_2021
gen promotees_gf1_2022 = enrolees_gf1_2022 * prf1_2
gen repeaters_gf1_2022 = enrolees_gf1_2022 * rrf1_2
gen dropouts_gf1_2022 = enrolees_gf1_2022 * drf1_2

gen enrolees_gf1_2023 = 0 + repeaters_gf1_2022
gen promotees_gf1_2023 = enrolees_gf1_2023 * prf1_2
gen repeaters_gf1_2023 = enrolees_gf1_2023 * rrf1_2
gen dropouts_gf1_2023 = enrolees_gf1_2023 * drf1_2

gen enrolees_gf1_2024 = 0 + repeaters_gf1_2023
gen promotees_gf1_2024 = enrolees_gf1_2024 * prf1_2
gen repeaters_gf1_2024 = enrolees_gf1_2024 * rrf1_2
gen dropouts_gf1_2024 = enrolees_gf1_2024 * drf1_2

gen enrolees_gf1_2025 = 0 + repeaters_gf1_2024
gen promotees_gf1_2025 = enrolees_gf1_2025 * prf1_2
gen repeaters_gf1_2025 = enrolees_gf1_2025 * rrf1_2
gen dropouts_gf1_2025 = enrolees_gf1_2025 * drf1_2

gen enrolees_gf1_2026 = 0 + repeaters_gf1_2025
gen promotees_gf1_2026 = enrolees_gf1_2026 * prf1_2
gen repeaters_gf1_2026 = enrolees_gf1_2026 * rrf1_2
gen dropouts_gf1_2026 = enrolees_gf1_2026 * drf1_2

gen enrolees_gf1_2027 = 0 + repeaters_gf1_2026
gen promotees_gf1_2027 = enrolees_gf1_2027 * prf1_2
gen repeaters_gf1_2027 = enrolees_gf1_2027 * rrf1_2
gen dropouts_gf1_2027 = enrolees_gf1_2027 * drf1_2


* girls grade 2 cohort evolution

gen enrolees_gf2_2018 = promotees_gf1_2017 + 0
gen promotees_gf2_2018 = enrolees_gf2_2018 * prf2_3
gen repeaters_gf2_2018 = enrolees_gf2_2018 * rrf2_3
gen dropouts_gf2_2018 = enrolees_gf2_2018 * drf2_3

gen enrolees_gf2_2019 = promotees_gf1_2018 + repeaters_gf2_2018
gen promotees_gf2_2019 = enrolees_gf2_2019 * prf2_3
gen repeaters_gf2_2019 = enrolees_gf2_2019 * rrf2_3
gen dropouts_gf2_2019 = enrolees_gf2_2019 * drf2_3

gen enrolees_gf2_2020 = promotees_gf1_2019 + repeaters_gf2_2019
gen promotees_gf2_2020 = enrolees_gf2_2020 * prf2_3
gen repeaters_gf2_2020 = enrolees_gf2_2020 * rrf2_3
gen dropouts_gf2_2020 = enrolees_gf2_2020 * drf2_3

gen enrolees_gf2_2021 = promotees_gf1_2020 + repeaters_gf2_2020
gen promotees_gf2_2021 = enrolees_gf2_2021 * prf2_3
gen repeaters_gf2_2021 = enrolees_gf2_2021 * rrf2_3
gen dropouts_gf2_2021 = enrolees_gf2_2021 * drf2_3

gen enrolees_gf2_2022 = promotees_gf1_2021 + repeaters_gf2_2021
gen promotees_gf2_2022 = enrolees_gf2_2022 * prf2_3
gen repeaters_gf2_2022 = enrolees_gf2_2022 * rrf2_3
gen dropouts_gf2_2022 = enrolees_gf2_2022 * drf2_3

gen enrolees_gf2_2023 = promotees_gf1_2022 + repeaters_gf2_2022
gen promotees_gf2_2023 = enrolees_gf2_2023 * prf2_3
gen repeaters_gf2_2023 = enrolees_gf2_2023 * rrf2_3
gen dropouts_gf2_2023 = enrolees_gf2_2023 * drf2_3

gen enrolees_gf2_2024 = promotees_gf1_2023 + repeaters_gf2_2023
gen promotees_gf2_2024 = enrolees_gf2_2024 * prf2_3
gen repeaters_gf2_2024 = enrolees_gf2_2024 * rrf2_3
gen dropouts_gf2_2024 = enrolees_gf2_2024 * drf2_3

gen enrolees_gf2_2025 = promotees_gf1_2024 + repeaters_gf2_2024
gen promotees_gf2_2025 = enrolees_gf2_2025 * prf2_3
gen repeaters_gf2_2025 = enrolees_gf2_2025 * rrf2_3
gen dropouts_gf2_2025 = enrolees_gf2_2025 * drf2_3

gen enrolees_gf2_2026 = promotees_gf1_2025 + repeaters_gf2_2025
gen promotees_gf2_2026 = enrolees_gf2_2026 * prf2_3
gen repeaters_gf2_2026 = enrolees_gf2_2026 * rrf2_3
gen dropouts_gf2_2026 = enrolees_gf2_2026 * drf2_3

gen enrolees_gf2_2027 = promotees_gf1_2026 + repeaters_gf2_2026
gen promotees_gf2_2027 = enrolees_gf2_2027 * prf2_3
gen repeaters_gf2_2027 = enrolees_gf2_2027 * rrf2_3
gen dropouts_gf2_2027 = enrolees_gf2_2027 * drf2_3

gen enrolees_gf2_2028 = promotees_gf1_2027 + repeaters_gf2_2027
gen promotees_gf2_2028 = enrolees_gf2_2028 * prf2_3
gen repeaters_gf2_2028 = enrolees_gf2_2028 * rrf2_3
gen dropouts_gf2_2028 = enrolees_gf2_2028 * drf2_3


* girls grade 3 cohort evolution

gen enrolees_gf3_2019 = promotees_gf2_2018 + 0
gen promotees_gf3_2019 = enrolees_gf3_2019 * prf3_4
gen repeaters_gf3_2019 = enrolees_gf3_2019 * rrf3_4
gen dropouts_gf3_2019 = enrolees_gf3_2019 * drf3_4

gen enrolees_gf3_2020 = promotees_gf2_2019 + repeaters_gf3_2019
gen promotees_gf3_2020 = enrolees_gf3_2020 * prf3_4
gen repeaters_gf3_2020 = enrolees_gf3_2020 * rrf3_4
gen dropouts_gf3_2020 = enrolees_gf3_2020 * drf3_4

gen enrolees_gf3_2021 = promotees_gf2_2020 + repeaters_gf3_2020
gen promotees_gf3_2021 = enrolees_gf3_2021 * prf3_4
gen repeaters_gf3_2021 = enrolees_gf3_2021 * rrf3_4
gen dropouts_gf3_2021 = enrolees_gf3_2021 * drf3_4

gen enrolees_gf3_2022 = promotees_gf2_2021 + repeaters_gf3_2021
gen promotees_gf3_2022 = enrolees_gf3_2022 * prf3_4
gen repeaters_gf3_2022 = enrolees_gf3_2022 * rrf3_4
gen dropouts_gf3_2022 = enrolees_gf3_2022 * drf3_4

gen enrolees_gf3_2023 = promotees_gf2_2022 + repeaters_gf3_2022
gen promotees_gf3_2023 = enrolees_gf3_2023 * prf3_4
gen repeaters_gf3_2023 = enrolees_gf3_2023 * rrf3_4
gen dropouts_gf3_2023 = enrolees_gf3_2023 * drf3_4

gen enrolees_gf3_2024 = promotees_gf2_2023 + repeaters_gf3_2023
gen promotees_gf3_2024 = enrolees_gf3_2024 * prf3_4
gen repeaters_gf3_2024 = enrolees_gf3_2024 * rrf3_4
gen dropouts_gf3_2024 = enrolees_gf3_2024 * drf3_4

gen enrolees_gf3_2025 = promotees_gf2_2024 + repeaters_gf3_2024
gen promotees_gf3_2025 = enrolees_gf3_2025 * prf3_4
gen repeaters_gf3_2025 = enrolees_gf3_2025 * rrf3_4
gen dropouts_gf3_2025 = enrolees_gf3_2025 * drf3_4

gen enrolees_gf3_2026 = promotees_gf2_2025 + repeaters_gf3_2025
gen promotees_gf3_2026 = enrolees_gf3_2026 * prf3_4
gen repeaters_gf3_2026 = enrolees_gf3_2026 * rrf3_4
gen dropouts_gf3_2026 = enrolees_gf3_2026 * drf3_4

gen enrolees_gf3_2027 = promotees_gf2_2026 + repeaters_gf3_2026
gen promotees_gf3_2027 = enrolees_gf3_2027 * prf3_4
gen repeaters_gf3_2027 = enrolees_gf3_2027 * rrf3_4
gen dropouts_gf3_2027 = enrolees_gf3_2027 * drf3_4

gen enrolees_gf3_2028 = promotees_gf2_2027 + repeaters_gf3_2027
gen promotees_gf3_2028 = enrolees_gf3_2028 * prf3_4
gen repeaters_gf3_2028 = enrolees_gf3_2028 * rrf3_4
gen dropouts_gf3_2028 = enrolees_gf3_2028 * drf3_4

gen enrolees_gf3_2029 = promotees_gf2_2028 + repeaters_gf3_2028
gen promotees_gf3_2029 = enrolees_gf3_2029 * prf3_4
gen repeaters_gf3_2029 = enrolees_gf3_2029 * rrf3_4
gen dropouts_gf3_2029 = enrolees_gf3_2029 * drf3_4


* girls grade 4 cohort evolution
gen enrolees_gf4_2020 = promotees_gf3_2019 + 0
gen promotees_gf4_2020 = enrolees_gf4_2020 * prf4_5
gen repeaters_gf4_2020 = enrolees_gf4_2020 * rrf4_5
gen dropouts_gf4_2020 = enrolees_gf4_2020 * drf4_5

gen enrolees_gf4_2021 = promotees_gf3_2020 + repeaters_gf4_2020
gen promotees_gf4_2021 = enrolees_gf4_2021 * prf4_5
gen repeaters_gf4_2021 = enrolees_gf4_2021 * rrf4_5
gen dropouts_gf4_2021 = enrolees_gf4_2021 * drf4_5

gen enrolees_gf4_2022 = promotees_gf3_2021 + repeaters_gf4_2021
gen promotees_gf4_2022 = enrolees_gf4_2022 * prf4_5
gen repeaters_gf4_2022 = enrolees_gf4_2022 * rrf4_5
gen dropouts_gf4_2022 = enrolees_gf4_2022 * drf4_5

gen enrolees_gf4_2023 = promotees_gf3_2022 + repeaters_gf4_2022
gen promotees_gf4_2023 = enrolees_gf4_2023 * prf4_5
gen repeaters_gf4_2023 = enrolees_gf4_2023 * rrf4_5
gen dropouts_gf4_2023 = enrolees_gf4_2023 * drf4_5

gen enrolees_gf4_2024 = promotees_gf3_2023 + repeaters_gf4_2023
gen promotees_gf4_2024 = enrolees_gf4_2024 * prf4_5
gen repeaters_gf4_2024 = enrolees_gf4_2024 * rrf4_5
gen dropouts_gf4_2024 = enrolees_gf4_2024 * drf4_5

gen enrolees_gf4_2025 = promotees_gf3_2024 + repeaters_gf4_2024
gen promotees_gf4_2025 = enrolees_gf4_2025 * prf4_5
gen repeaters_gf4_2025 = enrolees_gf4_2025 * rrf4_5
gen dropouts_gf4_2025 = enrolees_gf4_2025 * drf4_5

gen enrolees_gf4_2026 = promotees_gf3_2025 + repeaters_gf4_2025
gen promotees_gf4_2026 = enrolees_gf4_2026 * prf4_5
gen repeaters_gf4_2026 = enrolees_gf4_2026 * rrf4_5
gen dropouts_gf4_2026 = enrolees_gf4_2026 * drf4_5

gen enrolees_gf4_2027 = promotees_gf3_2026 + repeaters_gf4_2026
gen promotees_gf4_2027 = enrolees_gf4_2027 * prf4_5
gen repeaters_gf4_2027 = enrolees_gf4_2027 * rrf4_5
gen dropouts_gf4_2027 = enrolees_gf4_2027 * drf4_5

gen enrolees_gf4_2028 = promotees_gf3_2027 + repeaters_gf4_2027
gen promotees_gf4_2028 = enrolees_gf4_2028 * prf4_5
gen repeaters_gf4_2028 = enrolees_gf4_2028 * rrf4_5
gen dropouts_gf4_2028 = enrolees_gf4_2028 * drf4_5

gen enrolees_gf4_2029 = promotees_gf3_2028 + repeaters_gf4_2028
gen promotees_gf4_2029 = enrolees_gf4_2029 * prf4_5
gen repeaters_gf4_2029 = enrolees_gf4_2029 * rrf4_5
gen dropouts_gf4_2029 = enrolees_gf4_2029 * drf4_5

gen enrolees_gf4_2030 = promotees_gf3_2029 + repeaters_gf4_2029
gen promotees_gf4_2030 = enrolees_gf4_2030 * prf4_5
gen repeaters_gf4_2030 = enrolees_gf4_2030 * rrf4_5
gen dropouts_gf4_2030 = enrolees_gf4_2030 * drf4_5


* girls grade 5 cohort evolution
gen enrolees_gf5_2021 = promotees_gf4_2020 + 0
gen promotees_gf5_2021 = enrolees_gf5_2021 * prf5_6
gen repeaters_gf5_2021 = enrolees_gf5_2021 * rrf5_6
gen dropouts_gf5_2021 = enrolees_gf5_2021 * drf5_6

gen enrolees_gf5_2022 = promotees_gf4_2021 + repeaters_gf5_2021
gen promotees_gf5_2022 = enrolees_gf5_2022 * prf5_6
gen repeaters_gf5_2022 = enrolees_gf5_2022 * rrf5_6
gen dropouts_gf5_2022 = enrolees_gf5_2022 * drf5_6

gen enrolees_gf5_2023 = promotees_gf4_2022 + repeaters_gf5_2022
gen promotees_gf5_2023 = enrolees_gf5_2023 * prf5_6
gen repeaters_gf5_2023 = enrolees_gf5_2023 * rrf5_6
gen dropouts_gf5_2023 = enrolees_gf5_2023 * drf5_6

gen enrolees_gf5_2024 = promotees_gf4_2023 + repeaters_gf5_2023
gen promotees_gf5_2024 = enrolees_gf5_2024 * prf5_6
gen repeaters_gf5_2024 = enrolees_gf5_2024 * rrf5_6
gen dropouts_gf5_2024 = enrolees_gf5_2024 * drf5_6

gen enrolees_gf5_2025 = promotees_gf4_2024 + repeaters_gf5_2024
gen promotees_gf5_2025 = enrolees_gf5_2025 * prf5_6
gen repeaters_gf5_2025 = enrolees_gf5_2025 * rrf5_6
gen dropouts_gf5_2025 = enrolees_gf5_2025 * drf5_6

gen enrolees_gf5_2026 = promotees_gf4_2025 + repeaters_gf5_2025
gen promotees_gf5_2026 = enrolees_gf5_2026 * prf5_6 	 	
gen repeaters_gf5_2026 = enrolees_gf5_2026 * rrf5_6
gen dropouts_gf5_2026 = enrolees_gf5_2026 * drf5_6

gen enrolees_gf5_2027 = promotees_gf4_2026 + repeaters_gf5_2026
gen promotees_gf5_2027 = enrolees_gf5_2027 * prf5_6
gen repeaters_gf5_2027 = enrolees_gf5_2027 * rrf5_6
gen dropouts_gf5_2027 = enrolees_gf5_2027 * drf5_6

gen enrolees_gf5_2028 = promotees_gf4_2027 + repeaters_gf5_2027
gen promotees_gf5_2028 = enrolees_gf5_2028 * prf5_6
gen repeaters_gf5_2028 = enrolees_gf5_2028 * rrf5_6
gen dropouts_gf5_2028 = enrolees_gf5_2028 * drf5_6

gen enrolees_gf5_2029 = promotees_gf4_2028 + repeaters_gf5_2028
gen promotees_gf5_2029 = enrolees_gf5_2029 * prf5_6
gen repeaters_gf5_2029 = enrolees_gf5_2029 * rrf5_6
gen dropouts_gf5_2029 = enrolees_gf5_2029 * drf5_6

gen enrolees_gf5_2030 = promotees_gf4_2029 + repeaters_gf5_2029
gen promotees_gf5_2030 = enrolees_gf5_2030 * prf5_6
gen repeaters_gf5_2030 = enrolees_gf5_2030 * rrf5_6
gen dropouts_gf5_2030 = enrolees_gf5_2030 * drf5_6

gen enrolees_gf5_2031 = promotees_gf4_2030 + repeaters_gf5_2030
gen promotees_gf5_2031 = enrolees_gf5_2031 * prf5_6
gen repeaters_gf5_2031 = enrolees_gf5_2031 * rrf5_6
gen dropouts_gf5_2031 = enrolees_gf5_2031 * drf5_6


* girls grade 6 cohort evolution
gen enrolees_gf6_2022 = promotees_gf5_2021 + 0
gen promotees_gf6_2022 = enrolees_gf6_2022 * prf6_7
gen repeaters_gf6_2022 = enrolees_gf6_2022 * rrf6_7
gen dropouts_gf6_2022 = enrolees_gf6_2022 * drf6_7

gen enrolees_gf6_2023 = promotees_gf5_2022 + repeaters_gf6_2022
gen promotees_gf6_2023 = enrolees_gf6_2023 * prf6_7
gen repeaters_gf6_2023 = enrolees_gf6_2023 * rrf6_7
gen dropouts_gf6_2023 = enrolees_gf6_2023 * drf6_7

gen enrolees_gf6_2024 = promotees_gf5_2023 + repeaters_gf6_2023
gen promotees_gf6_2024 = enrolees_gf6_2024 * prf6_7
gen repeaters_gf6_2024 = enrolees_gf6_2024 * rrf6_7
gen dropouts_gf6_2024 = enrolees_gf6_2024 * drf6_7

gen enrolees_gf6_2025 = promotees_gf5_2024 + repeaters_gf6_2024
gen promotees_gf6_2025 = enrolees_gf6_2025 * prf6_7
gen repeaters_gf6_2025 = enrolees_gf6_2025 * rrf6_7
gen dropouts_gf6_2025 = enrolees_gf6_2025 * drf6_7

gen enrolees_gf6_2026 = promotees_gf5_2025 + repeaters_gf6_2025
gen promotees_gf6_2026 = enrolees_gf6_2026 * prf6_7 	 	
gen repeaters_gf6_2026 = enrolees_gf6_2026 * rrf6_7
gen dropouts_gf6_2026 = enrolees_gf6_2026 * drf6_7

gen enrolees_gf6_2027 = promotees_gf5_2026 + repeaters_gf6_2026
gen promotees_gf6_2027 = enrolees_gf6_2027 * prf6_7
gen repeaters_gf6_2027 = enrolees_gf6_2027 * rrf6_7
gen dropouts_gf6_2027 = enrolees_gf6_2027 * drf6_7

gen enrolees_gf6_2028 = promotees_gf5_2027 + repeaters_gf6_2027
gen promotees_gf6_2028 = enrolees_gf6_2028 * prf6_7
gen repeaters_gf6_2028 = enrolees_gf6_2028 * rrf6_7
gen dropouts_gf6_2028 = enrolees_gf6_2028 * drf6_7

gen enrolees_gf6_2029 = promotees_gf5_2028 + repeaters_gf6_2028
gen promotees_gf6_2029 = enrolees_gf6_2029 * prf6_7
gen repeaters_gf6_2029 = enrolees_gf6_2029 * rrf6_7
gen dropouts_gf6_2029 = enrolees_gf6_2029 * drf6_7

gen enrolees_gf6_2030 = promotees_gf5_2029 + repeaters_gf6_2029
gen promotees_gf6_2030 = enrolees_gf6_2030 * prf6_7
gen repeaters_gf6_2030 = enrolees_gf6_2030 * rrf6_7
gen dropouts_gf6_2030 = enrolees_gf6_2030 * drf6_7

gen enrolees_gf6_2031 = promotees_gf5_2030 + repeaters_gf6_2030 
gen promotees_gf6_2031 = enrolees_gf6_2031 * prf6_7
gen repeaters_gf6_2031 = enrolees_gf6_2031 * rrf6_7
gen dropouts_gf6_2031 = enrolees_gf6_2031 * drf6_7

gen enrolees_gf6_2032 = promotees_gf5_2031 + repeaters_gf6_2031 
gen promotees_gf6_2032 = enrolees_gf6_2032 * prf6_7
gen repeaters_gf6_2032 = enrolees_gf6_2032 * rrf6_7
gen dropouts_gf6_2032 = enrolees_gf6_2032 * drf6_7


* girls grade 7 cohort evolution (schools with G1 to G12)
gen enrolees_gf7_2023 = promotees_gf6_2022 + 0
gen promotees_gf7_2023 = enrolees_gf7_2023 * prf7_8  
gen repeaters_gf7_2023 = enrolees_gf7_2023 * rrf7_8
gen dropouts_gf7_2023 = enrolees_gf7_2023 * drf7_8

gen enrolees_gf7_2024 = promotees_gf6_2023 + repeaters_gf7_2023
gen promotees_gf7_2024 = enrolees_gf7_2024 * prf7_8
gen repeaters_gf7_2024 = enrolees_gf7_2024 * rrf7_8
gen dropouts_gf7_2024 = enrolees_gf7_2024 * drf7_8

gen enrolees_gf7_2025 = promotees_gf6_2024 + repeaters_gf7_2024
gen promotees_gf7_2025 = enrolees_gf7_2025 * prf7_8
gen repeaters_gf7_2025 = enrolees_gf7_2025 * rrf7_8
gen dropouts_gf7_2025 = enrolees_gf7_2025 * drf7_8

gen enrolees_gf7_2026 = promotees_gf6_2025 + repeaters_gf7_2025
gen promotees_gf7_2026 = enrolees_gf7_2026 * prf7_8 	 	
gen repeaters_gf7_2026 = enrolees_gf7_2026 * rrf7_8
gen dropouts_gf7_2026 = enrolees_gf7_2026 * drf7_8

gen enrolees_gf7_2027 = promotees_gf6_2026 + repeaters_gf7_2026
gen promotees_gf7_2027 = enrolees_gf7_2027 * prf7_8
gen repeaters_gf7_2027 = enrolees_gf7_2027 * rrf7_8
gen dropouts_gf7_2027 = enrolees_gf7_2027 * drf7_8

gen enrolees_gf7_2028 = promotees_gf6_2027 + repeaters_gf7_2027
gen promotees_gf7_2028 = enrolees_gf7_2028 * prf7_8
gen repeaters_gf7_2028 = enrolees_gf7_2028 * rrf7_8
gen dropouts_gf7_2028 = enrolees_gf7_2028 * drf7_8

gen enrolees_gf7_2029 = promotees_gf6_2028 + repeaters_gf7_2028
gen promotees_gf7_2029 = enrolees_gf7_2029 * prf7_8
gen repeaters_gf7_2029 = enrolees_gf7_2029 * rrf7_8
gen dropouts_gf7_2029 = enrolees_gf7_2029 * drf7_8

gen enrolees_gf7_2030 = promotees_gf6_2029 + repeaters_gf7_2029
gen promotees_gf7_2030 = enrolees_gf7_2030 * prf7_8
gen repeaters_gf7_2030 = enrolees_gf7_2030 * rrf7_8
gen dropouts_gf7_2030 = enrolees_gf7_2030 * drf7_8

gen enrolees_gf7_2031 = promotees_gf6_2030 + repeaters_gf7_2030 
gen promotees_gf7_2031 = enrolees_gf7_2031 * prf7_8
gen repeaters_gf7_2031 = enrolees_gf7_2031 * rrf7_8
gen dropouts_gf7_2031 = enrolees_gf7_2031 * drf7_8

gen enrolees_gf7_2032 = promotees_gf6_2031 + repeaters_gf7_2031 
gen promotees_gf7_2032 = enrolees_gf7_2032 * prf7_8
gen repeaters_gf7_2032 = enrolees_gf7_2032 * rrf7_8
gen dropouts_gf7_2032 = enrolees_gf7_2032 * drf7_8

gen enrolees_gf7_2033 = promotees_gf6_2032 + repeaters_gf7_2032 
gen promotees_gf7_2033 = enrolees_gf7_2033 * prf7_8
gen repeaters_gf7_2033 = enrolees_gf7_2033 * rrf7_8
gen dropouts_gf7_2033 = enrolees_gf7_2033 * drf7_8


* girls grade 8 cohort evolution (schools with G1 to G12)
gen enrolees_gf8_2024 = promotees_gf7_2023 + 0
gen promotees_gf8_2024 = enrolees_gf8_2024 * prf8_9
gen repeaters_gf8_2024 = enrolees_gf8_2024 * rrf8_9
gen dropouts_gf8_2024 = enrolees_gf8_2024 * drf8_9

gen enrolees_gf8_2025 = promotees_gf7_2024 + repeaters_gf8_2024
gen promotees_gf8_2025 = enrolees_gf8_2025 * prf8_9
gen repeaters_gf8_2025 = enrolees_gf8_2025 * rrf8_9
gen dropouts_gf8_2025 = enrolees_gf8_2025 * drf8_9

gen enrolees_gf8_2026 = promotees_gf7_2025 + repeaters_gf8_2025
gen promotees_gf8_2026 = enrolees_gf8_2026 * prf8_9 	 	
gen repeaters_gf8_2026 = enrolees_gf8_2026 * rrf8_9
gen dropouts_gf8_2026 = enrolees_gf8_2026 * drf8_9

gen enrolees_gf8_2027 = promotees_gf7_2026 + repeaters_gf8_2026
gen promotees_gf8_2027 = enrolees_gf8_2027 * prf8_9
gen repeaters_gf8_2027 = enrolees_gf8_2027 * rrf8_9
gen dropouts_gf8_2027 = enrolees_gf8_2027 * drf8_9

gen enrolees_gf8_2028 = promotees_gf7_2027 + repeaters_gf8_2027
gen promotees_gf8_2028 = enrolees_gf8_2028 * prf8_9
gen repeaters_gf8_2028 = enrolees_gf8_2028 * rrf8_9
gen dropouts_gf8_2028 = enrolees_gf8_2028 * drf8_9

gen enrolees_gf8_2029 = promotees_gf7_2028 + repeaters_gf8_2028
gen promotees_gf8_2029 = enrolees_gf8_2029 * prf8_9
gen repeaters_gf8_2029 = enrolees_gf8_2029 * rrf8_9
gen dropouts_gf8_2029 = enrolees_gf8_2029 * drf8_9

gen enrolees_gf8_2030 = promotees_gf7_2029 + repeaters_gf8_2029
gen promotees_gf8_2030 = enrolees_gf8_2030 * prf8_9
gen repeaters_gf8_2030 = enrolees_gf8_2030 * rrf8_9
gen dropouts_gf8_2030 = enrolees_gf8_2030 * drf8_9

gen enrolees_gf8_2031 = promotees_gf7_2030 + repeaters_gf8_2030 
gen promotees_gf8_2031 = enrolees_gf8_2031 * prf8_9
gen repeaters_gf8_2031 = enrolees_gf8_2031 * rrf8_9
gen dropouts_gf8_2031 = enrolees_gf8_2031 * drf8_9

gen enrolees_gf8_2032 = promotees_gf7_2031 + repeaters_gf8_2031 
gen promotees_gf8_2032 = enrolees_gf8_2032 * prf8_9
gen repeaters_gf8_2032 = enrolees_gf8_2032 * rrf8_9
gen dropouts_gf8_2032 = enrolees_gf8_2032 * drf8_9

gen enrolees_gf8_2033 = promotees_gf7_2032 + repeaters_gf8_2032 
gen promotees_gf8_2033 = enrolees_gf8_2033 * prf8_9
gen repeaters_gf8_2033 = enrolees_gf8_2033 * rrf8_9
gen dropouts_gf8_2033 = enrolees_gf8_2033 * drf8_9

gen enrolees_gf8_2034 = promotees_gf7_2033 + repeaters_gf8_2033 
gen promotees_gf8_2034 = enrolees_gf8_2034 * prf8_9
gen repeaters_gf8_2034 = enrolees_gf8_2034 * rrf8_9
gen dropouts_gf8_2034 = enrolees_gf8_2034 * drf8_9


* girls grade 9 cohort evolution (schools with G1 to G12)
gen enrolees_gf9_2025 = promotees_gf8_2024 + 0
gen promotees_gf9_2025 = enrolees_gf9_2025 * prf9_10
gen repeaters_gf9_2025 = enrolees_gf9_2025 * rrf9_10
gen dropouts_gf9_2025 = enrolees_gf9_2025 * drf9_10

gen enrolees_gf9_2026 = promotees_gf8_2025 + repeaters_gf9_2025
gen promotees_gf9_2026 = enrolees_gf9_2026 * prf9_10 	 	
gen repeaters_gf9_2026 = enrolees_gf9_2026 * rrf9_10
gen dropouts_gf9_2026 = enrolees_gf9_2026 * drf9_10

gen enrolees_gf9_2027 = promotees_gf8_2026 + repeaters_gf9_2026
gen promotees_gf9_2027 = enrolees_gf9_2027 * prf9_10
gen repeaters_gf9_2027 = enrolees_gf9_2027 * rrf9_10
gen dropouts_gf9_2027 = enrolees_gf9_2027 * drf9_10

gen enrolees_gf9_2028 = promotees_gf8_2027 + repeaters_gf9_2027
gen promotees_gf9_2028 = enrolees_gf9_2028 * prf9_10
gen repeaters_gf9_2028 = enrolees_gf9_2028 * rrf9_10
gen dropouts_gf9_2028 = enrolees_gf9_2028 * drf9_10

gen enrolees_gf9_2029 = promotees_gf8_2028 + repeaters_gf9_2028
gen promotees_gf9_2029 = enrolees_gf9_2029 * prf9_10
gen repeaters_gf9_2029 = enrolees_gf9_2029 * rrf9_10
gen dropouts_gf9_2029 = enrolees_gf9_2029 * drf9_10

gen enrolees_gf9_2030 = promotees_gf8_2029 + repeaters_gf9_2029
gen promotees_gf9_2030 = enrolees_gf9_2030 * prf9_10
gen repeaters_gf9_2030 = enrolees_gf9_2030 * rrf9_10
gen dropouts_gf9_2030 = enrolees_gf9_2030 * drf9_10

gen enrolees_gf9_2031 = promotees_gf8_2030 + repeaters_gf9_2030 
gen promotees_gf9_2031 = enrolees_gf9_2031 * prf9_10
gen repeaters_gf9_2031 = enrolees_gf9_2031 * rrf9_10
gen dropouts_gf9_2031 = enrolees_gf9_2031 * drf9_10

gen enrolees_gf9_2032 = promotees_gf8_2031 + repeaters_gf9_2031 
gen promotees_gf9_2032 = enrolees_gf9_2032 * prf9_10
gen repeaters_gf9_2032 = enrolees_gf9_2032 * rrf9_10
gen dropouts_gf9_2032 = enrolees_gf9_2032 * drf9_10

gen enrolees_gf9_2033 = promotees_gf8_2032 + repeaters_gf9_2032 
gen promotees_gf9_2033 = enrolees_gf9_2033 * prf9_10
gen repeaters_gf9_2033 = enrolees_gf9_2033 * rrf9_10
gen dropouts_gf9_2033 = enrolees_gf9_2033 * drf9_10

gen enrolees_gf9_2034 = promotees_gf8_2033 + repeaters_gf9_2033 
gen promotees_gf9_2034 = enrolees_gf9_2034 * prf9_10
gen repeaters_gf9_2034 = enrolees_gf9_2034 * rrf9_10
gen dropouts_gf9_2034 = enrolees_gf9_2034 * drf9_10

gen enrolees_gf9_2035 = promotees_gf8_2034 + repeaters_gf9_2034 
gen promotees_gf9_2035 = enrolees_gf9_2035 * prf9_10
gen repeaters_gf9_2035 = enrolees_gf9_2035 * rrf9_10
gen dropouts_gf9_2035 = enrolees_gf9_2035 * drf9_10


* girls grade 10 cohort evolution (schools with G1 to G12)
gen enrolees_gf10_2026 = promotees_gf9_2025 + 0
gen promotees_gf10_2026 = enrolees_gf10_2026 * prf10_11 	 	
gen repeaters_gf10_2026 = enrolees_gf10_2026 * rrf10_11
gen dropouts_gf10_2026 = enrolees_gf10_2026 * drf10_11

gen enrolees_gf10_2027 = promotees_gf9_2026 + repeaters_gf10_2026
gen promotees_gf10_2027 = enrolees_gf10_2027 * prf10_11
gen repeaters_gf10_2027 = enrolees_gf10_2027 * rrf10_11
gen dropouts_gf10_2027 = enrolees_gf10_2027 * drf10_11

gen enrolees_gf10_2028 = promotees_gf9_2027 + repeaters_gf10_2027
gen promotees_gf10_2028 = enrolees_gf10_2028 * prf10_11
gen repeaters_gf10_2028 = enrolees_gf10_2028 * rrf10_11
gen dropouts_gf10_2028 = enrolees_gf10_2028 * drf10_11

gen enrolees_gf10_2029 = promotees_gf9_2028 + repeaters_gf10_2028
gen promotees_gf10_2029 = enrolees_gf10_2029 * prf10_11
gen repeaters_gf10_2029 = enrolees_gf10_2029 * rrf10_11
gen dropouts_gf10_2029 = enrolees_gf10_2029 * drf10_11

gen enrolees_gf10_2030 = promotees_gf9_2029 + repeaters_gf10_2029
gen promotees_gf10_2030 = enrolees_gf10_2030 * prf10_11
gen repeaters_gf10_2030 = enrolees_gf10_2030 * rrf10_11
gen dropouts_gf10_2030 = enrolees_gf10_2030 * drf10_11

gen enrolees_gf10_2031 = promotees_gf9_2030 + repeaters_gf10_2030 
gen promotees_gf10_2031 = enrolees_gf10_2031 * prf10_11
gen repeaters_gf10_2031 = enrolees_gf10_2031 * rrf10_11
gen dropouts_gf10_2031 = enrolees_gf10_2031 * drf10_11

gen enrolees_gf10_2032 = promotees_gf9_2031 + repeaters_gf10_2031 
gen promotees_gf10_2032 = enrolees_gf10_2032 * prf10_11
gen repeaters_gf10_2032 = enrolees_gf10_2032 * rrf10_11
gen dropouts_gf10_2032 = enrolees_gf10_2032 * drf10_11

gen enrolees_gf10_2033 = promotees_gf9_2032 + repeaters_gf10_2032 
gen promotees_gf10_2033 = enrolees_gf10_2033 * prf10_11
gen repeaters_gf10_2033 = enrolees_gf10_2033 * rrf10_11
gen dropouts_gf10_2033 = enrolees_gf10_2033 * drf10_11

gen enrolees_gf10_2034 = promotees_gf9_2033 + repeaters_gf10_2033 
gen promotees_gf10_2034 = enrolees_gf10_2034 * prf10_11
gen repeaters_gf10_2034 = enrolees_gf10_2034 * rrf10_11
gen dropouts_gf10_2034 = enrolees_gf10_2034 * drf10_11

gen enrolees_gf10_2035 = promotees_gf9_2034 + repeaters_gf10_2034 
gen promotees_gf10_2035 = enrolees_gf10_2035 * prf10_11
gen repeaters_gf10_2035 = enrolees_gf10_2035 * rrf10_11
gen dropouts_gf10_2035 = enrolees_gf10_2035 * drf10_11

gen enrolees_gf10_2036 = promotees_gf9_2035 + repeaters_gf10_2035 
gen promotees_gf10_2036 = enrolees_gf10_2036 * prf10_11
gen repeaters_gf10_2036 = enrolees_gf10_2036 * rrf10_11
gen dropouts_gf10_2036 = enrolees_gf10_2036 * drf10_11


* girls grade 11 cohort evolution (schools with G1 to G12)

gen enrolees_gf11_2027 = promotees_gf10_2026 + 0
gen promotees_gf11_2027 = enrolees_gf11_2027 * prf11_12
gen repeaters_gf11_2027 = enrolees_gf11_2027 * rrf11_12
gen dropouts_gf11_2027 = enrolees_gf11_2027 * drf11_12

gen enrolees_gf11_2028 = promotees_gf10_2027 + repeaters_gf11_2027
gen promotees_gf11_2028 = enrolees_gf11_2028 * prf11_12
gen repeaters_gf11_2028 = enrolees_gf11_2028 * rrf11_12
gen dropouts_gf11_2028 = enrolees_gf11_2028 * drf11_12

gen enrolees_gf11_2029 = promotees_gf10_2028 + repeaters_gf11_2028
gen promotees_gf11_2029 = enrolees_gf11_2029 * prf11_12
gen repeaters_gf11_2029 = enrolees_gf11_2029 * rrf11_12
gen dropouts_gf11_2029 = enrolees_gf11_2029 * drf11_12

gen enrolees_gf11_2030 = promotees_gf10_2029 + repeaters_gf11_2029
gen promotees_gf11_2030 = enrolees_gf11_2030 * prf11_12
gen repeaters_gf11_2030 = enrolees_gf11_2030 * rrf11_12
gen dropouts_gf11_2030 = enrolees_gf11_2030 * drf11_12

gen enrolees_gf11_2031 = promotees_gf10_2030 + repeaters_gf11_2030 
gen promotees_gf11_2031 = enrolees_gf11_2031 * prf11_12
gen repeaters_gf11_2031 = enrolees_gf11_2031 * rrf11_12
gen dropouts_gf11_2031 = enrolees_gf11_2031 * drf11_12

gen enrolees_gf11_2032 = promotees_gf10_2031 + repeaters_gf11_2031 
gen promotees_gf11_2032 = enrolees_gf11_2032 * prf11_12
gen repeaters_gf11_2032 = enrolees_gf11_2032 * rrf11_12
gen dropouts_gf11_2032 = enrolees_gf11_2032 * drf11_12

gen enrolees_gf11_2033 = promotees_gf10_2032 + repeaters_gf11_2032 
gen promotees_gf11_2033 = enrolees_gf11_2033 * prf11_12
gen repeaters_gf11_2033 = enrolees_gf11_2033 * rrf11_12
gen dropouts_gf11_2033 = enrolees_gf11_2033 * drf11_12

gen enrolees_gf11_2034 = promotees_gf10_2033 + repeaters_gf11_2033 
gen promotees_gf11_2034 = enrolees_gf11_2034 * prf11_12
gen repeaters_gf11_2034 = enrolees_gf11_2034 * rrf11_12
gen dropouts_gf11_2034 = enrolees_gf11_2034 * drf11_12

gen enrolees_gf11_2035 = promotees_gf10_2034 + repeaters_gf11_2034 
gen promotees_gf11_2035 = enrolees_gf11_2035 * prf11_12
gen repeaters_gf11_2035 = enrolees_gf11_2035 * rrf11_12
gen dropouts_gf11_2035 = enrolees_gf11_2035 * drf11_12

gen enrolees_gf11_2036 = promotees_gf10_2035 + repeaters_gf11_2035 
gen promotees_gf11_2036 = enrolees_gf11_2036 * prf11_12
gen repeaters_gf11_2036 = enrolees_gf11_2036 * rrf11_12
gen dropouts_gf11_2036 = enrolees_gf11_2036 * drf11_12

gen enrolees_gf11_2037 = promotees_gf10_2036 + repeaters_gf11_2036 
gen promotees_gf11_2037 = enrolees_gf11_2037 * prf11_12
gen repeaters_gf11_2037 = enrolees_gf11_2037 * rrf11_12
gen dropouts_gf11_2037 = enrolees_gf11_2037 * drf11_12



* girls grade 12 cohort evolution (schools with G1 to G12)

gen enrolees_gf12_2028 = promotees_gf11_2027 + 0
gen graduates_gf12_2028 = enrolees_gf12_2028 * prf12_grad
gen repeaters_gf12_2028 = enrolees_gf12_2028 * rrf12_grad
gen dropouts_gf12_2028 = enrolees_gf12_2028 * drf12_grad

gen enrolees_gf12_2029 = promotees_gf11_2028 + repeaters_gf12_2028
gen graduates_gf12_2029 = enrolees_gf12_2029 * prf12_grad
gen repeaters_gf12_2029 = enrolees_gf12_2029 * rrf12_grad
gen dropouts_gf12_2029 = enrolees_gf12_2029 * drf12_grad

gen enrolees_gf12_2030 = promotees_gf11_2029 + repeaters_gf12_2029
gen graduates_gf12_2030 = enrolees_gf12_2030 * prf12_grad
gen repeaters_gf12_2030 = enrolees_gf12_2030 * rrf12_grad
gen dropouts_gf12_2030 = enrolees_gf12_2030 * drf12_grad

gen enrolees_gf12_2031 = promotees_gf11_2030 + repeaters_gf12_2030
gen graduates_gf12_2031 = enrolees_gf12_2031 * prf12_grad
gen repeaters_gf12_2031 = enrolees_gf12_2031 * rrf12_grad
gen dropouts_gf12_2031 = enrolees_gf12_2031 * drf12_grad

gen enrolees_gf12_2032 = promotees_gf11_2031 + repeaters_gf12_2031
gen graduates_gf12_2032 = enrolees_gf12_2032 * prf12_grad
gen repeaters_gf12_2032 = enrolees_gf12_2032 * rrf12_grad
gen dropouts_gf12_2032 = enrolees_gf12_2032 * drf12_grad

gen enrolees_gf12_2033 = promotees_gf11_2032 + repeaters_gf12_2032 
gen graduates_gf12_2033 = enrolees_gf12_2033 * prf12_grad
gen repeaters_gf12_2033 = enrolees_gf12_2033 * rrf12_grad
gen dropouts_gf12_2033 = enrolees_gf12_2033 * drf12_grad

gen enrolees_gf12_2034 = promotees_gf11_2033 + repeaters_gf12_2033 
gen graduates_gf12_2034 = enrolees_gf12_2034 * prf12_grad
gen repeaters_gf12_2034 = enrolees_gf12_2034 * rrf12_grad
gen dropouts_gf12_2034 = enrolees_gf12_2034 * drf12_grad

gen enrolees_gf12_2035 = promotees_gf11_2034 + repeaters_gf12_2034 
gen graduates_gf12_2035 = enrolees_gf12_2035 * prf12_grad
gen repeaters_gf12_2035 = enrolees_gf12_2035 * rrf12_grad
gen dropouts_gf12_2035 = enrolees_gf12_2035 * drf12_grad

gen enrolees_gf12_2036 = promotees_gf11_2035 + repeaters_gf12_2035 
gen graduates_gf12_2036 = enrolees_gf12_2036 * prf12_grad
gen repeaters_gf12_2036 = enrolees_gf12_2036 * rrf12_grad
gen dropouts_gf12_2036 = enrolees_gf12_2036 * drf12_grad

gen enrolees_gf12_2037 = promotees_gf11_2036 + repeaters_gf12_2036 
gen graduates_gf12_2037 = enrolees_gf12_2037 * prf12_grad
gen repeaters_gf12_2037 = enrolees_gf12_2037 * rrf12_grad
gen dropouts_gf12_2037 = enrolees_gf12_2037 * drf12_grad

gen enrolees_gf12_2038 = promotees_gf11_2037 + repeaters_gf12_2037 
gen graduates_gf12_2038 = enrolees_gf12_2038 * prf12_grad
gen repeaters_gf12_2038 = enrolees_gf12_2038 * rrf12_grad
gen dropouts_gf12_2038 = enrolees_gf12_2038 * drf12_grad



*******************************************************************************
*                             Boys & Girls                                    *
*******************************************************************************

gen tcohort_size = 100

* boys+girls grade 1 cohort evolution

gen enrolees_gt1_2017 = mcohort_size
gen promotees_gt1_2017 = enrolees_gt1_2017 * prt1_2
gen repeaters_gt1_2017 = enrolees_gt1_2017 * rrt1_2
gen dropouts_gt1_2017 = enrolees_gt1_2017 * drt1_2

gen enrolees_gt1_2018 = 0 + repeaters_gt1_2017
gen promotees_gt1_2018 = enrolees_gt1_2018 * prt1_2
gen repeaters_gt1_2018 = enrolees_gt1_2018 * rrt1_2
gen dropouts_gt1_2018 = enrolees_gt1_2018 * drt1_2

gen enrolees_gt1_2019 = 0 + repeaters_gt1_2018
gen promotees_gt1_2019 = enrolees_gt1_2019 * prt1_2
gen repeaters_gt1_2019 = enrolees_gt1_2019 * rrt1_2
gen dropouts_gt1_2019 = enrolees_gt1_2019 * drt1_2

gen enrolees_gt1_2020 = 0 + repeaters_gt1_2019
gen promotees_gt1_2020 = enrolees_gt1_2020 * prt1_2
gen repeaters_gt1_2020 = enrolees_gt1_2020 * rrt1_2
gen dropouts_gt1_2020 = enrolees_gt1_2020 * drt1_2

gen enrolees_gt1_2021 = 0 + repeaters_gt1_2020
gen promotees_gt1_2021 = enrolees_gt1_2021 * prt1_2
gen repeaters_gt1_2021 = enrolees_gt1_2021 * rrt1_2
gen dropouts_gt1_2021 = enrolees_gt1_2021 * drt1_2

gen enrolees_gt1_2022 = 0 + repeaters_gt1_2021
gen promotees_gt1_2022 = enrolees_gt1_2022 * prt1_2
gen repeaters_gt1_2022 = enrolees_gt1_2022 * rrt1_2
gen dropouts_gt1_2022 = enrolees_gt1_2022 * drt1_2

gen enrolees_gt1_2023 = 0 + repeaters_gt1_2022
gen promotees_gt1_2023 = enrolees_gt1_2023 * prt1_2
gen repeaters_gt1_2023 = enrolees_gt1_2023 * rrt1_2
gen dropouts_gt1_2023 = enrolees_gt1_2023 * drt1_2

gen enrolees_gt1_2024 = 0 + repeaters_gt1_2023
gen promotees_gt1_2024 = enrolees_gt1_2024 * prt1_2
gen repeaters_gt1_2024 = enrolees_gt1_2024 * rrt1_2
gen dropouts_gt1_2024 = enrolees_gt1_2024 * drt1_2

gen enrolees_gt1_2025 = 0 + repeaters_gt1_2024
gen promotees_gt1_2025 = enrolees_gt1_2025 * prt1_2
gen repeaters_gt1_2025 = enrolees_gt1_2025 * rrt1_2
gen dropouts_gt1_2025 = enrolees_gt1_2025 * drt1_2

gen enrolees_gt1_2026 = 0 + repeaters_gt1_2025
gen promotees_gt1_2026 = enrolees_gt1_2026 * prt1_2
gen repeaters_gt1_2026 = enrolees_gt1_2026 * rrt1_2
gen dropouts_gt1_2026 = enrolees_gt1_2026 * drt1_2

gen enrolees_gt1_2027 = 0 + repeaters_gt1_2026
gen promotees_gt1_2027 = enrolees_gt1_2027 * prt1_2
gen repeaters_gt1_2027 = enrolees_gt1_2027 * rrt1_2
gen dropouts_gt1_2027 = enrolees_gt1_2027 * drt1_2


* boys + girls grade 2 cohort evolution

gen enrolees_gt2_2018 = promotees_gt1_2017 + 0
gen promotees_gt2_2018 = enrolees_gt2_2018 * prt2_3
gen repeaters_gt2_2018 = enrolees_gt2_2018 * rrt2_3
gen dropouts_gt2_2018 = enrolees_gt2_2018 * drt2_3

gen enrolees_gt2_2019 = promotees_gt1_2018 + repeaters_gt2_2018
gen promotees_gt2_2019 = enrolees_gt2_2019 * prt2_3
gen repeaters_gt2_2019 = enrolees_gt2_2019 * rrt2_3
gen dropouts_gt2_2019 = enrolees_gt2_2019 * drt2_3

gen enrolees_gt2_2020 = promotees_gt1_2019 + repeaters_gt2_2019
gen promotees_gt2_2020 = enrolees_gt2_2020 * prt2_3
gen repeaters_gt2_2020 = enrolees_gt2_2020 * rrt2_3
gen dropouts_gt2_2020 = enrolees_gt2_2020 * drt2_3

gen enrolees_gt2_2021 = promotees_gt1_2020 + repeaters_gt2_2020
gen promotees_gt2_2021 = enrolees_gt2_2021 * prt2_3
gen repeaters_gt2_2021 = enrolees_gt2_2021 * rrt2_3
gen dropouts_gt2_2021 = enrolees_gt2_2021 * drt2_3

gen enrolees_gt2_2022 = promotees_gt1_2021 + repeaters_gt2_2021
gen promotees_gt2_2022 = enrolees_gt2_2022 * prt2_3
gen repeaters_gt2_2022 = enrolees_gt2_2022 * rrt2_3
gen dropouts_gt2_2022 = enrolees_gt2_2022 * drt2_3

gen enrolees_gt2_2023 = promotees_gt1_2022 + repeaters_gt2_2022
gen promotees_gt2_2023 = enrolees_gt2_2023 * prt2_3
gen repeaters_gt2_2023 = enrolees_gt2_2023 * rrt2_3
gen dropouts_gt2_2023 = enrolees_gt2_2023 * drt2_3

gen enrolees_gt2_2024 = promotees_gt1_2023 + repeaters_gt2_2023
gen promotees_gt2_2024 = enrolees_gt2_2024 * prt2_3
gen repeaters_gt2_2024 = enrolees_gt2_2024 * rrt2_3
gen dropouts_gt2_2024 = enrolees_gt2_2024 * drt2_3

gen enrolees_gt2_2025 = promotees_gt1_2024 + repeaters_gt2_2024
gen promotees_gt2_2025 = enrolees_gt2_2025 * prt2_3
gen repeaters_gt2_2025 = enrolees_gt2_2025 * rrt2_3
gen dropouts_gt2_2025 = enrolees_gt2_2025 * drt2_3

gen enrolees_gt2_2026 = promotees_gt1_2025 + repeaters_gt2_2025
gen promotees_gt2_2026 = enrolees_gt2_2026 * prt2_3
gen repeaters_gt2_2026 = enrolees_gt2_2026 * rrt2_3
gen dropouts_gt2_2026 = enrolees_gt2_2026 * drt2_3

gen enrolees_gt2_2027 = promotees_gt1_2026 + repeaters_gt2_2026
gen promotees_gt2_2027 = enrolees_gt2_2027 * prt2_3
gen repeaters_gt2_2027 = enrolees_gt2_2027 * rrt2_3
gen dropouts_gt2_2027 = enrolees_gt2_2027 * drt2_3

gen enrolees_gt2_2028 = promotees_gt1_2027 + repeaters_gt2_2027
gen promotees_gt2_2028 = enrolees_gt2_2028 * prt2_3
gen repeaters_gt2_2028 = enrolees_gt2_2028 * rrt2_3
gen dropouts_gt2_2028 = enrolees_gt2_2028 * drt2_3


* boys + girls grade 3 cohort evolution

gen enrolees_gt3_2019 = promotees_gt2_2018 + 0
gen promotees_gt3_2019 = enrolees_gt3_2019 * prt3_4
gen repeaters_gt3_2019 = enrolees_gt3_2019 * rrt3_4
gen dropouts_gt3_2019 = enrolees_gt3_2019 * drt3_4

gen enrolees_gt3_2020 = promotees_gt2_2019 + repeaters_gt3_2019
gen promotees_gt3_2020 = enrolees_gt3_2020 * prt3_4
gen repeaters_gt3_2020 = enrolees_gt3_2020 * rrt3_4
gen dropouts_gt3_2020 = enrolees_gt3_2020 * drt3_4

gen enrolees_gt3_2021 = promotees_gt2_2020 + repeaters_gt3_2020
gen promotees_gt3_2021 = enrolees_gt3_2021 * prt3_4
gen repeaters_gt3_2021 = enrolees_gt3_2021 * rrt3_4
gen dropouts_gt3_2021 = enrolees_gt3_2021 * drt3_4

gen enrolees_gt3_2022 = promotees_gt2_2021 + repeaters_gt3_2021
gen promotees_gt3_2022 = enrolees_gt3_2022 * prt3_4
gen repeaters_gt3_2022 = enrolees_gt3_2022 * rrt3_4
gen dropouts_gt3_2022 = enrolees_gt3_2022 * drt3_4

gen enrolees_gt3_2023 = promotees_gt2_2022 + repeaters_gt3_2022
gen promotees_gt3_2023 = enrolees_gt3_2023 * prt3_4
gen repeaters_gt3_2023 = enrolees_gt3_2023 * rrt3_4
gen dropouts_gt3_2023 = enrolees_gt3_2023 * drt3_4

gen enrolees_gt3_2024 = promotees_gt2_2023 + repeaters_gt3_2023
gen promotees_gt3_2024 = enrolees_gt3_2024 * prt3_4
gen repeaters_gt3_2024 = enrolees_gt3_2024 * rrt3_4
gen dropouts_gt3_2024 = enrolees_gt3_2024 * drt3_4

gen enrolees_gt3_2025 = promotees_gt2_2024 + repeaters_gt3_2024
gen promotees_gt3_2025 = enrolees_gt3_2025 * prt3_4
gen repeaters_gt3_2025 = enrolees_gt3_2025 * rrt3_4
gen dropouts_gt3_2025 = enrolees_gt3_2025 * drt3_4

gen enrolees_gt3_2026 = promotees_gt2_2025 + repeaters_gt3_2025
gen promotees_gt3_2026 = enrolees_gt3_2026 * prt3_4
gen repeaters_gt3_2026 = enrolees_gt3_2026 * rrt3_4
gen dropouts_gt3_2026 = enrolees_gt3_2026 * drt3_4

gen enrolees_gt3_2027 = promotees_gt2_2026 + repeaters_gt3_2026
gen promotees_gt3_2027 = enrolees_gt3_2027 * prt3_4
gen repeaters_gt3_2027 = enrolees_gt3_2027 * rrt3_4
gen dropouts_gt3_2027 = enrolees_gt3_2027 * drt3_4

gen enrolees_gt3_2028 = promotees_gt2_2027 + repeaters_gt3_2027
gen promotees_gt3_2028 = enrolees_gt3_2028 * prt3_4
gen repeaters_gt3_2028 = enrolees_gt3_2028 * rrt3_4
gen dropouts_gt3_2028 = enrolees_gt3_2028 * drt3_4

gen enrolees_gt3_2029 = promotees_gt2_2028 + repeaters_gt3_2028
gen promotees_gt3_2029 = enrolees_gt3_2029 * prt3_4
gen repeaters_gt3_2029 = enrolees_gt3_2029 * rrt3_4
gen dropouts_gt3_2029 = enrolees_gt3_2029 * drt3_4


* boys + girls grade 4 cohort evolution
gen enrolees_gt4_2020 = promotees_gt3_2019 + 0
gen promotees_gt4_2020 = enrolees_gt4_2020 * prt4_5
gen repeaters_gt4_2020 = enrolees_gt4_2020 * rrt4_5
gen dropouts_gt4_2020 = enrolees_gt4_2020 * drt4_5

gen enrolees_gt4_2021 = promotees_gt3_2020 + repeaters_gt4_2020
gen promotees_gt4_2021 = enrolees_gt4_2021 * prt4_5
gen repeaters_gt4_2021 = enrolees_gt4_2021 * rrt4_5
gen dropouts_gt4_2021 = enrolees_gt4_2021 * drt4_5

gen enrolees_gt4_2022 = promotees_gt3_2021 + repeaters_gt4_2021
gen promotees_gt4_2022 = enrolees_gt4_2022 * prt4_5
gen repeaters_gt4_2022 = enrolees_gt4_2022 * rrt4_5
gen dropouts_gt4_2022 = enrolees_gt4_2022 * drt4_5

gen enrolees_gt4_2023 = promotees_gt3_2022 + repeaters_gt4_2022
gen promotees_gt4_2023 = enrolees_gt4_2023 * prt4_5
gen repeaters_gt4_2023 = enrolees_gt4_2023 * rrt4_5
gen dropouts_gt4_2023 = enrolees_gt4_2023 * drt4_5

gen enrolees_gt4_2024 = promotees_gt3_2023 + repeaters_gt4_2023
gen promotees_gt4_2024 = enrolees_gt4_2024 * prt4_5
gen repeaters_gt4_2024 = enrolees_gt4_2024 * rrt4_5
gen dropouts_gt4_2024 = enrolees_gt4_2024 * drt4_5

gen enrolees_gt4_2025 = promotees_gt3_2024 + repeaters_gt4_2024
gen promotees_gt4_2025 = enrolees_gt4_2025 * prt4_5
gen repeaters_gt4_2025 = enrolees_gt4_2025 * rrt4_5
gen dropouts_gt4_2025 = enrolees_gt4_2025 * drt4_5

gen enrolees_gt4_2026 = promotees_gt3_2025 + repeaters_gt4_2025
gen promotees_gt4_2026 = enrolees_gt4_2026 * prt4_5
gen repeaters_gt4_2026 = enrolees_gt4_2026 * rrt4_5
gen dropouts_gt4_2026 = enrolees_gt4_2026 * drt4_5

gen enrolees_gt4_2027 = promotees_gt3_2026 + repeaters_gt4_2026
gen promotees_gt4_2027 = enrolees_gt4_2027 * prt4_5
gen repeaters_gt4_2027 = enrolees_gt4_2027 * rrt4_5
gen dropouts_gt4_2027 = enrolees_gt4_2027 * drt4_5

gen enrolees_gt4_2028 = promotees_gt3_2027 + repeaters_gt4_2027
gen promotees_gt4_2028 = enrolees_gt4_2028 * prt4_5
gen repeaters_gt4_2028 = enrolees_gt4_2028 * rrt4_5
gen dropouts_gt4_2028 = enrolees_gt4_2028 * drt4_5

gen enrolees_gt4_2029 = promotees_gt3_2028 + repeaters_gt4_2028
gen promotees_gt4_2029 = enrolees_gt4_2029 * prt4_5
gen repeaters_gt4_2029 = enrolees_gt4_2029 * rrt4_5
gen dropouts_gt4_2029 = enrolees_gt4_2029 * drt4_5

gen enrolees_gt4_2030 = promotees_gt3_2029 + repeaters_gt4_2029
gen promotees_gt4_2030 = enrolees_gt4_2030 * prt4_5
gen repeaters_gt4_2030 = enrolees_gt4_2030 * rrt4_5
gen dropouts_gt4_2030 = enrolees_gt4_2030 * drt4_5


* boys + girls grade 5 cohort evolution
gen enrolees_gt5_2021 = promotees_gt4_2020 + 0
gen promotees_gt5_2021 = enrolees_gt5_2021 * prt5_6
gen repeaters_gt5_2021 = enrolees_gt5_2021 * rrt5_6
gen dropouts_gt5_2021 = enrolees_gt5_2021 * drt5_6

gen enrolees_gt5_2022 = promotees_gt4_2021 + repeaters_gt5_2021
gen promotees_gt5_2022 = enrolees_gt5_2022 * prt5_6
gen repeaters_gt5_2022 = enrolees_gt5_2022 * rrt5_6
gen dropouts_gt5_2022 = enrolees_gt5_2022 * drt5_6

gen enrolees_gt5_2023 = promotees_gt4_2022 + repeaters_gt5_2022
gen promotees_gt5_2023 = enrolees_gt5_2023 * prt5_6
gen repeaters_gt5_2023 = enrolees_gt5_2023 * rrt5_6
gen dropouts_gt5_2023 = enrolees_gt5_2023 * drt5_6

gen enrolees_gt5_2024 = promotees_gt4_2023 + repeaters_gt5_2023
gen promotees_gt5_2024 = enrolees_gt5_2024 * prt5_6
gen repeaters_gt5_2024 = enrolees_gt5_2024 * rrt5_6
gen dropouts_gt5_2024 = enrolees_gt5_2024 * drt5_6

gen enrolees_gt5_2025 = promotees_gt4_2024 + repeaters_gt5_2024
gen promotees_gt5_2025 = enrolees_gt5_2025 * prt5_6
gen repeaters_gt5_2025 = enrolees_gt5_2025 * rrt5_6
gen dropouts_gt5_2025 = enrolees_gt5_2025 * drt5_6

gen enrolees_gt5_2026 = promotees_gt4_2025 + repeaters_gt5_2025
gen promotees_gt5_2026 = enrolees_gt5_2026 * prt5_6 	 	
gen repeaters_gt5_2026 = enrolees_gt5_2026 * rrt5_6
gen dropouts_gt5_2026 = enrolees_gt5_2026 * drt5_6

gen enrolees_gt5_2027 = promotees_gt4_2026 + repeaters_gt5_2026
gen promotees_gt5_2027 = enrolees_gt5_2027 * prt5_6
gen repeaters_gt5_2027 = enrolees_gt5_2027 * rrt5_6
gen dropouts_gt5_2027 = enrolees_gt5_2027 * drt5_6

gen enrolees_gt5_2028 = promotees_gt4_2027 + repeaters_gt5_2027
gen promotees_gt5_2028 = enrolees_gt5_2028 * prt5_6
gen repeaters_gt5_2028 = enrolees_gt5_2028 * rrt5_6
gen dropouts_gt5_2028 = enrolees_gt5_2028 * drt5_6

gen enrolees_gt5_2029 = promotees_gt4_2028 + repeaters_gt5_2028
gen promotees_gt5_2029 = enrolees_gt5_2029 * prt5_6
gen repeaters_gt5_2029 = enrolees_gt5_2029 * rrt5_6
gen dropouts_gt5_2029 = enrolees_gt5_2029 * drt5_6

gen enrolees_gt5_2030 = promotees_gt4_2029 + repeaters_gt5_2029
gen promotees_gt5_2030 = enrolees_gt5_2030 * prt5_6
gen repeaters_gt5_2030 = enrolees_gt5_2030 * rrt5_6
gen dropouts_gt5_2030 = enrolees_gt5_2030 * drt5_6

gen enrolees_gt5_2031 = promotees_gt4_2030 + repeaters_gt5_2030
gen promotees_gt5_2031 = enrolees_gt5_2031 * prt5_6
gen repeaters_gt5_2031 = enrolees_gt5_2031 * rrt5_6
gen dropouts_gt5_2031 = enrolees_gt5_2031 * drt5_6


* boys + girls grade 6 cohort evolution
gen enrolees_gt6_2022 = promotees_gt5_2021 + 0
gen promotees_gt6_2022 = enrolees_gt6_2022 * prt6_7
gen repeaters_gt6_2022 = enrolees_gt6_2022 * rrt6_7
gen dropouts_gt6_2022 = enrolees_gt6_2022 * drt6_7

gen enrolees_gt6_2023 = promotees_gt5_2022 + repeaters_gt6_2022
gen promotees_gt6_2023 = enrolees_gt6_2023 * prt6_7
gen repeaters_gt6_2023 = enrolees_gt6_2023 * rrt6_7
gen dropouts_gt6_2023 = enrolees_gt6_2023 * drt6_7

gen enrolees_gt6_2024 = promotees_gt5_2023 + repeaters_gt6_2023
gen promotees_gt6_2024 = enrolees_gt6_2024 * prt6_7
gen repeaters_gt6_2024 = enrolees_gt6_2024 * rrt6_7
gen dropouts_gt6_2024 = enrolees_gt6_2024 * drt6_7

gen enrolees_gt6_2025 = promotees_gt5_2024 + repeaters_gt6_2024
gen promotees_gt6_2025 = enrolees_gt6_2025 * prt6_7
gen repeaters_gt6_2025 = enrolees_gt6_2025 * rrt6_7
gen dropouts_gt6_2025 = enrolees_gt6_2025 * drt6_7

gen enrolees_gt6_2026 = promotees_gt5_2025 + repeaters_gt6_2025
gen promotees_gt6_2026 = enrolees_gt6_2026 * prt6_7 	 	
gen repeaters_gt6_2026 = enrolees_gt6_2026 * rrt6_7
gen dropouts_gt6_2026 = enrolees_gt6_2026 * drt6_7

gen enrolees_gt6_2027 = promotees_gt5_2026 + repeaters_gt6_2026
gen promotees_gt6_2027 = enrolees_gt6_2027 * prt6_7
gen repeaters_gt6_2027 = enrolees_gt6_2027 * rrt6_7
gen dropouts_gt6_2027 = enrolees_gt6_2027 * drt6_7

gen enrolees_gt6_2028 = promotees_gt5_2027 + repeaters_gt6_2027
gen promotees_gt6_2028 = enrolees_gt6_2028 * prt6_7
gen repeaters_gt6_2028 = enrolees_gt6_2028 * rrt6_7
gen dropouts_gt6_2028 = enrolees_gt6_2028 * drt6_7

gen enrolees_gt6_2029 = promotees_gt5_2028 + repeaters_gt6_2028
gen promotees_gt6_2029 = enrolees_gt6_2029 * prt6_7
gen repeaters_gt6_2029 = enrolees_gt6_2029 * rrt6_7
gen dropouts_gt6_2029 = enrolees_gt6_2029 * drt6_7

gen enrolees_gt6_2030 = promotees_gt5_2029 + repeaters_gt6_2029
gen promotees_gt6_2030 = enrolees_gt6_2030 * prt6_7
gen repeaters_gt6_2030 = enrolees_gt6_2030 * rrt6_7
gen dropouts_gt6_2030 = enrolees_gt6_2030 * drt6_7

gen enrolees_gt6_2031 = promotees_gt5_2030 + repeaters_gt6_2030 
gen promotees_gt6_2031 = enrolees_gt6_2031 * prt6_7
gen repeaters_gt6_2031 = enrolees_gt6_2031 * rrt6_7
gen dropouts_gt6_2031 = enrolees_gt6_2031 * drt6_7

gen enrolees_gt6_2032 = promotees_gt5_2031 + repeaters_gt6_2031 
gen promotees_gt6_2032 = enrolees_gt6_2032 * prt6_7
gen repeaters_gt6_2032 = enrolees_gt6_2032 * rrt6_7
gen dropouts_gt6_2032 = enrolees_gt6_2032 * drt6_7


* boys + girls grade 7 cohort evolution (schools with G1 to G12)
gen enrolees_gt7_2023 = promotees_gt6_2022 + 0
gen promotees_gt7_2023 = enrolees_gt7_2023 * prt7_8  
gen repeaters_gt7_2023 = enrolees_gt7_2023 * rrt7_8
gen dropouts_gt7_2023 = enrolees_gt7_2023 * drt7_8

gen enrolees_gt7_2024 = promotees_gt6_2023 + repeaters_gt7_2023
gen promotees_gt7_2024 = enrolees_gt7_2024 * prt7_8
gen repeaters_gt7_2024 = enrolees_gt7_2024 * rrt7_8
gen dropouts_gt7_2024 = enrolees_gt7_2024 * drt7_8

gen enrolees_gt7_2025 = promotees_gt6_2024 + repeaters_gt7_2024
gen promotees_gt7_2025 = enrolees_gt7_2025 * prt7_8
gen repeaters_gt7_2025 = enrolees_gt7_2025 * rrt7_8
gen dropouts_gt7_2025 = enrolees_gt7_2025 * drt7_8

gen enrolees_gt7_2026 = promotees_gt6_2025 + repeaters_gt7_2025
gen promotees_gt7_2026 = enrolees_gt7_2026 * prt7_8 	 	
gen repeaters_gt7_2026 = enrolees_gt7_2026 * rrt7_8
gen dropouts_gt7_2026 = enrolees_gt7_2026 * drt7_8

gen enrolees_gt7_2027 = promotees_gt6_2026 + repeaters_gt7_2026
gen promotees_gt7_2027 = enrolees_gt7_2027 * prt7_8
gen repeaters_gt7_2027 = enrolees_gt7_2027 * rrt7_8
gen dropouts_gt7_2027 = enrolees_gt7_2027 * drt7_8

gen enrolees_gt7_2028 = promotees_gt6_2027 + repeaters_gt7_2027
gen promotees_gt7_2028 = enrolees_gt7_2028 * prt7_8
gen repeaters_gt7_2028 = enrolees_gt7_2028 * rrt7_8
gen dropouts_gt7_2028 = enrolees_gt7_2028 * drt7_8

gen enrolees_gt7_2029 = promotees_gt6_2028 + repeaters_gt7_2028
gen promotees_gt7_2029 = enrolees_gt7_2029 * prt7_8
gen repeaters_gt7_2029 = enrolees_gt7_2029 * rrt7_8
gen dropouts_gt7_2029 = enrolees_gt7_2029 * drt7_8

gen enrolees_gt7_2030 = promotees_gt6_2029 + repeaters_gt7_2029
gen promotees_gt7_2030 = enrolees_gt7_2030 * prt7_8
gen repeaters_gt7_2030 = enrolees_gt7_2030 * rrt7_8
gen dropouts_gt7_2030 = enrolees_gt7_2030 * drt7_8

gen enrolees_gt7_2031 = promotees_gt6_2030 + repeaters_gt7_2030 
gen promotees_gt7_2031 = enrolees_gt7_2031 * prt7_8
gen repeaters_gt7_2031 = enrolees_gt7_2031 * rrt7_8
gen dropouts_gt7_2031 = enrolees_gt7_2031 * drt7_8

gen enrolees_gt7_2032 = promotees_gt6_2031 + repeaters_gt7_2031 
gen promotees_gt7_2032 = enrolees_gt7_2032 * prt7_8
gen repeaters_gt7_2032 = enrolees_gt7_2032 * rrt7_8
gen dropouts_gt7_2032 = enrolees_gt7_2032 * drt7_8

gen enrolees_gt7_2033 = promotees_gt6_2032 + repeaters_gt7_2032 
gen promotees_gt7_2033 = enrolees_gt7_2033 * prt7_8
gen repeaters_gt7_2033 = enrolees_gt7_2033 * rrt7_8
gen dropouts_gt7_2033 = enrolees_gt7_2033 * drt7_8


* boys + girls grade 8 cohort evolution (schools with G1 to G12)
gen enrolees_gt8_2024 = promotees_gt7_2023 + 0
gen promotees_gt8_2024 = enrolees_gt8_2024 * prt8_9
gen repeaters_gt8_2024 = enrolees_gt8_2024 * rrt8_9
gen dropouts_gt8_2024 = enrolees_gt8_2024 * drt8_9

gen enrolees_gt8_2025 = promotees_gt7_2024 + repeaters_gt8_2024
gen promotees_gt8_2025 = enrolees_gt8_2025 * prt8_9
gen repeaters_gt8_2025 = enrolees_gt8_2025 * rrt8_9
gen dropouts_gt8_2025 = enrolees_gt8_2025 * drt8_9

gen enrolees_gt8_2026 = promotees_gt7_2025 + repeaters_gt8_2025
gen promotees_gt8_2026 = enrolees_gt8_2026 * prt8_9 	 	
gen repeaters_gt8_2026 = enrolees_gt8_2026 * rrt8_9
gen dropouts_gt8_2026 = enrolees_gt8_2026 * drt8_9

gen enrolees_gt8_2027 = promotees_gt7_2026 + repeaters_gt8_2026
gen promotees_gt8_2027 = enrolees_gt8_2027 * prt8_9
gen repeaters_gt8_2027 = enrolees_gt8_2027 * rrt8_9
gen dropouts_gt8_2027 = enrolees_gt8_2027 * drt8_9

gen enrolees_gt8_2028 = promotees_gt7_2027 + repeaters_gt8_2027
gen promotees_gt8_2028 = enrolees_gt8_2028 * prt8_9
gen repeaters_gt8_2028 = enrolees_gt8_2028 * rrt8_9
gen dropouts_gt8_2028 = enrolees_gt8_2028 * drt8_9

gen enrolees_gt8_2029 = promotees_gt7_2028 + repeaters_gt8_2028
gen promotees_gt8_2029 = enrolees_gt8_2029 * prt8_9
gen repeaters_gt8_2029 = enrolees_gt8_2029 * rrt8_9
gen dropouts_gt8_2029 = enrolees_gt8_2029 * drt8_9

gen enrolees_gt8_2030 = promotees_gt7_2029 + repeaters_gt8_2029
gen promotees_gt8_2030 = enrolees_gt8_2030 * prt8_9
gen repeaters_gt8_2030 = enrolees_gt8_2030 * rrt8_9
gen dropouts_gt8_2030 = enrolees_gt8_2030 * drt8_9

gen enrolees_gt8_2031 = promotees_gt7_2030 + repeaters_gt8_2030 
gen promotees_gt8_2031 = enrolees_gt8_2031 * prt8_9
gen repeaters_gt8_2031 = enrolees_gt8_2031 * rrt8_9
gen dropouts_gt8_2031 = enrolees_gt8_2031 * drt8_9

gen enrolees_gt8_2032 = promotees_gt7_2031 + repeaters_gt8_2031 
gen promotees_gt8_2032 = enrolees_gt8_2032 * prt8_9
gen repeaters_gt8_2032 = enrolees_gt8_2032 * rrt8_9
gen dropouts_gt8_2032 = enrolees_gt8_2032 * drt8_9

gen enrolees_gt8_2033 = promotees_gt7_2032 + repeaters_gt8_2032 
gen promotees_gt8_2033 = enrolees_gt8_2033 * prt8_9
gen repeaters_gt8_2033 = enrolees_gt8_2033 * rrt8_9
gen dropouts_gt8_2033 = enrolees_gt8_2033 * drt8_9

gen enrolees_gt8_2034 = promotees_gt7_2033 + repeaters_gt8_2033 
gen promotees_gt8_2034 = enrolees_gt8_2034 * prt8_9
gen repeaters_gt8_2034 = enrolees_gt8_2034 * rrt8_9
gen dropouts_gt8_2034 = enrolees_gt8_2034 * drt8_9


* boys + girls grade 9 cohort evolution (schools with G1 to G12)
gen enrolees_gt9_2025 = promotees_gt8_2024 + 0
gen promotees_gt9_2025 = enrolees_gt9_2025 * prt9_10
gen repeaters_gt9_2025 = enrolees_gt9_2025 * rrt9_10
gen dropouts_gt9_2025 = enrolees_gt9_2025 * drt9_10

gen enrolees_gt9_2026 = promotees_gt8_2025 + repeaters_gt9_2025
gen promotees_gt9_2026 = enrolees_gt9_2026 * prt9_10 	 	
gen repeaters_gt9_2026 = enrolees_gt9_2026 * rrt9_10
gen dropouts_gt9_2026 = enrolees_gt9_2026 * drt9_10

gen enrolees_gt9_2027 = promotees_gt8_2026 + repeaters_gt9_2026
gen promotees_gt9_2027 = enrolees_gt9_2027 * prt9_10
gen repeaters_gt9_2027 = enrolees_gt9_2027 * rrt9_10
gen dropouts_gt9_2027 = enrolees_gt9_2027 * drt9_10

gen enrolees_gt9_2028 = promotees_gt8_2027 + repeaters_gt9_2027
gen promotees_gt9_2028 = enrolees_gt9_2028 * prt9_10
gen repeaters_gt9_2028 = enrolees_gt9_2028 * rrt9_10
gen dropouts_gt9_2028 = enrolees_gt9_2028 * drt9_10

gen enrolees_gt9_2029 = promotees_gt8_2028 + repeaters_gt9_2028
gen promotees_gt9_2029 = enrolees_gt9_2029 * prt9_10
gen repeaters_gt9_2029 = enrolees_gt9_2029 * rrt9_10
gen dropouts_gt9_2029 = enrolees_gt9_2029 * drt9_10

gen enrolees_gt9_2030 = promotees_gt8_2029 + repeaters_gt9_2029
gen promotees_gt9_2030 = enrolees_gt9_2030 * prt9_10
gen repeaters_gt9_2030 = enrolees_gt9_2030 * rrt9_10
gen dropouts_gt9_2030 = enrolees_gt9_2030 * drt9_10

gen enrolees_gt9_2031 = promotees_gt8_2030 + repeaters_gt9_2030 
gen promotees_gt9_2031 = enrolees_gt9_2031 * prt9_10
gen repeaters_gt9_2031 = enrolees_gt9_2031 * rrt9_10
gen dropouts_gt9_2031 = enrolees_gt9_2031 * drt9_10

gen enrolees_gt9_2032 = promotees_gt8_2031 + repeaters_gt9_2031 
gen promotees_gt9_2032 = enrolees_gt9_2032 * prt9_10
gen repeaters_gt9_2032 = enrolees_gt9_2032 * rrt9_10
gen dropouts_gt9_2032 = enrolees_gt9_2032 * drt9_10

gen enrolees_gt9_2033 = promotees_gt8_2032 + repeaters_gt9_2032 
gen promotees_gt9_2033 = enrolees_gt9_2033 * prt9_10
gen repeaters_gt9_2033 = enrolees_gt9_2033 * rrt9_10
gen dropouts_gt9_2033 = enrolees_gt9_2033 * drt9_10

gen enrolees_gt9_2034 = promotees_gt8_2033 + repeaters_gt9_2033 
gen promotees_gt9_2034 = enrolees_gt9_2034 * prt9_10
gen repeaters_gt9_2034 = enrolees_gt9_2034 * rrt9_10
gen dropouts_gt9_2034 = enrolees_gt9_2034 * drt9_10

gen enrolees_gt9_2035 = promotees_gt8_2034 + repeaters_gt9_2034 
gen promotees_gt9_2035 = enrolees_gt9_2035 * prt9_10
gen repeaters_gt9_2035 = enrolees_gt9_2035 * rrt9_10
gen dropouts_gt9_2035 = enrolees_gt9_2035 * drt9_10


* boys + girls grade 10 cohort evolution (schools with G1 to G12)
gen enrolees_gt10_2026 = promotees_gt9_2025 + 0
gen promotees_gt10_2026 = enrolees_gt10_2026 * prt10_11 	 	
gen repeaters_gt10_2026 = enrolees_gt10_2026 * rrt10_11
gen dropouts_gt10_2026 = enrolees_gt10_2026 * drt10_11

gen enrolees_gt10_2027 = promotees_gt9_2026 + repeaters_gt10_2026
gen promotees_gt10_2027 = enrolees_gt10_2027 * prt10_11
gen repeaters_gt10_2027 = enrolees_gt10_2027 * rrt10_11
gen dropouts_gt10_2027 = enrolees_gt10_2027 * drt10_11

gen enrolees_gt10_2028 = promotees_gt9_2027 + repeaters_gt10_2027
gen promotees_gt10_2028 = enrolees_gt10_2028 * prt10_11
gen repeaters_gt10_2028 = enrolees_gt10_2028 * rrt10_11
gen dropouts_gt10_2028 = enrolees_gt10_2028 * drt10_11

gen enrolees_gt10_2029 = promotees_gt9_2028 + repeaters_gt10_2028
gen promotees_gt10_2029 = enrolees_gt10_2029 * prt10_11
gen repeaters_gt10_2029 = enrolees_gt10_2029 * rrt10_11
gen dropouts_gt10_2029 = enrolees_gt10_2029 * drt10_11

gen enrolees_gt10_2030 = promotees_gt9_2029 + repeaters_gt10_2029
gen promotees_gt10_2030 = enrolees_gt10_2030 * prt10_11
gen repeaters_gt10_2030 = enrolees_gt10_2030 * rrt10_11
gen dropouts_gt10_2030 = enrolees_gt10_2030 * drt10_11

gen enrolees_gt10_2031 = promotees_gt9_2030 + repeaters_gt10_2030 
gen promotees_gt10_2031 = enrolees_gt10_2031 * prt10_11
gen repeaters_gt10_2031 = enrolees_gt10_2031 * rrt10_11
gen dropouts_gt10_2031 = enrolees_gt10_2031 * drt10_11

gen enrolees_gt10_2032 = promotees_gt9_2031 + repeaters_gt10_2031 
gen promotees_gt10_2032 = enrolees_gt10_2032 * prt10_11
gen repeaters_gt10_2032 = enrolees_gt10_2032 * rrt10_11
gen dropouts_gt10_2032 = enrolees_gt10_2032 * drt10_11

gen enrolees_gt10_2033 = promotees_gt9_2032 + repeaters_gt10_2032 
gen promotees_gt10_2033 = enrolees_gt10_2033 * prt10_11
gen repeaters_gt10_2033 = enrolees_gt10_2033 * rrt10_11
gen dropouts_gt10_2033 = enrolees_gt10_2033 * drt10_11

gen enrolees_gt10_2034 = promotees_gt9_2033 + repeaters_gt10_2033 
gen promotees_gt10_2034 = enrolees_gt10_2034 * prt10_11
gen repeaters_gt10_2034 = enrolees_gt10_2034 * rrt10_11
gen dropouts_gt10_2034 = enrolees_gt10_2034 * drt10_11

gen enrolees_gt10_2035 = promotees_gt9_2034 + repeaters_gt10_2034 
gen promotees_gt10_2035 = enrolees_gt10_2035 * prt10_11
gen repeaters_gt10_2035 = enrolees_gt10_2035 * rrt10_11
gen dropouts_gt10_2035 = enrolees_gt10_2035 * drt10_11

gen enrolees_gt10_2036 = promotees_gt9_2035 + repeaters_gt10_2035 
gen promotees_gt10_2036 = enrolees_gt10_2036 * prt10_11
gen repeaters_gt10_2036 = enrolees_gt10_2036 * rrt10_11
gen dropouts_gt10_2036 = enrolees_gt10_2036 * drt10_11


* boys + girls grade 11 cohort evolution (schools with G1 to G12)

gen enrolees_gt11_2027 = promotees_gt10_2026 + 0
gen promotees_gt11_2027 = enrolees_gt11_2027 * prt11_12
gen repeaters_gt11_2027 = enrolees_gt11_2027 * rrt11_12
gen dropouts_gt11_2027 = enrolees_gt11_2027 * drt11_12

gen enrolees_gt11_2028 = promotees_gt10_2027 + repeaters_gt11_2027
gen promotees_gt11_2028 = enrolees_gt11_2028 * prt11_12
gen repeaters_gt11_2028 = enrolees_gt11_2028 * rrt11_12
gen dropouts_gt11_2028 = enrolees_gt11_2028 * drt11_12

gen enrolees_gt11_2029 = promotees_gt10_2028 + repeaters_gt11_2028
gen promotees_gt11_2029 = enrolees_gt11_2029 * prt11_12
gen repeaters_gt11_2029 = enrolees_gt11_2029 * rrt11_12
gen dropouts_gt11_2029 = enrolees_gt11_2029 * drt11_12

gen enrolees_gt11_2030 = promotees_gt10_2029 + repeaters_gt11_2029
gen promotees_gt11_2030 = enrolees_gt11_2030 * prt11_12
gen repeaters_gt11_2030 = enrolees_gt11_2030 * rrt11_12
gen dropouts_gt11_2030 = enrolees_gt11_2030 * drt11_12

gen enrolees_gt11_2031 = promotees_gt10_2030 + repeaters_gt11_2030 
gen promotees_gt11_2031 = enrolees_gt11_2031 * prt11_12
gen repeaters_gt11_2031 = enrolees_gt11_2031 * rrt11_12
gen dropouts_gt11_2031 = enrolees_gt11_2031 * drt11_12

gen enrolees_gt11_2032 = promotees_gt10_2031 + repeaters_gt11_2031 
gen promotees_gt11_2032 = enrolees_gt11_2032 * prt11_12
gen repeaters_gt11_2032 = enrolees_gt11_2032 * rrt11_12
gen dropouts_gt11_2032 = enrolees_gt11_2032 * drt11_12

gen enrolees_gt11_2033 = promotees_gt10_2032 + repeaters_gt11_2032 
gen promotees_gt11_2033 = enrolees_gt11_2033 * prt11_12
gen repeaters_gt11_2033 = enrolees_gt11_2033 * rrt11_12
gen dropouts_gt11_2033 = enrolees_gt11_2033 * drt11_12

gen enrolees_gt11_2034 = promotees_gt10_2033 + repeaters_gt11_2033 
gen promotees_gt11_2034 = enrolees_gt11_2034 * prt11_12
gen repeaters_gt11_2034 = enrolees_gt11_2034 * rrt11_12
gen dropouts_gt11_2034 = enrolees_gt11_2034 * drt11_12

gen enrolees_gt11_2035 = promotees_gt10_2034 + repeaters_gt11_2034 
gen promotees_gt11_2035 = enrolees_gt11_2035 * prt11_12
gen repeaters_gt11_2035 = enrolees_gt11_2035 * rrt11_12
gen dropouts_gt11_2035 = enrolees_gt11_2035 * drt11_12

gen enrolees_gt11_2036 = promotees_gt10_2035 + repeaters_gt11_2035 
gen promotees_gt11_2036 = enrolees_gt11_2036 * prt11_12
gen repeaters_gt11_2036 = enrolees_gt11_2036 * rrt11_12
gen dropouts_gt11_2036 = enrolees_gt11_2036 * drt11_12

gen enrolees_gt11_2037 = promotees_gt10_2036 + repeaters_gt11_2036 
gen promotees_gt11_2037 = enrolees_gt11_2037 * prt11_12
gen repeaters_gt11_2037 = enrolees_gt11_2037 * rrt11_12
gen dropouts_gt11_2037 = enrolees_gt11_2037 * drt11_12



* boys + girls grade 12 cohort evolution (schools with G1 to G12)

gen enrolees_gt12_2028 = promotees_gt11_2027 + 0
gen graduates_gt12_2028 = enrolees_gt12_2028 * prt12_grad
gen repeaters_gt12_2028 = enrolees_gt12_2028 * rrt12_grad
gen dropouts_gt12_2028 = enrolees_gt12_2028 * drt12_grad

gen enrolees_gt12_2029 = promotees_gt11_2028 + repeaters_gt12_2028
gen graduates_gt12_2029 = enrolees_gt12_2029 * prt12_grad
gen repeaters_gt12_2029 = enrolees_gt12_2029 * rrt12_grad
gen dropouts_gt12_2029 = enrolees_gt12_2029 * drt12_grad

gen enrolees_gt12_2030 = promotees_gt11_2029 + repeaters_gt12_2029
gen graduates_gt12_2030 = enrolees_gt12_2030 * prt12_grad
gen repeaters_gt12_2030 = enrolees_gt12_2030 * rrt12_grad
gen dropouts_gt12_2030 = enrolees_gt12_2030 * drt12_grad

gen enrolees_gt12_2031 = promotees_gt11_2030 + repeaters_gt12_2030
gen graduates_gt12_2031 = enrolees_gt12_2031 * prt12_grad
gen repeaters_gt12_2031 = enrolees_gt12_2031 * rrt12_grad
gen dropouts_gt12_2031 = enrolees_gt12_2031 * drt12_grad

gen enrolees_gt12_2032 = promotees_gt11_2031 + repeaters_gt12_2031
gen graduates_gt12_2032 = enrolees_gt12_2032 * prt12_grad
gen repeaters_gt12_2032 = enrolees_gt12_2032 * rrt12_grad
gen dropouts_gt12_2032 = enrolees_gt12_2032 * drt12_grad

gen enrolees_gt12_2033 = promotees_gt11_2032 + repeaters_gt12_2032 
gen graduates_gt12_2033 = enrolees_gt12_2033 * prt12_grad
gen repeaters_gt12_2033 = enrolees_gt12_2033 * rrt12_grad
gen dropouts_gt12_2033 = enrolees_gt12_2033 * drt12_grad

gen enrolees_gt12_2034 = promotees_gt11_2033 + repeaters_gt12_2033 
gen graduates_gt12_2034 = enrolees_gt12_2034 * prt12_grad
gen repeaters_gt12_2034 = enrolees_gt12_2034 * rrt12_grad
gen dropouts_gt12_2034 = enrolees_gt12_2034 * drt12_grad

gen enrolees_gt12_2035 = promotees_gt11_2034 + repeaters_gt12_2034 
gen graduates_gt12_2035 = enrolees_gt12_2035 * prt12_grad
gen repeaters_gt12_2035 = enrolees_gt12_2035 * rrt12_grad
gen dropouts_gt12_2035 = enrolees_gt12_2035 * drt12_grad

gen enrolees_gt12_2036 = promotees_gt11_2035 + repeaters_gt12_2035 
gen graduates_gt12_2036 = enrolees_gt12_2036 * prt12_grad
gen repeaters_gt12_2036 = enrolees_gt12_2036 * rrt12_grad
gen dropouts_gt12_2036 = enrolees_gt12_2036 * drt12_grad

gen enrolees_gt12_2037 = promotees_gt11_2036 + repeaters_gt12_2036 
gen graduates_gt12_2037 = enrolees_gt12_2037 * prt12_grad
gen repeaters_gt12_2037 = enrolees_gt12_2037 * rrt12_grad
gen dropouts_gt12_2037 = enrolees_gt12_2037 * drt12_grad

gen enrolees_gt12_2038 = promotees_gt11_2037 + repeaters_gt12_2037 
gen graduates_gt12_2038 = enrolees_gt12_2038 * prt12_grad
gen repeaters_gt12_2038 = enrolees_gt12_2038 * rrt12_grad
gen dropouts_gt12_2038 = enrolees_gt12_2038 * drt12_grad
