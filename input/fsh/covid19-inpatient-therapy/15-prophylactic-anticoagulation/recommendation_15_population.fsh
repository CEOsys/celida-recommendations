/**************/
/* Population */
/**************/
Instance: PopHospitalisedCOVID19PatientsWOVenousThrombosisWOCI
InstanceOf: recommendation-eligibility-criteria
Usage: #example
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
// Include COVID-19 patients without thrombosis
* characteristic[condition][+]
  * linkId = "covid19"
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
* characteristic[condition][=].exclude = false
* characteristic[condition][+]
  * linkId = "venous-thrombosis"
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#111293003 "Venous Thrombosis"
* characteristic[condition][=].exclude = true
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
  * characteristic[condition][+]
    * linkId = "thrombocytopenia"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#302215000 "Thrombocytopenic disorder (disorder)"
  * characteristic[condition][=].exclude = false
* characteristic[=].exclude = true

Instance: PopHospitalisedCOVID19PatientsWOVenousThrombosisWITHCI
InstanceOf: recommendation-eligibility-criteria
Usage: #example
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
// Include COVID-19 patients without thrombosis
* characteristic[condition][+]
  * linkId = "covid19"
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
* characteristic[condition][=].exclude = false
* characteristic[condition][+]
  * linkId = "venous-thrombosis"
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#111293003 "Venous thrombosis (disorder)"
* characteristic[condition][=].exclude = true
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
  * characteristic[condition][+]
    * linkId = "thrombocytopenia"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#302215000 "Thrombocytopenic disorder (disorder)"
  * characteristic[condition][=].exclude = false
* characteristic[=].exclude = false

Instance: PopHospitalisedCOVID19PatientsWITHThrombosis
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Hospitalised COVID-19 Patients with (venous) thrombosis"
Description: "Population for recommendation 15: Hospitalised COVID-19 Patients with (venous) thrombosis"
* name = "HospitalisedCOVID19PatientsWITHThrombosis"
* actual = false
* identifier.value = "WITHThrombosis"
* identifier.system = $ceosys
* status = #active
* name = "COVID19_patients_with_venous_thrombosis"
* description = "Population for guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: COVID-19 patients with (venous) thrombosis"
* insert canonical-url(covid19-inpatient-therapy, population/hospitalised-covid19-patients-with-venous-thrombosis)
 // Include patients with COVID-19 AND venous thrombosis
* characteristic[condition][+]
  * linkId = "covid19"
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
* characteristic[condition][=].exclude = false
* characteristic[condition][+]
  * linkId = "venous-thrombosis"
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#111293003 "Venous Thrombosis"
* characteristic[condition][=].exclude = false
