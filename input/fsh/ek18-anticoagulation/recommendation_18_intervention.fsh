/*********************/
/* Intervention Plan */
/*********************/
Instance: TherapeuticAnticoagulationICUHospitalisedCOVID19NoIndicationPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "Anticoagulation Plan for hospitalized intensive-care COVID-19 patients with no specific indication"
Description: "In intensive care patients without a specific indication (e.g. pulmonary embolism), therapeutic anticoagulation should not be given."
* name = "Anticoagulation_Plan_No_Specific_Indication"
* title = "Anticoagulation Plan for hospitalized intensive-care COVID-19 patients with no specific indication"
* version = "7.0" 
* date = "2022-02" 
* status = #active
* description = "In intensive care patients without a specific indication (e.g. pulmonary embolism), therapeutic anticoagulation should not be given."
* subjectCanonical = Canonical(PopHospitalisedICUCOVID19Patients)
* action[+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationPlanUFH)
  * selectionBehavior = #all
* action[+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationLMWH)
  * selectionBehavior = #all
* action[+]
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationFondaparinux)
  * selectionBehavior = #all


/*************************/
/* Intervention Activity */
/*************************/


Instance: NoTherapeuticAnticoagulationPlanUFH
InstanceOf: recommendation-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with UFH"
Description: "No Therapeutic Anticoagulation Treatment with UFH for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* name = "NoTherapeuticAnticoagulationPlan"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/no-therapeutic-anticoagulant-ufh-administration"
* status = #active
* code = $sct#392129008 "Administration of prophylactic low dose heparin (procedure)"
* productCodeableConcept.coding = $sct#372877000 "Heparin (substance)" 
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationLMWH
InstanceOf: recommendation-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with LMWH"
Description: "No Therapeutic Anticoagulation Treatment with LMWH for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* name = "NoTherapeuticAnticoagulationPlan"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/no-therapeutic-anticoagulant-lmwh-administration"
* status = #active
* code = $sct#443464003 "Low molecular weight heparin therapy (procedure)"
* productCodeableConcept.coding = $sct#373294004 "Low molecular weight heparin (substance)" 
* doNotPerform = true

Instance: NoTherapeuticAnticoagulationFondaparinux
InstanceOf: recommendation-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment with Fondaparinux"
Description: "No Therapeutic Anticoagulation Treatment with Fondaparinux for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* name = "NoTherapeuticAnticoagulationPlan"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/no-therapeutic-anticoagulant-fondaparinux-administration"
* status = #active
* code = $sct#421728001 "Administration of prophylactic anticoagulant (procedure)"
* productCodeableConcept.coding = $sct#708189008 "Fondaparinux (substance)" 
* doNotPerform = true
