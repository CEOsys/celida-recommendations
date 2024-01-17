/**************/
/* Population */
/**************/
Instance: PopHospitalisedCOVID19PatientsWOContraIndications
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Hospitalised COVID-19 patients without contraindications to LWMH"
Description: "Population for recommendation 15: Hospitalised COVID-19 patients without contraindications to LWMH"
* name = "HospitalisedCOVID19PatientsWOContraIndications"
* actual = false
* identifier.value = "WithoutContraIndications"
* identifier.system = $ceosys
* status = #active
* name = "COVID19_patients_without_contraindications"
* description = "Population for guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: COVID-19 patients without contraindications to LWMH"
* insert canonical-url(covid19-inpatient-therapy, population/hospitalised-covid19-patients-no-LMWH-contraindications)
// Include COVID-19 patients
* characteristic[condition][+]
  * linkId = "covid19"
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
* characteristic[condition][=].exclude = false
 // Exclude patients with any of the following contraindications
* characteristic[1].definitionByCombination
  * code = #any-of
  * characteristic[condition][+]
    * linkId = "hit2"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#111588002 "Heparin-induced thrombocytopenia with thrombosis (disorder)"
  * characteristic[condition][=].exclude = false
  * characteristic[allergy][+]
    * linkId = "heparin-allergy"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#294872001 "Allergy to heparin (finding)"
  * characteristic[allergy][=].exclude = false
  * characteristic[allergy][+]
    * linkId = "heparinoid-allergy"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#294876003 "Allergy to heparinoid (finding)"
  * characteristic[allergy][=].exclude = false
* characteristic[=].exclude = true

Instance: PopHospitalisedCOVID19PatientsWithContraIndications
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Hospitalised COVID-19 patients with existing contraindications to LWMH"
Description: "Population for recommendation 15: Hospitalised COVID-19 patients with existing contraindications to LWMH"
* name = "PopHospitalisedCOVID19PatientsWithContraIndications"
* actual = false
* identifier.value = "WithContraIndications"
* identifier.system = $ceosys
* status = #active
* name = "COVID19_patients_with_contraindications"
* description = "Population for guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: COVID-19 patients, existing contraindications to LWMH"
* insert canonical-url(covid19-inpatient-therapy, population/hospitalised-covid19-patients-with-LMWH-contraindications)
// Include COVID-19 patients
* characteristic[condition][+]
  * linkId = "covid19"
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
* characteristic[condition][=].exclude = false
// INCLUDE patients with the following contraindications
* characteristic[1].definitionByCombination
  * code = #any-of
  * characteristic[condition][+]
    * linkId = "hit2"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#111588002 "Heparin-induced thrombocytopenia with thrombosis (disorder)"
  * characteristic[condition][=].exclude = false
  * characteristic[allergy][+]
    * linkId = "heparin-allergy"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#294872001 "Allergy to heparin (finding)"
  * characteristic[allergy][=].exclude = false
  * characteristic[allergy][+]
    * linkId = "heparinoid-allergy"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#294876003 "Allergy to heparinoid (finding)"
  * characteristic[allergy][=].exclude = false
* characteristic[=].exclude = false
