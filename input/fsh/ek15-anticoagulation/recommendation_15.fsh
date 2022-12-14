/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecommendationCollectionProphylacticAnticoagulationHospitalizedCOVID19Patients
InstanceOf: recommendation
Usage: #example
Title: "Recommendation Collection: Prophylactic Anticoagulation in Hospitalized COVID-19 Patients"
Description: "Recommendation Collection for Hospitalized COVID-19 Patients"
* name = "RecommendationCollectionEk15"
* title = "Prophylactic Anticoagulation for Population: Hospitalized COVID-19 Patients"
* version = "1.0"
* date = "2022-02-14"
* status = #active
* description = "Prophylactic Anticoagulation in Hospitalized COVID-19 Patients, with and without contraindications"
* insert canonical-url(recommendation/therapeutic-anticoagulation) //TO-DO: change URL 
* experimental = true
* publisher = "Deutsche Gesellschaft für Internistische Intensivmedizin und Notfallmedizin e.V. (DGIIN)"
* action[+]
  * title = "AntithromboticProphylaxisWithLWMH"
  * code = $cs-common-process#guideline-based-care
  * description = "Antithrombotic prophylaxis with LWMH in hospitalised COVID-19 patients"
  * definitionCanonical = Canonical(AntithrombLWMHProphInHospitalisedCOVID19PatientsRecommPlan)
  * selectionBehavior = #exactly-one
* action[+]
  * title = "AntithromboticProphylaxisWithFondaparinux"
  * code = $cs-common-process#guideline-based-care
  * description = "Antithrombotic prophylaxis with Fondaparinux"
  * definitionCanonical = Canonical(AntithrombFondapProphInHospitalisedCOVID19PatientsRecommPlan)
  * selectionBehavior = #exactly-one
* action[+]
  * title = "NoAntithromboticProphylaxis"
  * code = $cs-common-process#guideline-based-care
  * description = "No antithrombotic prophylaxis in patients with thrombosis"
  * definitionCanonical = Canonical(NoAntithrombProphInHospitalisedCOVID19PatientsRecommPlan)
  * selectionBehavior = #exactly-one
