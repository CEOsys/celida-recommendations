/************************/
/* Recommendation Plans */
/************************/
//Therapeutic anticoagulation treatment plan (without considering renal function impairment (eGFR >= 30ml/min))
Instance: TherapeuticAnticoagulationNonICUHighRiskCOVID19PatientsPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "Therapeutic Anticoagulation Plan (hospitalised, non-intensive care, COVID-19 patients with no renal function impairment (eGFR >= 30ml/min))"
Description: "In hospitalized, non-intensive care patients with COVID-19 and increased risk (e.g., D-dimers ≥ 2 mg/l), therapeutic anticoagulation can be considered if the risk of bleeding is low. Anticoagulation, preferentially with NMH or UFH, can be considered."
* insert canonical-url(change-me) // TODO: add proper URL
* insert publisher-experimental-version(7.0)
* name = "Therapeutic_Anticoagulation_No_Renal_Function_Impairment"
* title = "Therapeutic Anticoagulation Plan (hospitalised, non-intensive care, COVID-19 patients)"
* date = "2022-02"
* status = #active
* description = "In hospitalized, non-intensive care patients with COVID-19 and increased risk (e.g., D-dimers ≥ 2 mg/l), therapeutic anticoagulation can be considered if the risk of bleeding is low. Anticoagulation, preferentially with NMH or UFH, can be considered."
* subjectCanonical = Canonical(PopHospitalisedNonICUCOVID19PatientsWOThrombosisWITHHighRisk)
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationNMH)
  * selectionBehavior = #exactly-one
  * code.coding = $sct#432102000 "Administration of substance (procedure)"
* goal[laboratoryValue][+]
  * id = "aPTT-goal"
  * description.text = "aPTT value should be > 50 sec."
  * category.coding = $sct#118246004 "Laboratory test finding (navigational concept)"
  * target
    * measure = $loinc#50754-1 "aPTT in Pooled Platelet poor plasma by Coagulation assay"
    * detailRange
      * low = 50 's' "sec"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationUFH)
  * selectionBehavior = #exactly-one
  * goalId = "aPTT-goal"
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationNMHDalteparin)
  * selectionBehavior = #exactly-one
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationNMHEnoxaparin)
  * selectionBehavior = #exactly-one
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationNMHNadroparinLowWeight)
  * selectionBehavior = #exactly-one
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationNMHNadroparinHighWeight)
  * selectionBehavior = #exactly-one
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationNMHCertoparin)
  * selectionBehavior = #exactly-one
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationFondaparinux)
  * selectionBehavior = #exactly-one
  * code = $sct#432102000 "Administration of substance (procedure)"
  * precheckBehavior = #no

/**********************/
/* Recommended Action */
/**********************/
Instance: TherapeuticAnticoagulationUFH
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment UFH"
Description: "Therapeutic Anticoagulation Treatment (UFH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l)"
* insert canonical-url(intervention-activity/therapeutic-anticoagulant-administration-UFH) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "TherapeuticAnticoagulationPlanUFH"
* status = #active
* description = "Therapeutic Anticoagulation Treatment (UFH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB01 "Heparin"
  * coding[sct] = $sct#372877000 "Heparin (substance)"

Instance: TherapeuticAnticoagulationNMHDalteparin
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment with Dalteparin"
Description: "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l) with Dalteparin"
* insert canonical-url(intervention-activity/therapeutic-anticoagulant-dalteparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "TherapeuticAnticoagulationDalteparinPlan"
* status = #active
* description = "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l) with Dalteparin"
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
      * low = 5000 '[iU]' "IU"
    * rateQuantity = 1 '/d' "/d"

Instance: TherapeuticAnticoagulationNMHEnoxaparin
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment with Enoxaparin"
Description: "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l) with Enoxaparin"
* insert canonical-url(intervention-activity/therapeutic-anticoagulant-enoxaparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "TherapeuticAnticoagulationPlanEnoxaparin"
* status = #active
* description = "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l) with Enoxaparin"
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

Instance: TherapeuticAnticoagulationNMHNadroparinLowWeight
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment with Nadroparin Low Weight"
Description: "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients (low weight) with high risk (D-Dimer >= 2mg/l) with Nadroparin"
* insert canonical-url(intervention-activity/therapeutic-anticoagulant-nadroparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "TherapeuticAnticoagulationPlanNadroparinLowWeight"
* status = #active
* description = "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients (low weight) with high risk (D-Dimer >= 2mg/l) with Nadroparin"
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
      * low = 3800 '[iU]' "IU"
    * rateQuantity = 1 '/d' "/d"

Instance: TherapeuticAnticoagulationNMHNadroparinHighWeight
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment with Nadroparin High Weight"
Description: "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients (high weight) with high risk (D-Dimer >= 2mg/l) with Nadroparin"
* insert canonical-url(intervention-activity/therapeutic-anticoagulant-nadroparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "TherapeuticAnticoagulationPlanNadroparinHighWeight"
* status = #active
* description = "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients (high weight) with high risk (D-Dimer >= 2mg/l) with Nadroparin"
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
      * low = 5700 '[iU]' "IU"
    * rateQuantity = 1 '/d' "/d"

Instance: TherapeuticAnticoagulationNMHCertoparin
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment with Certoparin"
Description: "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l) with Certoparin"
* insert canonical-url(intervention-activity/therapeutic-anticoagulant-certoparin-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "TherapeuticAnticoagulationPlanCertoparin"
* status = #active
* description = "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l) with Certoparin"
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
      * low = 3000 '[iU]' "IU"
    * rateQuantity = 1 '/d' "/d"

Instance: TherapeuticAnticoagulationNMH
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment NMH"
Description: "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l)"
* insert canonical-url(intervention-activity/therapeutic-anticoagulant-administration-NMH) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "TherapeuticAnticoagulationPlanNMH"
* status = #active
* description = "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l)"
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

Instance: TherapeuticAnticoagulationFondaparinux
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment with Fondaparinux"
Description: "Therapeutic Anticoagulation Treatment with Fondaparinux for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(intervention-activity/therapeutic-anticoagulant--fondaparinux-administration) // TODO: check url
* insert publisher-experimental-version(0.1)
* name = "TherapeuticAnticoagulationPlanFondaparinux"
* status = #active
* description = "Therapeutic Anticoagulation Treatment with Fondaparinux for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AX05 "Fondaparinux (substance)"
  * coding[sct] = $sct#708189008 "Fondaparinux (substance)"
* dosage
  * timing
    * repeat
      * frequency = 2
      * period = 1
      * periodUnit = $ucum#d "d"
  * doseAndRate
    * doseQuantity = 2.5 'mg' "mg"
    * rateQuantity = 2 '/d' "/d"
