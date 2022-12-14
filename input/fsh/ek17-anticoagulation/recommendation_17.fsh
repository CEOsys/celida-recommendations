/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecommendationCollectionTherapeuticAnticoagulationNonICUHighRiskCOVID19Patients
InstanceOf: recommendation
Usage: #example
Title: "Recommendation Collection: Therapeutic Anticoagulation in Non-ICU, High-Risk COVID-19 Patients"
Description: "Recommendation Collection for non-ICU, High-Risk COVID-19 Patients"
* name = "RecommendationCollectionEk17"
* title = "Prophylactic Anticoagulation for Population: non-ICU, High-Risk COVID-19 Patients"
* version = "1.0"
* date = "2022-02-14"
* status = #active
* description = "Therapeutic Anticoagulation for Non-ICU, High-Risk COVID-19 Patients"
* insert canonical-url(recommendation/therapeutic-anticoagulation) //TO-DO: change URL 
* experimental = true
* publisher = "Deutsche Gesellschaft für Internistische Intensivmedizin und Notfallmedizin e.V. (DGIIN)"
* action[+]
  * title = "Therapeutic_Anticoagulation_No_Renal_Function_Impairment"
  * code = $cs-common-process#guideline-based-care
  * description = "Therapeutic Anticoagulation Plan (hospitalised, non-intensive care, COVID-19 patients)"
  * definitionCanonical = Canonical(TherapeuticAnticoagulationNonICUHighRiskCOVID19PatientsPlan)
  * selectionBehavior = #exactly-one