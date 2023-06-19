Instance: PopulationVentilatedCOVID19patientsWithARDS
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Ventilated COVID-19 Patients with ARDS"
Description: "Ventilated COVID-19 patients with ARDS"
* insert canonical-url(covid19-inpatient-therapy, population/ventilated-covid19-patients-with-ards)
* status = #active
* name = "Population_COVID19_Ventilated_With_ARDS"
* description = "Ventilated COVID-19 patients with ARDS"
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[condition][+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * characteristic[condition][=].exclude = false
  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#40617009 "Artificial ventilation (regime/therapy)"
  * characteristic[procedure][=].exclude = false
  * characteristic[condition][+]
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#67782005 "Acute respiratory distress syndrome (disorder)"
  * characteristic[procedure][=].exclude = false
* characteristic[=].exclude = false
