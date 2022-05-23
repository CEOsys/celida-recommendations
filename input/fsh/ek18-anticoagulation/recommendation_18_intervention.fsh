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
  * definitionCanonical = Canonical(NoTherapeuticAnticoagulationPlanSpecificIndication)
  * selectionBehavior = #exactly-one
/*************************/
/* Intervention Activity */
/*************************/


Instance: NoTherapeuticAnticoagulationPlanSpecificIndication
InstanceOf: recommendation-action
Usage: #example
Title: "No Therapeutic Anticoagulation Treatment"
Description: "No Therapeutic Anticoagulation Treatment for non-intensive care hospitalised COVID-19 patients patients with no specific indications (i.e., pulmonary embolism)"
* name = "NoTherapeuticAnticoagulationPlan"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/no-therapeutic-anticoagulant-administration"
* status = #active
* code = $sct#182764009 "Anticoagulant therapy (procedure)"
* productCodeableConcept.coding = $sct#373294004 "Low molecular weight heparin (substance)" 
* productCodeableConcept.coding = $sct#372877000 "Heparin (substance)" 
* doNotPerform = true