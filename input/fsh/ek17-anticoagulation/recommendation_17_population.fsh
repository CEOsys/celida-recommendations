/**************/
/* Population */
/**************/
Instance: PopHospitalisedNonICUCOVID19PatientsWOThrombosisWITHHighRisk
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Rec17EK, Hospitalised COVID-19 patients without the need for intensive care therapy, without venous thrombosis, considered high-risk for developing venous thrombosis"
Description: "Population for recommendation 17 from guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: without the need for intensive care therapy, without venous thrombosis, considered high-risk for developing venous thrombosis"
* name = "HospitalisedNonICUCOVID19PatientsWOThrombosisWITHHighRisk"
//* actual = false
// extremely difficult to model, as "high-risk" is not very specific...
* identifier.value = "WOThrombosisWITHHighRisk"
* identifier.system = $ceosys
* status = #active
* name = "COVID19_patients_NOT_ICU_without_venous_thrombosis_with_high_risk"
* url = "https://www.ceosys.de/fhir/population/Population_Hospitalised_COVID19_WO_Thrombosis_WITH_Highrisk"
* description = "Population for recommendation 17 from guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: without the need for intensive care therapy, without venous thrombosis, considered high-risk for developing venous thrombosis"

// Include patients with COVID-19 that are considered high-risk (here: ONLY high D-Dimer is counted as such!!!) and that are not treated on ICU currently
  // include covid-19 patients
* characteristic[0][condition]
  //* linkId = "covid19"
  * definitionByTypeAndValue
    * typeCodeableConcept = $sct#404684003 "Clinical finding (finding)"
    * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* characteristic[condition][=].exclude = false

* characteristic[1].definitionByCombination
  * code = #all-of
  // include patients with d-dimer of higher than 2
  * characteristic[laboratory][+]
    * linkId = "ddimer-range"
    * definitionByTypeAndValue
    // typeCodeableConcept *must* be from the valueset defined in typeCodeableConcept column (left)
      * typeCodeableConcept = $loinc#48066-5 "Fibrin D-dimer DDU [Mass/volume] in Platelet poor plasma"
      * valueRange
        * low = 2 'mg/L'
  * characteristic[laboratory][=].exclude = false
  // exclude patients on ICU
  * characteristic[episodeOfCare][+]
    * linkId = "intensive-care-treatment"
    * definitionByTypeAndValue
   // typeCodeableConcept *must*use the code below
      * typeCodeableConcept = $loinc#78030-4 "Episode of care Type"
      * valueCodeableConcept = $cs-kontaktart-de#intensivstationaer "Intensivstationär"
  * characteristic[episodeOfCare][=].exclude = true
* characteristic[=].exclude = false

// Exclude patients having Thrombosis
* characteristic[condition][+]
  //* linkId = "venous-thrombosis"
  * definitionByTypeAndValue
    // typeCodeableConcept *must* use the code below
    * typeCodeableConcept = $sct#404684003 "Clinical finding (finding)"
    * valueCodeableConcept = $sct#111293003 "Venous thrombosis (disorder)"
* characteristic[condition][=].exclude = true
