/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecCollectionNoTherapeuticAnticoagNoIndicationICUCOVID19
InstanceOf: recommendation
Usage: #definition
Title: "No therapeutic anticoagulation for intensive care COVID-19 patients with no specific indication"
Description: "No therapeutic anticoagulation for intensive care COVID-19 patients with no specific indication"
* name = "18 - No Therapeutic Anticoagulation"
* title = "No therapeutic anticoagulation for intensive care COVID-19 patients with no specific indication"
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
