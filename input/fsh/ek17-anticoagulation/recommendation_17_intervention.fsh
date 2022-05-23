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
* action[+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationNMH)
  * selectionBehavior = #exactly-one
  * precheckBehavior = #yes
* action[+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationUFH)
  * selectionBehavior = #exactly-one
  * precheckBehavior = #yes
* action[+]
  * definitionCanonical = Canonical(TherapeuticAnticoagulationFondaparinux)
  * selectionBehavior = #exactly-one
  * precheckBehavior = #no



/**********************/
/* Recommended Action */
/**********************/

Instance: TherapeuticAnticoagulationUFH
InstanceOf: recommendation-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment UFH"
Description: "Therapeutic Anticoagulation Treatment (UFH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l)"
* name = "TherapeuticAnticoagulationPlanUFH"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/therapeutic-anticoagulant-administration-UFH"
* status = #active
* code = $sct#392129008 "Administration of prophylactic low dose heparin (procedure)"
* productCodeableConcept.coding = $sct#372877000 "Heparin (substance)" 

Instance: TherapeuticAnticoagulationNMH
InstanceOf: recommendation-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment NMH"
Description: "Therapeutic Anticoagulation Treatment (NMH) for non-intensive care hospitalised COVID-19 patients patients with high risk (D-Dimer >= 2mg/l)"
* name = "TherapeuticAnticoagulationPlanNMH"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/therapeutic-anticoagulant-administration-NMH"
* status = #active
* code = $sct#443464003 "Low molecular weight heparin therapy (procedure)"
* productCodeableConcept.coding = $sct#373294004 "Low molecular weight heparin (substance)"

Instance: TherapeuticAnticoagulationFondaparinux
InstanceOf: recommendation-action
Usage: #example
Title: "Therapeutic Anticoagulation Treatment with Fondaparinux"
Description: "Therapeutic Anticoagulation Treatment with Fondaparinux for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* name = "TherapeuticAnticoagulationPlanFondaparinux"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/therapeutic-anticoagulant--fondaparinux-administration"
* status = #active
* code = $sct#421728001 "Administration of prophylactic anticoagulant (procedure)"
* productCodeableConcept.coding = $sct#708189008 "Fondaparinux (substance)" 





