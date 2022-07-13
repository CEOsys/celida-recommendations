/**************/
/* Population */
/**************/
Instance: PopulationVentilatedCOVID19patientsWithARDS_fio2_0.3
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Ventilated COVID-19 Patients with ARDS, inspiratory oxygen fraction currently 0.3"
Description: "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.3"
* status = #active
* name = "Population_COVID19_Ventilated_With_ARDS_FiO2_0.3"
* description = "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.3"
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[condition][+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * typeCodeableConcept = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * typeCodeableConcept = $sct#71388002 "Procedure (procedure)"
      * valueCodeableConcept = $sct#40617009 "Artificial respiration (procedure)"
  * characteristic[procedure][=].exclude = false

  * characteristic[condition][+]
    * definitionByTypeAndValue
      * typeCodeableConcept = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#67782005 "Acute respiratory distress syndrome (disorder)"
  * characteristic[procedure][=].exclude = false

  * characteristic[ventilationObservableLOINC][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $loinc#19994-3 "Oxygen/Total gas setting [Volume Fraction] Ventilator"
      * valueRange
        * low = 0.3
        * high = 0.39


* characteristic[=].exclude = false
