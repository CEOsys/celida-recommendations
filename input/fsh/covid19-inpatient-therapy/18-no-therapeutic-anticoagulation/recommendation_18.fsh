/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecCollectionNoTherapeuticAnticoagNoIndicationICUCOVID19
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation Collection: ICU COVID-19 Patients with No Specific Indication"
Description: "Recommendation Collection for ICU COVID-19 Patients with No Specific Indication"
* name = "RecommendationCollection18"
* title = "Anticoagulation Plan for Population: ICU COVID-19 Patients with No Specific Indication"
* version = "1.0"
* date = "2022-02-14"
* status = #active
* description = "Bei Intensivpatienten ohne spezifische Indikation (z.B. Lungenembolien) sollte eine therapeutische Antikoagulation nicht erfolgen."
* insert canonical-url(covid19-inpatient-therapy, recommendation/no-therapeutic-anticoagulation)
* experimental = true
* publisher = "Deutsche Gesellschaft für Internistische Intensivmedizin und Notfallmedizin e.V. (DGIIN)"
* insert rs-combination-exactly(1)
* action[+]
  * title = "Anticoagulation_Plan_No_Specific_Indication"
  * code = $cs-common-process#guideline-based-care
  * description = "Anticoagulation Plan for hospitalized intensive-care COVID-19 patients with no specific indication"
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationICUCOVID19NoIndicationPlan)
