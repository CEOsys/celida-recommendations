/************************/
/* Recommendation Plans */
/************************/
Instance: AntithrombLWMHProphInHospitalisedCOVID19PatientsRecommPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "Antithrombotic prophylaxis with LWMH"
Description: "Antithrombotic prophylaxis with LWMH in hospitalised COVID-19 patients"
* name = "AntithromboticProphylaxisWithLWMH"
* title = "Antithrombotic prophylaxis with LWMH in hospitalised COVID-19 patients"
* version = "0.1"
* date = "2022-04-27"
* status = #active
* description = "Antithrombotic prophylaxis with LWMH in hospitalised COVID-19 patients"
* subjectCanonical = Canonical(PopHospitalisedCOVID19PatientsWOVenousThrombosisWOCI)
// correct?
* action[+]
  * definitionCanonical = Canonical(AntithromboticProphylaxisLWMHSubcutaneous)
  * selectionBehavior = #exactly-one
// * action[+]
//   * definitionCanonical = Canonical(AntithromboticProphylaxisFondaparinuxSubcutaneous)
//   * selectionBehavior = #exactly-one
* relatedArtifact[recommendationJustification].resourceReference = Reference(AntithromboticProphylaxisRecommendationJustification)
* relatedArtifact[recommendationCitation].resourceReference = Reference(AntithromboticProphylaxisRecommendationCitation)
* relatedArtifact[guidelineCitation].resourceReference = Reference(COVID19IntensiveCareTreatmentGuidelineCitation)

Instance: AntithrombFondapProphInHospitalisedCOVID19PatientsRecommPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "Antithrombotic prophylaxis with Fondaparinux"
Description: "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients"
* name = "AntithromboticProphylaxisWithFondaparinux"
* title = "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients"
* version = "0.1"
* date = "2022-04-27"
* status = #active
* description = "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients"
* subjectCanonical = Canonical(PopHospitalisedCOVID19PatientsWOVenousThrombosisWITHCI)
// correct?
* action[+]
  * definitionCanonical = Canonical(AntithromboticProphylaxisFondaparinuxSubcutaneous)
  * selectionBehavior = #exactly-one
* relatedArtifact[recommendationJustification].resourceReference = Reference(AntithromboticProphylaxisRecommendationJustification)
* relatedArtifact[recommendationCitation].resourceReference = Reference(AntithromboticProphylaxisRecommendationCitation)
* relatedArtifact[guidelineCitation].resourceReference = Reference(COVID19IntensiveCareTreatmentGuidelineCitation)


Instance: NoAntithrombProphInHospitalisedCOVID19PatientsRecommPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "No antithrombotic prophylaxis in patients with thrombosis"
Description: "No antithrombotic prophylaxis in patients with thrombosis"
* name = "NoAntithromboticProphylaxis"
* title = "No antithrombotic prophylaxis in patients with thrombosis"
* version = "0.1"
* date = "2022-04-27"
* status = #active
* description = "No antithrombotic prophylaxis in patients with thrombosis"
* subjectCanonical = Canonical(PopHospitalisedCOVID19PatientsWITHThrombosis)
// correct?
* action[+]
  * definitionCanonical = Canonical(NoAntithromboticProphylaxis)
  * selectionBehavior = #exactly-one
* relatedArtifact[recommendationJustification].resourceReference = Reference(NoAntithromboticProphylaxisRecommendationJustification)
* relatedArtifact[recommendationCitation].resourceReference = Reference(NoAntithromboticProphylaxisRecommendationCitation)
* relatedArtifact[guidelineCitation].resourceReference = Reference(COVID19IntensiveCareTreatmentGuidelineCitation)

// Instance: AntithromboticProphylaxisRecommendationCitation
// InstanceOf: recommendation-citation
// Usage: #example
// Title: "Antithrombotic prophylaxis in hospitalised COVID-19 patients"
// Description: "Citation of Recommendation for antithrombotic prophylaxis in COVID-19 hospitalised patients treatment guideline"
// * name = "AntithromboticProphylaxisRecommendationCitation"
// * status = #active
// * citedArtifact
//   * identifier.value = "https://www.awmf.org/leitlinien/detail/ll/113-001LG.html"
// * description = "unclear"  
//     // can I do this? 
// * version = "v7.0"
// * currentState = $cs-cited-artifact-status-type#active "Active"

/**********************/
/* Recommended Action */
/**********************/
Instance: AntithromboticProphylaxisLWMHSubcutaneous
InstanceOf: recommendation-action
Usage: #example
Title: "Antithrombotic prophylaxis with LWMH"
Description: "Antithrombotic prophylaxis with LWMH in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* name = "ProphylacticLWMHApplicationActivity"
* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/TODO_activity_01"
// URL is needed (!!!) because canonical Reference!
* status = #active
// * code = $sct#182832007 "Procedure related to management of drug administration (procedure)"
// possible:
* code = $sct#392129008 "Administration of prophylactic low dose heparin (procedure)"
// redundant to use snomed code above, when I am using code below?
// --> "code" is NEEDED! required field
* productCodeableConcept = $sct#392129008 "Administration of prophylactic low dose heparin (procedure)"
// productCodeableConcept always is used to reference medical products (substances...)
// already a finished snomed concept, so no detailed information about drug administration necessary?! 
// CAVE: this snomed concept includes ALL kinds of
// low dose heparins, i.e., also UFH (unfractioned heparine, intravenously)

Instance: AntithromboticProphylaxisFondaparinuxSubcutaneous
InstanceOf: recommendation-action
Usage: #example
Title: "Antithrombotic prophylaxis with Fondaparinux"
Description: "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients (when contraindications for LWMH exist)"
* name = "ProphylacticFondaparinuxApplicationActivity"
* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/antithrombotic_prophylaxis_fondaparinux"
//TODO: unique, actual URL!
* status = #active
* code = $sct#182832007 "Procedure related to management of drug administration (procedure)"
* productCodeableConcept = $sct#779321003 "parenteral Fondaparinux (substance)"
* dosage
  * route = $sct#386362006 "Subcutaneous route"
  * timing
    * code = #QD
    // MUST BE in singular quotation marks '<xyz>'
    // "once a day" in abbreviated form, see here: http://build.fhir.org/valueset-timing-abbreviation.html
  * doseAndRate
    * doseQuantity = 2.5 'mg' "mg"
    * rateQuantity = 1 '/d' "/d"
    // maybe redundant with "QD"!


Instance: NoAntithromboticProphylaxis
InstanceOf: recommendation-action
Usage: #example
Title: "No Antithrombotic prophylaxis in patients with thrombosis"
Description: "No antithrombotic prophylaxis in patients with thrombosis"
* name = "NoAntithromboticProphylaxisApplicationActivity"
* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/No_antithrombotic_prophylaxis"
// TODO: actual, unique URL
* status = #active
* code = $sct#421728001 "Administration of prophylactic anticoagulant (procedure)"
* doNotPerform = true

