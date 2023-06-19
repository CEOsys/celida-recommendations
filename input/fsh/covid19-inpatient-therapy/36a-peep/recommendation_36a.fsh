/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecommendationCollectionVentilatedCOVID19patients
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation Collection: Ventilated COVID-19 Patients"
Description: "Recommendation Collection for Ventilated COVID-19 Patients"
* name = "RecommendationCollection36-a"
* title = "PEEP Intervention for Population: Ventilated COVID-19 Patients"
* version = "1.0"
* date = "2022-02-14"
* status = #active
* description = "Für die orientierende Einstellung des PEEP bei COVID-19 sollte die FiO2/PEEP-Tabelle des ARDS-Networks berücksichtigt werden. Durch ein engmaschiges Monitoring kann der PEEP der individuellen Situation des Patienten angepasst werden."
* insert canonical-url(covid19-inpatient-therapy, recommendation/covid19-ventilation-plan-peep)
* experimental = true
* publisher = "Deutsche Gesellschaft für Internistische Intensivmedizin und Notfallmedizin e.V. (DGIIN)"
* action[+]
  * title = "PEEP_Intervention_Plan_FiO2_0.3"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP Intervention plan for COVID-19 patients, inspiratory oxygen fraction currently 0.3 - 0.39"
  * definitionCanonical = Canonical(VentilatedCOVID19patientsInterventionPlan-fio2-point3)
  * selectionBehavior = #exactly-one
* action[+]
  * title = "PEEP_Intervention_Plan_FiO2_0.4"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP Intervention plan for COVID-19 patients, inspiratory oxygen fraction currently 0.4 - 0.49"
  * definitionCanonical = Canonical(VentilatedCOVID19patientsInterventionPlan-fio2-point4)
  * selectionBehavior = #exactly-one
* action[+]
  * title = "PEEP_Intervention_Plan_FiO2_0.5"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP Intervention plan for COVID-19 patients, inspiratory oxygen fraction currently 0.5 - 0.59"
  * definitionCanonical = Canonical(VentilatedCOVID19patientsInterventionPlan-fio2-point5)
  * selectionBehavior = #exactly-one
* action[+]
  * title = "PEEP_Intervention_Plan_FiO2_0.6"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP Intervention plan for COVID-19 patients, inspiratory oxygen fraction currently 0.6 - 0.69"
  * definitionCanonical = Canonical(VentilatedCOVID19patientsInterventionPlan-fio2-point6)
  * selectionBehavior = #exactly-one
* action[+]
  * title = "PEEP_Intervention_Plan_FiO2_0.7"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP Intervention plan for COVID-19 patients, inspiratory oxygen fraction currently 0.7 - 0.79"
  * definitionCanonical = Canonical(VentilatedCOVID19patientsInterventionPlan-fio2-point7)
  * selectionBehavior = #exactly-one
* action[+]
  * title = "PEEP_Intervention_Plan_FiO2_0.8"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP Intervention plan for COVID-19 patients, inspiratory oxygen fraction currently 0.8 - 0.89"
  * definitionCanonical = Canonical(VentilatedCOVID19patientsInterventionPlan-fio2-point8)
  * selectionBehavior = #exactly-one
* action[+]
  * title = "PEEP_Intervention_Plan_FiO2_0.9"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP Intervention plan for COVID-19 patients, inspiratory oxygen fraction currently 0.9 - 0.99"
  * definitionCanonical = Canonical(VentilatedCOVID19patientsInterventionPlan-fio2-point9)
  * selectionBehavior = #exactly-one
* action[+]
  * title = "PEEP_Intervention_Plan_FiO2_1.0"
  * code = $cs-common-process#guideline-based-care
  * description = "PEEP Intervention plan for COVID-19 patients, inspiratory oxygen fraction currently 1.0 - 1.0"
  * definitionCanonical = Canonical(VentilatedCOVID19patientsInterventionPlan-fio2-1)
  * selectionBehavior = #exactly-one
