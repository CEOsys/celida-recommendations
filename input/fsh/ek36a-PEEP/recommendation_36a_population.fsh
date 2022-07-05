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
  * characteristic[condition][+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
  * characteristic[condition][=].exclude = false
  * characteristic[episodeOfCare][+]
    * linkId = "intensive-care-treatment"
    * definitionByTypeAndValue
      * typeCodeableConcept = $loinc#78030-4 "Episode of care Type"
      * valueCodeableConcept = $cs-kontaktart-de#intensivstationaer "Intensivstationär"
  * characteristic[episodeOfCare][=].exclude = false
* characteristic[=].exclude = false

// Exclude patients with Thrombosis or pulmonary embolism
* characteristic[+].definitionByCombination
  * code = #any-of  
  * characteristic[condition][+]
    * linkId = "venous-thrombosis"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#111293003 "Venous Thrombosis"
  * characteristic[condition][=].exclude = false
  * characteristic[condition][+]
    * linkId = "pulmonary-embolism"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#59282003 "Pulmonary embolism (disorder)"
  * characteristic[=].exclude = false
* characteristic[=].exclude = true
