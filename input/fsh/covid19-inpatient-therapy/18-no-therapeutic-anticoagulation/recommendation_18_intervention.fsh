/*********************/
/* Intervention Plan */
/*********************/
Instance: NoTherapeuticAnticoagulationICUCOVID19NoIndicationPlan
InstanceOf: recommendation-plan
Usage: #definition
Title: "Anticoagulation Plan for hospitalized intensive-care COVID-19 patients with no specific indication"
Description: "In intensive care patients without a specific indication (e.g. pulmonary embolism), therapeutic anticoagulation should not be given."
* insert canonical-url(covid19-inpatient-therapy, intervention-plan/no-therapeutic-anticoagulation)
* insert publisher-experimental-version(7.0)
* name = "Anticoagulation_Plan_No_Specific_Indication"
* title = "Anticoagulation Plan for hospitalized intensive-care COVID-19 patients with no specific indication"
* identifier.value = "TherapeuticAnticoagulationICUCOVID19NoIndication"
* date = "2022-02"
* status = #active
* description = "In intensive care patients without a specific indication (e.g. pulmonary embolism), therapeutic anticoagulation should not be given."
* subjectCanonical = Canonical(PopHospitalisedICUCOVID19Patients)
* extension[partOf].valueCanonical = Canonical(RecCollectionNoTherapeuticAnticoagNoIndicationICUCOVID19)
* goal[laboratoryValue][+]
  * id = "aPTT-goal"
  * description.text = "aPTT value should not be > 50 sec."
  * category = $sct#410394004 "Lab findings surveillance (regime/therapy)"
  * target
    * measure = $loinc#3173-2 "aPTT in Blood by Coagulation assay"
    * detailRange
      * low = 50 's' "sec"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWDalteparin)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWEnoxaparin)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWNadroparinLowWeight)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWNadroparinHighWeight)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWCertoparin)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWArgatra)
  * goalId = "aPTT-goal"
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWUFH)
  * goalId = "aPTT-goal"
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationWTinzaparin)
  * selectionBehavior = #all
  * code = $sct#432102000 "Administration of substance (procedure)"

/*************************/
/* Recommended Actions   */
/*************************/
Instance: NoTherapeuticAnticoagulationWDalteparin
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with Dalteparin"
Description: "No Therapeutic Anticoagulation Treatment with Dalteparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-dalteparin-administration)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationDalteparinPlan"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Dalteparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#372563008 "Dalteparin (substance)"
  * coding[atcde] = $atcde#B01AB04 "Dalteparin"
* dosage
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseRange
      * low = 5000.0000001 '[iU]' "IU"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWEnoxaparin
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with Enoxaparin"
Description: "No Therapeutic Anticoagulation Treatment with Enoxaparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-enoxaparin-administration)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanEnoxaparin"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Enoxaparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#372562003 "Enoxaparin (substance)"
  * coding[atcde] = $atcde#B01AB05 "Enoxaparin"
* dosage
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseRange
      * low = 40.0000001 'mg'
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWNadroparinLowWeight
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with Nadroparin Low Weight"
Description: "No Therapeutic Anticoagulation Treatment with Nadroparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-nadroparin-administration-low-weight)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanNadroparinLowWeight"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Nadroparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#699946002 "Nadroparin (substance)"
  * coding[atcde] = $atcde#B01AB06 "Nadroparin"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.high = 70 'kg' "kg"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseRange
      * low = 3800.0000001 '[iU]' "IU"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWNadroparinHighWeight
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with Nadroparin High Weight"
Description: "No Therapeutic Anticoagulation Treatment with Nadroparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-nadroparin-administration-high-weight)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanNadroparinHighWeight"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Nadroparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#699946002 "Nadroparin (substance)"
  * coding[atcde] = $atcde#B01AB06 "Nadroparin"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.low = 70 'kg' "kg"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseRange
      * low = 5700.0000001 '[iU]' "IU"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWCertoparin
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with Certoparin"
Description: "No Therapeutic Anticoagulation Treatment with Certoparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-certoparin-administration)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanCertoparin"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Certoparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#395961003 "Certoparin (substance)"
  * coding[atcde] = $atcde#B01AB13 "Certoparin"
* dosage
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseRange
      * low = 3000.0000001 '[iU]' "IU"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWUFH
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with UFH"
Description: "No Therapeutic Anticoagulation Treatment with UFH for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-UFH-administration)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanUFH"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with UFH for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#372877000 "Heparin (substance)"
  * coding[atcde] = $atcde#C05BA03 "Heparin"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWArgatra
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with Argatroban"
Description: "No Therapeutic Anticoagulation Treatment with Argatroban for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-argatroban-administration)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanArgatroban"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Argatroban for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#116508003 "Argatroban (substance)"
  * coding[atcde] = $atcde#B01AE03 "Argatroban"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWTinzaparin
InstanceOf: drug-administration-action
Usage: #definition
Title: "No Therapeutic Anticoagulation Treatment with Tinzaparin"
Description: "No Therapeutic Anticoagulation Treatment with Tinzaparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/no-therapeutic-anticoagulant-tinzaparin-administration)
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanTinzaparin"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Tinzaparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB10 "Tinzaparin"
  * coding[sct] = $sct#412608008 "Tinzaparin (substance)"
* dosage
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseRange
      * low = 4500.0000001 '[iU]' "IU"
* doNotPerform = true
