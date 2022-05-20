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
* description = "Population for guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: COVID-19 patients without (venous) thrombosis and without contraindications to LWMH"
* url = "https://www.ceosys.de/fhir/population/Population_Hospitalised_COVID19_WO_Thrombosis_WO_Highrisk"
// TODO unique URL
// Beginning of conditions to include patients
* characteristic[+]
  * linkId = "covid19"
  * definitionByTypeAndValue
    * typeCodeableConcept.coding[sct] = $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
    * valueBoolean = true
* characteristic[=].exclude = false

// Exclude patients with Thrombosis
* characteristic[+]
  * linkId = "venous-thrombosis"
  * definitionByTypeAndValue
    * typeCodeableConcept.coding[sct] = $sct#111293003 "Venous Thrombosis"
    * valueBoolean = true
* characteristic[=].exclude = true

// Exclude patients with any of the following contraindications
* characteristic[+].definitionByCombination
  * code = #any-of
  * characteristic[+]
    * linkId = "hit2"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#111588002 "Heparin-induced thrombocytopenia with thrombosis (disorder)"
      * valueBoolean = true
  * characteristic[=].exclude = false
  * characteristic[+]
    * linkId = "heparin-allergy"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#294872001 "Allergy to heparin (finding)"
      * valueBoolean = true
  * characteristic[=].exclude = false
  * characteristic[+]
    * linkId = "heparinoid-allergy"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#294876003 "Allergy to heparinoid (finding)"
      * valueBoolean = true
  * characteristic[=].exclude = false
  * characteristic[+]
    * linkId = "thrombocytopenia"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#302215000 "Thrombocytopenic disorder (disorder)"
      * valueBoolean = true
  * characteristic[=].exclude = false
* characteristic[=].exclude = true


Instance: PopHospitalisedCOVID19PatientsWOVenousThrombosisWITHCI
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Hospitalised COVID-19 patients without (venous) thrombosis, existing contraindications to LWMH"
Description: "Population for recommendation 15: Hospitalised COVID-19 patients without (venous) thrombosis, existing contraindications to LWMH"
* name = "HospitalisedCOVID19PatientsWOVenousThrombosisWITHCI"
* actual = false
// * characteristic[+]
//   * code = $cochrane-pico#Population
// * characteristic[=].exclude = false
//  see above, still needed?
* identifier.value = "WOThrombosisWITHCI"
* identifier.system = $ceosys
// which values are actually allowed?
* status = #active
* name = "COVID19_patients_without_venous_thrombosis_with_contraindications"
* description = "Population for guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: COVID-19 patients without (venous) thrombosis, existing contraindications to LWMH"
* url = "https://www.ceosys.de/fhir/population/Population_Hospitalised_COVID19_WO_Thrombosis_WO_Highrisk"
// TODO unique URL!

// Include COVID-19 patients without thrombosis

* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
      * valueBoolean = true
  * characteristic[=].exclude = false
  * characteristic[+]
    * linkId = "venous-thrombosis"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#111293003 "Venous thrombosis (disorder)"
      * valueBoolean = true
  * characteristic[=].exclude = true
* characteristic[=].exclude = false
// exclude patients with the following contraindications
* characteristic[+].definitionByCombination 
  * code = #any-of
  * characteristic[+]
    * linkId = "hit2"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#111588002 "Heparin-induced thrombocytopenia with thrombosis (disorder)"
      * valueBoolean = true
  * characteristic[=].exclude = false
  * characteristic[+]
    * linkId = "heparin-allergy"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#294872001 "Allergy to heparin (finding)"
      * valueBoolean = true
  * characteristic[=].exclude = false
  * characteristic[+]
    * linkId = "heparinoid-allergy"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#294876003 "Allergy to heparinoid (finding)"
      * valueBoolean = true
  * characteristic[=].exclude = false
  * characteristic[+]
    * linkId = "thrombocytopenia"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#302215000 " Thrombocytopenic disorder (disorder)"
      * valueBoolean = true
  * characteristic[=].exclude = false
* characteristic[=].exclude = false

Instance: PopHospitalisedCOVID19PatientsWITHThrombosis
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Hospitalised COVID-19 Patients with (venous) thrombosis"
Description: "Population for recommendation 15: Hospitalised COVID-19 Patients with (venous) thrombosis"
* name = "HospitalisedCOVID19PatientsWITHThrombosis"
* actual = false
// * characteristic[+]
//   * code = $cochrane-pico#Population
// * characteristic[=].exclude = false
// see above, still needed?
* identifier.value = "WITHThrombosis"
* identifier.system = $ceosys
* status = #active
* name = "COVID19_patients_with_venous_thrombosis"
* description = "Population for guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: COVID-19 patients with (venous) thrombosis"
* url = "https://www.ceosys.de/fhir/population/Population_Hospitalised_COVID19_WITH_Thrombosis"
// TODO: unique, actual URL

// Include COVID-19 patients without thrombosis
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#840539006 "COVID-19"
      * valueBoolean = true
  * characteristic[=].exclude = false
  * characteristic[+]
    * linkId = "venous-thrombosis"
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#111293003 "Venous Thrombosis"
      * valueBoolean = true
  * characteristic[=].exclude = false
* characteristic[=].exclude = false
