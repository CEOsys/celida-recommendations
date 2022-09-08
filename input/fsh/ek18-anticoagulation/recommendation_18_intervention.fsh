/*********************/
/* Intervention Plan */
/*********************/
Instance: NoTherapeuticAnticoagulationICUCOVID19NoIndicationPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "Anticoagulation Plan for hospitalized intensive-care COVID-19 patients with no specific indication"
Description: "In intensive care patients without a specific indication (e.g. pulmonary embolism), therapeutic anticoagulation should not be given."
* insert canonical-url(change-me) // TODO: check url
* insert publisher-experimental-version(7.0)
* name = "Anticoagulation_Plan_No_Specific_Indication"
* title = "Anticoagulation Plan for hospitalized intensive-care COVID-19 patients with no specific indication"
* identifier.value = "TherapeuticAnticoagulationICUCOVID19NoIndication"
* date = "2022-02"
* status = #active
* description = "In intensive care patients without a specific indication (e.g. pulmonary embolism), therapeutic anticoagulation should not be given."
* subjectCanonical = Canonical(PopHospitalisedICUCOVID19Patients)
* goal[laboratoryValue][+]
  * id = "aPTT-goal"
  * description.text = "aPTT value should not be > 50 sec."
  * category = $sct#410394004 "Lab findings surveillance (regime/therapy)"
  * target
    * measure = $loinc#50754-1 "aPTT in Pooled Platelet poor plasma by Coagulation assay"
    * detailRange
      * high = 50 's' "sec"
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

/*************************/
/* Intervention Activity */
/*************************/
Instance: NoTherapeuticAnticoagulationWDalteparin
InstanceOf: drug-administration-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with Dalteparin"
Description: "No Therapeutic Anticoagulation Treatment with Dalteparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-dalteparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationDalteparinPlan"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Dalteparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB04 "Dalteparin"
  * coding[sct] = $sct#372563008 "Dalteparin (substance)"
* dosage
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "d"
  * doseAndRate
    * doseRange
      * low = 5000 $ucum#[iU] "IU"
    * rateQuantity = 1 '/d' "/d"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWEnoxaparin
InstanceOf: drug-administration-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with Enoxaparin"
Description: "No Therapeutic Anticoagulation Treatment with Enoxaparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-enoxaparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanEnoxaparin"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Enoxaparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB05 "Enoxaparin"
  * coding[sct] = $sct#372562003 "Enoxaparin (substance)"
* dosage
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "d"
  * doseAndRate
    * doseRange
      * low = 40 'mg'
    * rateQuantity = 1 '/d' "/d"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWNadroparinLowWeight
InstanceOf: drug-administration-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with Nadroparin Low Weight"
Description: "No Therapeutic Anticoagulation Treatment with Nadroparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-nadroparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanNadroparinLowWeight"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Nadroparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB06 "Nadroparin"
  * coding[sct] = $sct#699946002 "Nadroparin (substance)"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.high = 70 'kg' "kg"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "d"
  * doseAndRate
    * doseRange
      * low = 3800 $ucum#[iU] "IU"
    * rateQuantity = 1 '/d' "/d"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWNadroparinHighWeight
InstanceOf: drug-administration-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with Nadroparin High Weight"
Description: "No Therapeutic Anticoagulation Treatment with Nadroparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-nadroparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanNadroparinHighWeight"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Nadroparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB06 "Nadroparin"
  * coding[sct] = $sct#699946002 "Nadroparin (substance)"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.low = 70 'kg' "kg"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "d"
  * doseAndRate
    * doseRange
      * low = 5700 $ucum#[iU] "IU"
    * rateQuantity = 1 '/d' "/d"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWCertoparin
InstanceOf: drug-administration-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with Certoparin"
Description: "No Therapeutic Anticoagulation Treatment with Certoparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-certoparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanCertoparin"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Certoparin for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB13 "Certoparin"
  * coding[sct] = $sct#395961003 "Certoparin (substance)"
* dosage
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "d"
  * doseAndRate
    * doseRange
      * low = 3000 $ucum#[iU] "IU"
    * rateQuantity = 1 '/d' "/d"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWUFH
InstanceOf: drug-administration-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with UFH"
Description: "No Therapeutic Anticoagulation Treatment with UFH for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-UFH-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanUFH"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with UFH for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#C05BA03 "Heparin"
  * coding[sct] = $sct#372877000 "Heparin (substance)"
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationWArgatra
InstanceOf: drug-administration-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with Argatroban"
Description: "No Therapeutic Anticoagulation Treatment with Argatroban for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(intervention-activity/no-therapeutic-anticoagulant-argatroban-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "NoTherapeuticAnticoagulationPlanArgatroban"
* status = #active
* description = "No Therapeutic Anticoagulation Treatment with Argatroban for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AE03 "Argatroban"
  * coding[sct] = $sct#116508003 "Argatroban (substance)"
* doNotPerform = true
