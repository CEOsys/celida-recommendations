/**************/
/* Population */
/**************/
Instance: PopulationVentilatedCOVID19patientsWithARDS-fio2-0.3
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Ventilated COVID-19 Patients with ARDS, inspiratory oxygen fraction currently 0.3"
Description: "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.3 - 0.39"
* status = #active
* name = "Population_COVID19_Ventilated_With_ARDS_FiO2_0.3"
* description = "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.3 - 0.39"
* url = "https://www.ceosys.de/fhir/population/Population_TODO"
// TODO unique URL
// Beginning of conditions to include patients
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
      * typeCodeableConcept = $loinc#19994-3 "Oxygen/Total gas setting [Volume Fraction] Ventilator"
      * valueRange
        * low = 0.3 ''
        * high = 0.39 ''
* characteristic[=].exclude = false

Instance: PopulationVentilatedCOVID19patientsWithARDS-fio2-0.4
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Ventilated COVID-19 Patients with ARDS, inspiratory oxygen fraction currently 0.4"
Description: "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.4 - 0.49"
* status = #active
* name = "Population_COVID19_Ventilated_With_ARDS_FiO2_0.4"
* description = "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.4 - 0.49"
* url = "https://www.ceosys.de/fhir/population/Population_TODO"
// TODO unique URL
// Beginning of conditions to include patients
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
      * typeCodeableConcept = $loinc#19994-3 "Oxygen/Total gas setting [Volume Fraction] Ventilator"
      * valueRange
        * low = 0.4 ''
        * high = 0.49 ''
* characteristic[=].exclude = false

Instance: PopulationVentilatedCOVID19patientsWithARDS-fio2-0.5
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Ventilated COVID-19 Patients with ARDS, inspiratory oxygen fraction currently 0.5"
Description: "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.5 - 0.59"
* status = #active
* name = "Population_COVID19_Ventilated_With_ARDS_FiO2_0.5"
* description = "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.5 - 0.59"
* url = "https://www.ceosys.de/fhir/population/Population_TODO"
// TODO unique URL
// Beginning of conditions to include patients
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
      * typeCodeableConcept = $loinc#19994-3 "Oxygen/Total gas setting [Volume Fraction] Ventilator"
      * valueRange
        * low = 0.5 ''
        * high = 0.59 ''
* characteristic[=].exclude = false

Instance: PopulationVentilatedCOVID19patientsWithARDS-fio2-0.6
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Ventilated COVID-19 Patients with ARDS, inspiratory oxygen fraction currently 0.6"
Description: "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.6 - 0.69"
* status = #active
* name = "Population_COVID19_Ventilated_With_ARDS_FiO2_0.6"
* description = "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.6 - 0.69"
* url = "https://www.ceosys.de/fhir/population/Population_TODO"
// TODO unique URL
// Beginning of conditions to include patients
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
      * typeCodeableConcept = $loinc#19994-3 "Oxygen/Total gas setting [Volume Fraction] Ventilator"
      * valueRange
        * low = 0.6 ''
        * high = 0.69 ''
* characteristic[=].exclude = false

Instance: PopulationVentilatedCOVID19patientsWithARDS-fio2-0.7
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Ventilated COVID-19 Patients with ARDS, inspiratory oxygen fraction currently 0.7"
Description: "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.7 - 0.79"
* status = #active
* name = "Population_COVID19_Ventilated_With_ARDS_FiO2_0.7"
* description = "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.7 - 0.79"
* url = "https://www.ceosys.de/fhir/population/Population_TODO"
// TODO unique URL
// Beginning of conditions to include patients
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
      * typeCodeableConcept = $loinc#19994-3 "Oxygen/Total gas setting [Volume Fraction] Ventilator"
      * valueRange
        * low = 0.7 ''
        * high = 0.79 ''
* characteristic[=].exclude = false

Instance: PopulationVentilatedCOVID19patientsWithARDS-fio2-0.8
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Ventilated COVID-19 Patients with ARDS, inspiratory oxygen fraction currently 0.8"
Description: "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.8 - 0.89"
* status = #active
* name = "Population_COVID19_Ventilated_With_ARDS_FiO2_0.8"
* description = "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.8 - 0.89"
* url = "https://www.ceosys.de/fhir/population/Population_TODO"
// TODO unique URL
// Beginning of conditions to include patients
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
      * typeCodeableConcept = $loinc#19994-3 "Oxygen/Total gas setting [Volume Fraction] Ventilator"
      * valueRange
        * low = 0.8 ''
        * high = 0.89 ''
* characteristic[=].exclude = false

Instance: PopulationVentilatedCOVID19patientsWithARDS-fio2-0.9
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Ventilated COVID-19 Patients with ARDS, inspiratory oxygen fraction currently 0.9"
Description: "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.9 - 0.99"
* status = #active
* name = "Population_COVID19_Ventilated_With_ARDS_FiO2_0.9"
* description = "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 0.9 - 0.99"
* url = "https://www.ceosys.de/fhir/population/Population_TODO"
// TODO unique URL
// Beginning of conditions to include patients
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
      * typeCodeableConcept = $loinc#19994-3 "Oxygen/Total gas setting [Volume Fraction] Ventilator"
      * valueRange
        * low = 0.9 ''
        * high = 0.99 ''
* characteristic[=].exclude = false

Instance: PopulationVentilatedCOVID19patientsWithARDS-fio2-1.0
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Ventilated COVID-19 Patients with ARDS, inspiratory oxygen fraction currently 1.0"
Description: "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 1.0"
* status = #active
* name = "Population_COVID19_Ventilated_With_ARDS_FiO2_1.0"
* description = "Ventilated COVID-19 patients with ARDS, inspiratory oxygen fraction currently 1.0"
* url = "https://www.ceosys.de/fhir/population/Population_TODO"
// TODO unique URL
// Beginning of conditions to include patients
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
      * typeCodeableConcept = $loinc#19994-3 "Oxygen/Total gas setting [Volume Fraction] Ventilator"
      * valueRange
        * low = 1.0 ''
        * high = 1.0 ''
* characteristic[=].exclude = false