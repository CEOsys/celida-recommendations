/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecommendationCollectionVentilatedPatientsWithARDS
InstanceOf: recommendation
Usage: #example
Title: "Recommendation Collection: Ventilated Patients with ARDS"
Description: "Recommendation Collection for Ventilated Patients with ARDS"
* name = "RecommendationCollectionM1"
* title = "Ventilation Plan for Population: Ventilated Patients with ARDS"
* version = "1.0"
* date = "2022-02-14"
* status = #active
* description = "We recommend ventilating patients with ARDS with a VT ≤ 6 ml/kg standard body weight (bw). (Table 1, Appendix)"
* insert canonical-url(recommendation/therapeutic-anticoagulation) //TO-DO: change URL
* experimental = true
* publisher = "Deutsche Gesellschaft für Internistische Intensivmedizin und Notfallmedizin e.V. (DGIIN)"
* action[+]
  * title = "Ventilation_Plan_ARDS"
  * code = $cs-common-process#guideline-based-care
  * description = "We recommend ventilating patients with ARDS with a VT ≤ 6 ml/kg standard body weight (bw). (Table 1, Appendix)"
  * definitionCanonical = Canonical(VentilatedARDSPatientsInterventionPlan)
  * selectionBehavior = #exactly-one
