/************************/
/* Recommendation Plans */
/************************/
//Therapeutic anticoagulation treatment plan (without considering renal function impairment (eGFR >= 30ml/min))
Instance: TherapeuticAnticoagulationNonICUHighRiskCOVID19PatientsPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "Therapeutic Anticoagulation Plan (hospitalised, non-intensive care, COVID-19 patients with no renal function impairment (eGFR >= 30ml/min))"
Description: "In hospitalized, non-intensive care patients with COVID-19 and increased risk (e.g., D-dimers ≥ 2 mg/l), therapeutic anticoagulation can be considered if the risk of bleeding is low. Anticoagulation, preferentially with NMH or UFH, can be considered."
* name = "Therapeutic_Anticoagulation_No_Renal_Function_Impairment"
* title = "Therapeutic Anticoagulation Plan (hospitalised, non-intensive care, COVID-19 patients)"
* version = "7.0"
* date = "2022-02"
* status = #active
* description = "In hospitalized, non-intensive care patients with COVID-19 and increased risk (e.g., D-dimers ≥ 2 mg/l), therapeutic anticoagulation can be considered if the risk of bleeding is low. Anticoagulation, preferentially with NMH or UFH, can be considered."
* subjectCanonical = Canonical(PopHospitalisedNonICUCOVID19PatientsWOThrombosisWITHHighRisk) 
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationNMH)
  * selectionBehavior = #exactly-one
  * code.coding = $sct#432102000 "Administration of substance (procedure)"
  * precheckBehavior = #yes
* action[drugAdministration][+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationUFH)
  * selectionBehavior = #exactly-one
  * code = $sct#432102000 "Administration of substance (procedure)"
  * precheckBehavior = #yes
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
* name = "TherapeuticAnticoagulationPlanUFH"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/therapeutic-anticoagulant-administration-UFH"
* status = #active
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB01 "Heparin"
  * coding[sct] = $sct#372877000 "Heparin (substance)" 

Instance: TherapeuticAnticoagulationNMH
InstanceOf: drug-administration-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment NMH"
Description: "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l)"
* name = "TherapeuticAnticoagulationPlanNMH"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/therapeutic-anticoagulant-administration-NMH"
* status = #active
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB01 "Heparin"
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
* name = "TherapeuticAnticoagulationPlanFondaparinux"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/therapeutic-anticoagulant--fondaparinux-administration"
* status = #active
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AX05 "Fondaparinux (substance)" 
  * coding[sct]  = $sct#708189008 "Fondaparinux (substance)"




