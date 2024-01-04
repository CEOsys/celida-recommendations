/**************/
/* Population */
/**************/
Instance: PopHospitalisedCOVID19PatientsWOVenousThrombosisWOCI
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Hospitalised COVID-19 patients without (venous) thrombosis and without contraindications to LWMH"
Description: "Population for recommendation 15: Hospitalised COVID-19 patients without (venous) thrombosis and without contraindications to LWMH"
* name = "HospitalisedCOVID19PatientsWOVenousThrombosisWOCI"
* actual = false
* identifier.value = "WOThrombosisWOCI"
* identifier.system = $ceosys
* status = #active
* name = "COVID19_patients_without_venous_thrombosis_without_contraindications"
* description = "Population for guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: COVID-19 patients without (venous) thrombosis and without contraindications to LWMH"
* insert canonical-url(covid19-inpatient-therapy, population/hospitalised-covid19-patients-no-venous-thrombosis-no-LMWH-contraindications)
// Include COVID-19 patients
* characteristic[condition][+]
  * linkId = "covid19"
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
* characteristic[condition][=].exclude = false
 // Exclude patients with any of the following contraindications
* characteristic[2].definitionByCombination
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

Instance: PopHospitalisedCOVID19PatientsWOVenousThrombosisWITHCI
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Hospitalised COVID-19 patients without (venous) thrombosis, existing contraindications to LWMH"
Description: "Population for recommendation 15: Hospitalised COVID-19 patients without (venous) thrombosis, existing contraindications to LWMH"
* name = "HospitalisedCOVID19PatientsWOVenousThrombosisWITHCI"
* actual = false
* identifier.value = "WOThrombosisWITHCI"
* identifier.system = $ceosys
* status = #active
* name = "COVID19_patients_without_venous_thrombosis_with_contraindications"
* description = "Population for guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: COVID-19 patients without (venous) thrombosis, existing contraindications to LWMH"
* insert canonical-url(covid19-inpatient-therapy, population/hospitalised-covid19-patients-no-venous-thrombosis-with-LMWH-contraindications)
// Include COVID-19 patients
* characteristic[condition][+]
  * linkId = "covid19"
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
* characteristic[condition][=].exclude = false
// INCLUDE patients with the following contraindications
* characteristic[2].definitionByCombination
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
