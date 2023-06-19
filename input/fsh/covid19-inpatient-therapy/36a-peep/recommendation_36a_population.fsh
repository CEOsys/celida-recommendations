/**************/
/* Population */
/**************/
Instance: PopulationVentilatedCOVID19patients-fio2-point3
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.3"
Description: "Ventilated COVID-19 patients, inspiratory oxygen fraction currently 0.3 - 0.39"
* insert canonical-url(covid19-inpatient-therapy, population/ventilated-covid19-patients-fio2-point3)
* status = #active
* name = "Population_COVID19_Ventilated_FiO2_0.3"
* description = "Ventilated COVID-19 patients, inspiratory oxygen fraction currently 0.3 - 0.39"
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[condition][+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * type = $sct#71388002 "Procedure (procedure)"
      * valueCodeableConcept = $sct#40617009 "Artificial ventilation (regime/therapy)"
  * characteristic[procedure][=].exclude = false

  * characteristic[ventilationObservableLOINC][+]
    * definitionByTypeAndValue
      * type = $loinc#3150-0 "Inhaled oxygen concentration"
      * valueRange
        * low = 30 '%' "%"
        * high = 39.9999999999999 '%' "%"
  * characteristic[ventilationObservableLOINC][=].exclude = false
* characteristic[=].exclude = false

Instance: PopulationVentilatedCOVID19patients-fio2-point4
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.4"
Description: "Ventilated COVID-19 patients, inspiratory oxygen fraction currently 0.4 - 0.49"
* insert canonical-url(covid19-inpatient-therapy, population/ventilated-covid19-patients-fio2-point4)
* status = #active
* name = "Population_COVID19_Ventilated_FiO2_0.4"
* description = "Ventilated COVID-19 patients, inspiratory oxygen fraction currently 0.4 - 0.49"

* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[condition][+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * type = $sct#71388002 "Procedure (procedure)"
      * valueCodeableConcept = $sct#40617009 "Artificial ventilation (regime/therapy)"
  * characteristic[procedure][=].exclude = false

  * characteristic[ventilationObservableLOINC][+]
    * definitionByTypeAndValue
      * type = $loinc#3150-0 "Inhaled oxygen concentration"
      * valueRange
        * low = 40 '%' "%"
        * high = 49.9999999999999 '%' "%"
* characteristic[=].exclude = false

Instance: PopulationVentilatedCOVID19patients-fio2-point5
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.5"
Description: "Ventilated COVID-19 patients, inspiratory oxygen fraction currently 0.5 - 0.59"
* insert canonical-url(covid19-inpatient-therapy, population/ventilated-covid19-patients-fio2-point5)
* status = #active
* name = "Population_COVID19_Ventilated_FiO2_0.5"
* description = "Ventilated COVID-19 patients, inspiratory oxygen fraction currently 0.5 - 0.59"

* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[condition][+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * type = $sct#71388002 "Procedure (procedure)"
      * valueCodeableConcept = $sct#40617009 "Artificial ventilation (regime/therapy)"
  * characteristic[procedure][=].exclude = false

  * characteristic[ventilationObservableLOINC][+]
    * definitionByTypeAndValue
      * type = $loinc#3150-0 "Inhaled oxygen concentration"
      * valueRange
        * low = 50.0 '%' "%"
        * high = 59.9999999999999 '%' "%"
* characteristic[=].exclude = false

Instance: PopulationVentilatedCOVID19patients-fio2-point6
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.6"
Description: "Ventilated COVID-19 patients, inspiratory oxygen fraction currently 0.6 - 0.69"
* insert canonical-url(covid19-inpatient-therapy, population/ventilated-covid19-patients-fio2-point6)
* status = #active
* name = "Population_COVID19_Ventilated_FiO2_0.6"
* description = "Ventilated COVID-19 patients, inspiratory oxygen fraction currently 0.6 - 0.69"

* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[condition][+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * type = $sct#71388002 "Procedure (procedure)"
      * valueCodeableConcept = $sct#40617009 "Artificial ventilation (regime/therapy)"
  * characteristic[procedure][=].exclude = false

  * characteristic[ventilationObservableLOINC][+]
    * definitionByTypeAndValue
      * type = $loinc#3150-0 "Inhaled oxygen concentration"
      * valueRange
        * low = 60 '%' "%"
        * high = 69.9999999999999 '%' "%"
* characteristic[=].exclude = false

Instance: PopulationVentilatedCOVID19patients-fio2-point7
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.7"
Description: "Ventilated COVID-19 patients, inspiratory oxygen fraction currently 0.7 - 0.79"
* insert canonical-url(covid19-inpatient-therapy, population/ventilated-covid19-patients-fio2-point7)
* status = #active
* name = "Population_COVID19_Ventilated_FiO2_0.7"
* description = "Ventilated COVID-19 patients, inspiratory oxygen fraction currently 0.7 - 0.79"

* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[condition][+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * type = $sct#71388002 "Procedure (procedure)"
      * valueCodeableConcept = $sct#40617009 "Artificial ventilation (regime/therapy)"
  * characteristic[procedure][=].exclude = false

  * characteristic[ventilationObservableLOINC][+]
    * definitionByTypeAndValue
      * type = $loinc#3150-0 "Inhaled oxygen concentration"
      * valueRange
        * low = 70 '%' "%"
        * high = 79.9999999999999 '%' "%"
* characteristic[=].exclude = false

Instance: PopulationVentilatedCOVID19patients-fio2-point8
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.8"
Description: "Ventilated COVID-19 patients, inspiratory oxygen fraction currently 0.8 - 0.89"
* insert canonical-url(covid19-inpatient-therapy, population/ventilated-covid19-patients-fio2-point8)
* status = #active
* name = "Population_COVID19_Ventilated_FiO2_0.8"
* description = "Ventilated COVID-19 patients, inspiratory oxygen fraction currently 0.8 - 0.89"
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[condition][+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * type = $sct#71388002 "Procedure (procedure)"
      * valueCodeableConcept = $sct#40617009 "Artificial ventilation (regime/therapy)"
  * characteristic[procedure][=].exclude = false

  * characteristic[ventilationObservableLOINC][+]
    * definitionByTypeAndValue
      * type = $loinc#3150-0 "Inhaled oxygen concentration"
      * valueRange
        * low = 80 '%' "%"
        * high = 89.9999999999999 '%' "%"
* characteristic[=].exclude = false

Instance: PopulationVentilatedCOVID19patients-fio2-point9
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.9"
Description: "Ventilated COVID-19 patients, inspiratory oxygen fraction currently 0.9 - 0.99"
* insert canonical-url(covid19-inpatient-therapy, population/ventilated-covid19-patients-fio2-point9)
* status = #active
* name = "Population_COVID19_Ventilated_FiO2_0.9"
* description = "Ventilated COVID-19 patients, inspiratory oxygen fraction currently 0.9 - 0.99"

* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[condition][+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * type = $sct#71388002 "Procedure (procedure)"
      * valueCodeableConcept = $sct#40617009 "Artificial ventilation (regime/therapy)"
  * characteristic[procedure][=].exclude = false

  * characteristic[ventilationObservableLOINC][+]
    * definitionByTypeAndValue
      * type = $loinc#3150-0 "Inhaled oxygen concentration"
      * valueRange
        * low = 90 '%' "%"
        * high = 99.9999999999999 '%' "%"
* characteristic[=].exclude = false

Instance: PopulationVentilatedCOVID19patients-fio2-1
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 1.0"
Description: "Ventilated COVID-19 patients, inspiratory oxygen fraction currently 1.0"
* insert canonical-url(covid19-inpatient-therapy, population/ventilated-covid19-patients-fio2-1)
* status = #active
* name = "Population_COVID19_Ventilated_FiO2_1.0"
* description = "Ventilated COVID-19 patients, inspiratory oxygen fraction currently 1.0"
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[condition][+]
    * linkId = "covid19"
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * characteristic[condition][=].exclude = false

  * characteristic[procedure][+]
    * definitionByTypeAndValue
      * type = $sct#71388002 "Procedure (procedure)"
      * valueCodeableConcept = $sct#40617009 "Artificial ventilation (regime/therapy)"
  * characteristic[procedure][=].exclude = false

  * characteristic[ventilationObservableLOINC][+]
    * definitionByTypeAndValue
      * type = $loinc#3150-0 "Inhaled oxygen concentration"
      * valueQuantity = 100 '%' "%"
* characteristic[=].exclude = false
