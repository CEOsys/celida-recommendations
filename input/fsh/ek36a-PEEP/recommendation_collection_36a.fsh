/**********************************/
/* Recommendation Collection Plan */
/**********************************/

Instance: RecommendationCollectionVentilatedCOVID19patientsWithARDS
InstanceOf: recommendation //to be changed
Usage: #example
Title: "Recommendation Collection: Ventilated COVID-19 Patients with ARDS"
Description: "Recommendation Collection for Ventilated COVID-19 Patients with ARDS"
* action[+]
  * title = "PEEP_Intervention_Plan_With_ARDS_FiO2_0.3"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP Intervention plan for COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.3 - 0.39"
  * definitionCanonical = Canonical(VentilatedCOVID19patientsWithARDSInterventionPlan-fio2-point3)
  * selectionBehavior = #exactly-one
* action[+]
  * title = "PEEP_Intervention_Plan_With_ARDS_FiO2_0.4"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP Intervention plan for COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.4 - 0.49"
  * definitionCanonical = Canonical(VentilatedCOVID19patientsWithARDSInterventionPlan-fio2-point4)
  * selectionBehavior = #exactly-one
* action[+]
  * title = "PEEP_Intervention_Plan_With_ARDS_FiO2_0.5"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP Intervention plan for COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.5 - 0.59"
  * definitionCanonical = Canonical(VentilatedCOVID19patientsWithARDSInterventionPlan-fio2-point5)
  * selectionBehavior = #exactly-one
* action[+]
  * title = "PEEP_Intervention_Plan_With_ARDS_FiO2_0.6"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP Intervention plan for COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.6 - 0.69"
  * definitionCanonical = Canonical(VentilatedCOVID19patientsWithARDSInterventionPlan-fio2-point6)
  * selectionBehavior = #exactly-one
* action[+]
  * title = "PEEP_Intervention_Plan_With_ARDS_FiO2_0.7"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP Intervention plan for COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.7 - 0.79"
  * definitionCanonical = Canonical(VentilatedCOVID19patientsWithARDSInterventionPlan-fio2-point7)
  * selectionBehavior = #exactly-one
* action[+]
  * title = "PEEP_Intervention_Plan_With_ARDS_FiO2_0.8"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP Intervention plan for COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.8 - 0.89"
  * definitionCanonical = Canonical(VentilatedCOVID19patientsWithARDSInterventionPlan-fio2-point8)
  * selectionBehavior = #exactly-one
* action[+]
  * title = "PEEP_Intervention_Plan_With_ARDS_FiO2_0.9"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP Intervention plan for COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.9 - 0.99"
  * definitionCanonical = Canonical(VentilatedCOVID19patientsWithARDSInterventionPlan-fio2-point9)
  * selectionBehavior = #exactly-one
* action[+]
  * title = "PEEP_Intervention_Plan_With_ARDS_FiO2_1.0"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP Intervention plan for COVID-19 patients with ARDS, inspiratory oxygen fraction currently 1.0 - 1.09"
  * definitionCanonical = Canonical(VentilatedCOVID19patientsWithARDSInterventionPlan-fio2-1)
  * selectionBehavior = #exactly-one
* name = "RecommendationCollectionEk36-a"
* title = "PEEP Intervention Plan for Population: Ventilated COVID-19 Patients with ARDS"
* version = "1.0"
* date = "2022-02-14"
* status = #active
* description = "PEEP Intervention Plan for Population: Ventilated COVID-19 Patients with ARDS, inspiratory oxygen fraction 0.3 - 1.09"
* insert canonical-url(example/recommendation-plan/example-recommendation) //to be changed
* experimental = true
* publisher = "CPGonEBMonFHIR"
