/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecCollectionTherapeuticAnticoagNonICUHighRiskCOVID19Patients
InstanceOf: recommendation
Usage: #definition
Title: "Therapeutic anticoagulation in non-intensive care, high-risk COVID-19 patients"
Description: "Therapeutic anticoagulation in non-intensive care, high-risk COVID-19 patients"
* name = "17 - Therapeutic Anticoagulation"
* title = "Therapeutic anticoagulation in non-intensive care, high-risk COVID-19 patients"
* version = "1.0"
* date = "2022-02-14"
* status = #active
* description = "Bei hospitalisierten, nichtintensivpflichtigen Patienten mit COVID-19 und erhöhtem Risiko (z.B. D-Dimere ≥ 2 mg/l) kann bei niedrigem Blutungsrisiko eine therapeutische Antikoagulation, präferenziell mit NMH oder UFH, erwogen werden."
* insert canonical-url(covid19-inpatient-therapy, recommendation/therapeutic-anticoagulation) //TO-DO: change URL
* experimental = true
* publisher = "Deutsche Gesellschaft für Internistische Intensivmedizin und Notfallmedizin e.V. (DGIIN)"
* insert rs-combination-exactly(1)
* action[+]
  * title = "Therapeutic_Anticoagulation_No_Renal_Function_Impairment"
  * code = $cs-common-process#guideline-based-care
  * description = "Therapeutic Anticoagulation Plan (hospitalised, non-intensive care, COVID-19 patients)"
  * definitionCanonical = Canonical(TherapeuticAnticoagulationNonICUHighRiskCOVID19PatientsPlan)
