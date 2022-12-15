/************************/
/* Recommendation Plans */
/************************/
//Therapeutic anticoagulation treatment plan (without considering renal function impairment (eGFR >= 30ml/min))
Instance: TherapeuticAnticoagulationNonICUHighRiskCOVID19PatientsPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "Therapeutic Anticoagulation Plan (hospitalised, non-intensive care, COVID-19 patients with no renal function impairment (eGFR >= 30ml/min))"
Description: "In hospitalized, non-intensive care patients with COVID-19 and increased risk (e.g., D-dimers ≥ 2 mg/l), therapeutic anticoagulation can be considered if the risk of bleeding is low. Anticoagulation, preferentially with NMH or UFH, can be considered."
* insert canonical-url(covid19-inpatient-therapy, intervention-plan/therapeutic-anticoagulation)
* insert publisher-experimental-version(7.0)
* name = "Therapeutic_Anticoagulation_No_Renal_Function_Impairment"
* title = "Therapeutic Anticoagulation Plan (hospitalised, non-intensive care, COVID-19 patients"
* date = "2022-02"
* status = #active
* description = "In hospitalized, non-intensive care patients with COVID-19 and increased risk (e.g., D-dimers ≥ 2 mg/l), therapeutic anticoagulation can be considered if the risk of bleeding is low. Anticoagulation, preferentially with NMH or UFH, can be considered."
* subjectCanonical = Canonical(PopHospitalisedNonICUCOVID19PatientsWOThrombosisWITHHighRisk)
* extension[partOf].valueCanonical = Canonical(RecCollectionTherapeuticAnticoagNonICUHighRiskCOVID19Patients)
* goal[laboratoryValue][+]
  * id = "aPTT-goal"
  * description.text = "aPTT value should be > 50 sec."
  * category = $sct#410394004 "Lab findings surveillance (regime/therapy)"
  * target
    * measure = $loinc#3173-2 "aPTT in Blood by Coagulation assay"
    * detailRange
      * low = 50 's' "sec"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationUFH)
  * selectionBehavior = #one-or-more
  * goalId = "aPTT-goal"
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationNMHDalteparin)
  * selectionBehavior = #one-or-more
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationNMHEnoxaparin)
  * selectionBehavior = #one-or-more
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationNMHNadroparinLowWeight)
  * selectionBehavior = #one-or-more
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationNMHNadroparinHighWeight)
  * selectionBehavior = #one-or-more
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationNMHCertoparin)
  * selectionBehavior = #one-or-more
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationFondaparinux)
  * selectionBehavior = #one-or-more
  * code = $sct#432102000 "Administration of substance (procedure)"
  * precheckBehavior = #no
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationWArgatra)
  * goalId = "aPTT-goal"
  * selectionBehavior = #one-or-more
  * code = $sct#432102000 "Administration of substance (procedure)"

/***********************/
/* Recommended Actions */
/***********************/
Instance: TherapeuticAnticoagulationUFH
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment UFH"
Description: "Therapeutic Anticoagulation Treatment (UFH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/therapeutic-anticoagulant-UFH-administration)
* insert publisher-experimental-version(0.1)
* name = "TherapeuticAnticoagulationPlanUFH"
* status = #active
* description = "Therapeutic Anticoagulation Treatment (UFH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#372877000 "Heparin (substance)"
  * coding[atcde] = $atcde#B01AB01 "Heparin"

Instance: TherapeuticAnticoagulationNMHDalteparin
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment with Dalteparin"
Description: "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l) with Dalteparin"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/therapeutic-anticoagulant-dalteparin-administration)
* insert publisher-experimental-version(0.1)
* name = "TherapeuticAnticoagulationDalteparinPlan"
* status = #active
* description = "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l) with Dalteparin"
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
      * low = 5000 '[iU]' "IU"

Instance: TherapeuticAnticoagulationNMHEnoxaparin
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment with Enoxaparin"
Description: "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l) with Enoxaparin"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/therapeutic-anticoagulant-enoxaparin-administration)
* insert publisher-experimental-version(0.1)
* name = "TherapeuticAnticoagulationPlanEnoxaparin"
* status = #active
* description = "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l) with Enoxaparin"
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
      * low = 40 'mg'

Instance: TherapeuticAnticoagulationNMHNadroparinLowWeight
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment with Nadroparin Low Weight"
Description: "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients (low weight) with high risk (D-Dimer >= 2mg/l) with Nadroparin"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/therapeutic-anticoagulant-nadroparin-administration-low-weight)
* insert publisher-experimental-version(0.1)
* name = "TherapeuticAnticoagulationPlanNadroparinLowWeight"
* status = #active
* description = "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients (low weight) with high risk (D-Dimer >= 2mg/l) with Nadroparin"
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
      * low = 3800 '[iU]' "IU"

Instance: TherapeuticAnticoagulationNMHNadroparinHighWeight
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment with Nadroparin High Weight"
Description: "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients (high weight) with high risk (D-Dimer >= 2mg/l) with Nadroparin"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/therapeutic-anticoagulant-nadroparin-administration-high-weight)
* insert publisher-experimental-version(0.1)
* name = "TherapeuticAnticoagulationPlanNadroparinHighWeight"
* status = #active
* description = "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients (high weight) with high risk (D-Dimer >= 2mg/l) with Nadroparin"
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
      * low = 5700 '[iU]' "IU"

Instance: TherapeuticAnticoagulationNMHCertoparin
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment with Certoparin"
Description: "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l) with Certoparin"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/therapeutic-anticoagulant-certoparin-administration)
* insert publisher-experimental-version(0.1)
* name = "TherapeuticAnticoagulationPlanCertoparin"
* status = #active
* description = "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l) with Certoparin"
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
      * low = 3000 '[iU]' "IU"

Instance: TherapeuticAnticoagulationFondaparinux
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment with Fondaparinux"
Description: "Therapeutic Anticoagulation Treatment with Fondaparinux for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/therapeutic-anticoagulant-fondaparinux-administration)
* insert publisher-experimental-version(0.1)
* name = "TherapeuticAnticoagulationPlanFondaparinux"
* status = #active
* description = "Therapeutic Anticoagulation Treatment with Fondaparinux for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#708189008 "Fondaparinux (substance)"
  * coding[atcde] = $atcde#B01AX05 "Fondaparinux (substance)"
* dosage
  * timing
    * repeat
      * frequency = 2
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 2.5 'mg' "mg"

Instance: TherapeuticAnticoagulationWArgatra
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment with Argatroban"
Description: "Therapeutic Anticoagulation Treatment with Argatroban for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/therapeutic-anticoagulant-argatroban-administration)
* insert publisher-experimental-version(0.1)
* name = "TherapeuticAnticoagulationPlanArgatroban"
* status = #active
* description = "Therapeutic Anticoagulation Treatment with Argatroban for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[sct] = $sct#116508003 "Argatroban (substance)"
  * coding[atcde] = $atcde#B01AE03 "Argatroban"
