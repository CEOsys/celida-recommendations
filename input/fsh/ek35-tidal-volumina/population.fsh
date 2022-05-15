Instance: PopulationVentilatedCOVID19patientsWithARDS
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Ventilated COVID-19 Patients with ARDS"
Description: "" // TODO: add description
* insert canonical-url(population-ventilated-covid19-patients-with-ards)
* status = #active
* name = "Population_COVID19_Ventilated_With_ARDS"
* description = "Ventilated COVID-19 patients with ARDS"
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[+]
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
      * valueBoolean = true
  * characteristic[=].exclude = false

  * characteristic[+]
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#40617009 "Artificial respiration (procedure)"
      * valueBoolean = true
  * characteristic[=].exclude = false

  * characteristic[+]
    * definitionByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#67782005 "Acute respiratory distress syndrome (disorder)"
      * valueBoolean = true
  * characteristic[=].exclude = false

* characteristic[=].exclude = false
