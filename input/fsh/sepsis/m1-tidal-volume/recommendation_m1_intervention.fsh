/*********************/
/* Intervention Plan */
/*********************/
Instance: VentilatedARDSPatientsInterventionPlan
InstanceOf: recommendation-plan
Usage: #definition
Title: "Ventilation Plan for patients with ARDS"
Description: "We recommend ventilating patients with ARDS with a VT ≤ 6 ml/kg standard body weight (bw). (Table 1, Appendix)"
* insert canonical-url(sepsis, intervention-plan/ventilation-ARDS-plan)
* insert publisher-experimental-version(7.0)
* name = "Ventilation_Plan_ARDS"
* title = "Ventilation parameters for patients with ARDS"
* version = "7.0"
* date = "2022-02"
* status = #active
* description = "We recommend ventilating patients with ARDS with a VT ≤ 6 ml/kg standard body weight (bw). (Table 1, Appendix)"
* subjectCanonical = Canonical(PopulationVentilatedARDSPatients)
* extension[partOf].valueCanonical = Canonical(RecommendationCollectionVentilatedPatientsWithARDS)
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "tidal-volume-ARDS-goal"
  * description.text = "Tidal volume ≤ 6 ml/kg standard body weight"
  * target[+]
    * measure = $cs-codex-celida#tvpibw "Tidal volume / ideal body weight (ARDSnet)"
    * detailRange.high = 6 'ml/kg' "ml/kg"
* insert rs-combination-all
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "tidal-volume-ARDS-goal"
