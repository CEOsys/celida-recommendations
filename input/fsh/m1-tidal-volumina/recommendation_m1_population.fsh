Instance: PopulationVentilatedARDSPatients
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Ventilated patients with ARDS"
Description: "Patients with ARDS"
* insert canonical-url(population/ventilated-patients-with-ards)
* status = #active
* name = "Population_Ventilated_Patients_With_ARDS"
* description = "Ventilated patients with ARDS"
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#40617009 "Artificial respiration (procedure)"
  * characteristic[procedure][=].exclude = false
  * characteristic[condition][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#67782005 "Acute respiratory distress syndrome (disorder)"
  * characteristic[condition][=].exclude = false
* characteristic[=].exclude = false
