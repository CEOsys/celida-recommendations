/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecommendationCollectionVentilatedPatientsWithARDS
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation Collection: Ventilated Patients with ARDS"
Description: "Recommendation Collection for Ventilated Patients with ARDS"
* name = "RecommendationCollectionM1"
* title = "Ventilation Plan for Population: Ventilated Patients with ARDS"
* version = "1.0"
* date = "2022-02-14"
* status = #active
* description = "Wir empfehlen die Beatmung von Patienten mit ARDS mit einem VT ≤ 6 ml/kg Standard-Körpergewicht (KG)."
* insert canonical-url(sepsis, recommendation/ventilation-plan-ards-tidal-volume)
* experimental = true
* publisher = "Deutsche Gesellschaft für Internistische Intensivmedizin und Notfallmedizin e.V. (DGIIN)"
* insert rs-combination-exactly(1)
* action[+]
  * title = "Ventilation_Plan_ARDS"
  * code = $cs-common-process#guideline-based-care
  * description = "We recommend ventilating patients with ARDS with a VT ≤ 6 ml/kg standard body weight (bw). (Table 1, Appendix)"
  * definitionCanonical = Canonical(VentilatedARDSPatientsInterventionPlan)
