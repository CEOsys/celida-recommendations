/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecommendationCollectionVentilationCOVID19patientsWithARDS
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation Collection: Ventilation Plan for Ventilated COVID-19 patients with ARDS"
Description: "Recommendation Collection for Ventilated COVID-19 patients with ARDS"
* name = "RecommendationCollection35"
* title = "Ventilation Plan for Population: Ventilated COVID-19 patients with ARDS"
* version = "1.0"
* date = "2022-02-14"
* status = #active
* description = "Bei beatmeten Patienten mit COVID-19 und ARDS sollte das Tidalvolumen ≤ 6 ml/kg Standardkörpergewicht betragen, der endinspiratorische Atemwegsdruck ≤ 30 cm H2O."
* insert canonical-url(covid19-inpatient-therapy, recommendation/ventilation-plan-ards-tidal-volume)
* experimental = true
* publisher = "Deutsche Gesellschaft für Internistische Intensivmedizin und Notfallmedizin e.V. (DGIIN)"
* insert rs-combination-exactly(1)
* action[+]
  * title = "Ventilation_Plan"
  * code = $cs-common-process#guideline-based-care
  * description = "In ventilated patients with COVID-19 and ARDS, tidal volume should be ≤ 6 ml/kg standard body weight, end-inspiratory airway pressure ≤ 30 cm H2O."
  * definitionCanonical = Canonical(VentilatedCOVID19PatientsWithARDSVentilationPlan)
