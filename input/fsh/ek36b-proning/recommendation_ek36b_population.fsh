Instance: PopVentilatedCOVID19patientsWithARDSWithOxygenationFailure
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Ventilated COVID-19 Patients with severe ARDS"
Description: "Ventilated COVID-19 patients with severe ARDS, defined by oxygenation failure (Horovitz Quotient lower than 150)"
* insert canonical-url(population/ventilated-covid19-patients-with-ards-with-oxygenation-failure)
* status = #active
* name = "Population_COVID19_Ventilated_With_severe_ARDS"
* description = "Ventilated COVID-19 patients with severe ARDS, defined by oxygenation failure (Horovitz Quotient lower than 150)"
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[condition][+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * characteristic[condition][=].exclude = false
  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#40617009 "Artificial respiration (procedure)"
  * characteristic[procedure][=].exclude = false
  * characteristic[condition][+]
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#67782005 "Acute respiratory distress syndrome (disorder)"
  * characteristic[condition][=].exclude = false
  * characteristic[laboratory][+]
    * linkId = "horowitz-limit"
    * definitionByTypeAndValue
      * type = $loinc#50984-4 "Horowitz index in Arterial blood"
      * valueRange
        * high = 150 'mm[Hg]' "mm[Hg]"
  * characteristic[laboratory][=].exclude = false
* characteristic[=].exclude = false
