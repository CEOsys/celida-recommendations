/**************/
/* Population */
/**************/
Instance: PopHospitalisedICUCOVID19Patients
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Hospitalised COVID-19 patients, treated on ICU, without thrombembolic complication"
Description: "Hospitalised COVID-19 patients, treated on ICU, without thrombembolic complication"
* name = "HospitalICUCOVID19WOThrombembolic"
* actual = false
* identifier.value = "HospitalICUCOVID19WOThrombembolic"
* identifier.system = $ceosys
* status = #active
* name = "COVID19_ICU_patients_without_thrombembolic complication"
* description = "COVID 19 patients without a thrombembolic complication"
* insert canonical-url(covid19-patients-without-thrombembolic-complication)

// Include COVID-19 patients, treated in ICU 
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
      * valueBoolean = true
  * characteristic[=].exclude = false
  * characteristic[+]
    * linkId = "ICU"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#309904001 "Intensive care unit (environment)"
      * valueBoolean = true
  * characteristic[=].exclude = false
* characteristic[=].exclude = false

// Exclude patients with Thrombosis or pulmonary embolism
* characteristic[+].definitionByCombination
  * code = #any-of  
  * characteristic[+]
    * linkId = "venous-thrombosis"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#111293003 "Venous Thrombosis"
      * valueBoolean = true
  * characteristic[=].exclude = false
  * characteristic[+]
    * linkId = "pulmonary-embolism"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#59282003 "Pulmonary embolism (disorder)"
      * valueBoolean = true
  * characteristic[=].exclude = false
* characteristic[=].exclude = true
