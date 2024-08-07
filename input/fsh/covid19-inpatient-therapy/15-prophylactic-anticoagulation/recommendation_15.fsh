/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecCollectionProphAnticoagulationHospitalizedCOVID19Patients
InstanceOf: recommendation
Usage: #definition
Title: "Prophylactic anticoagulation in hospitalized COVID-19 patients"
Description: "Prophylactic anticoagulation in hospitalized COVID-19 patients"
* name = "15 - Prophylactic Anticoagulation"
* title = "Prophylactic anticoagulation in hospitalized COVID-19 patients"
* version = "1.0"
* date = "2022-02-14"
* status = #active
* description = "Hospitalisierte Patienten mit COVID-19 sollen in Abwesenheit von Kontraindikationen eine standardmäßige medikamentöse Thromboembolieprophylaxe mit niedermolekularem Heparin erhalten. Alternativ kann Fondaparinux zur Anwendung kommen."
* insert canonical-url(covid19-inpatient-therapy, recommendation/prophylactic-anticoagulation)
* experimental = true
* publisher = "Deutsche Gesellschaft für Internistische Intensivmedizin und Notfallmedizin e.V. (DGIIN)"
* insert rs-combination-exactly(1)
* action[+]
  * title = "AntithromboticProphylaxisWithLWMH"
  * code = $cs-common-process#guideline-based-care
  * description = "Antithrombotic prophylaxis with LWMH in hospitalised COVID-19 patients"
  * definitionCanonical = Canonical(AntithrombLWMHProphInHospitalisedCOVID19PatientsRecommPlan)
* action[+]
  * title = "AntithromboticProphylaxisWithFondaparinux"
  * code = $cs-common-process#guideline-based-care
  * description = "Antithrombotic prophylaxis with Fondaparinux"
  * definitionCanonical = Canonical(AntithrombFondapProphInHospitalisedCOVID19PatientsRecommPlan)
