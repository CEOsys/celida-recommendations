/**************/
/* Population */
/**************/
Instance: PopHospitalisedNonICUCOVID19PatientsWOThrombosisWITHHighRisk
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Rec17EK, Hospitalised COVID-19 patients without the need for intensive care therapy, without venous thrombosis, considered high-risk for developing venous thrombosis"
Description: "Population for recommendation 17 from guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: without the need for intensive care therapy, without venous thrombosis, considered high-risk for developing venous thrombosis"
* name = "HospitalisedNonICUCOVID19PatientsWOThrombosisWITHHighRisk"
* actual = false
// extremely difficult to model, as "high-risk" is not very specific...
* identifier.value = "WOThrombosisWITHHighRisk"
* identifier.system = $ceosys
* status = #active
* name = "COVID19_patients_NOT_ICU_without_venous_thrombosis_with_high_risk"
* url = "https://www.ceosys.de/fhir/population/Population_Hospitalised_COVID19_WO_Thrombosis_WITH_Highrisk"
* description = "Population for recommendation 17 from guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: without the need for intensive care therapy, without venous thrombosis, considered high-risk for developing venous thrombosis"

// Include patients with COVID-19 that are considered high-risk (here: ONLY high D-Dimer is counted as such!!!) and that are not treated on ICU currently
  // include covid-19 patients
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
      * valueBoolean = true
  * characteristic[=].exclude = false
  // include patients with d-dimer of higher than 2
  * characteristic[+]
    * linkId = "d-dimer"
    * definitionByTypeAndValue
      // * typeCodeableConcept.coding[loinc] = $loinc#48065-7 "Fibrin D-dimer FEU [Mass/volume] in Platelet poor plasma"
      * typeCodeableConcept.coding[sct] = $sct#699556007 "Milligram per liter D-dimer unit (qualifier value)"
      * valueRange.low
        * value = 2 
        * unit = "mg/l"
        * system = $ucum
        * code = #mg/l
  * characteristic[=].exclude = false
  // exclude patients on ICU
  * characteristic[+]
    * linkId = "non-ICU"
    * definitionByTypeAndValue
      // * typeCodeableConcept.coding[loinc] = $loinc#309904001 "Intensive care unit (environment)"
      * typeCodeableConcept.coding[sct] = $sct#309904001 "Intensive care unit (environment)"
      // TODO: maybe include LOINC Code here (as in Gecko):
      // 95420-6 Whether the patient was admitted to intensive care unit (ICU) for condition of interest 
      * valueBoolean = true
  * characteristic[=].exclude = true
      // kind of redundant... valueBoolean = true means: include if boolean value is yes
* characteristic[=].exclude = false

// Exclude patients having Thrombosis
* characteristic[+]
  * linkId = "venous-thrombosis"
  * definitionByTypeAndValue
    * typeCodeableConcept.coding[sct] = $sct#111293003 "Venous thrombosis (disorder)"
    * valueBoolean = true
* characteristic[=].exclude = true
