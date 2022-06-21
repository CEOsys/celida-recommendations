/************************/
/* Intervention Plans */
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
* action[drugAdministration][+]
  * code = $sct#432102000 "Administration of substance (procedure)"
  * definitionCanonical = Canonical(AntithromboticProphylaxisLWMHSubcutaneous)
  * selectionBehavior = #exactly-one
  

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
* action[drugAdministration][+]
  * code = $sct#432102000 "Administration of substance (procedure)"
  * definitionCanonical = Canonical(AntithromboticProphylaxisFondaparinuxSubcutaneous)
  * selectionBehavior = #exactly-one
//* relatedArtifact[recommendationJustification].resourceReference = Reference(AntithromboticProphylaxisRecommendationJustification)
//* relatedArtifact[recommendationCitation].resourceReference = Reference(AntithromboticProphylaxisRecommendationCitation)
//* relatedArtifact[guidelineCitation].resourceReference = Reference(COVID19IntensiveCareTreatmentGuidelineCitation)


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
* action[drugAdministration][+]
  * code = $sct#432102000 "Administration of substance (procedure)"
  * definitionCanonical = Canonical(NoAntithromboticProphylaxis)
  * selectionBehavior = #exactly-one
//* relatedArtifact[recommendationJustification].resourceReference = Reference(NoAntithromboticProphylaxisRecommendationJustification)
//* relatedArtifact[recommendationCitation].resourceReference = Reference(NoAntithromboticProphylaxisRecommendationCitation)
//* relatedArtifact[guidelineCitation].resourceReference = Reference(COVID19IntensiveCareTreatmentGuidelineCitation)



/**********************/
/* Recommended Action */
/**********************/
Instance: AntithromboticProphylaxisLWMHSubcutaneous
InstanceOf: drug-administration-action
Usage: #example
Title: "Antithrombotic prophylaxis with LWMH"
Description: "Antithrombotic prophylaxis with LWMH in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* name = "ProphylacticLWMHApplicationActivity"
* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/TODO_activity_01"
* status = #active
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept 
  * coding[atcde] = $atcde#C05BA03 "Heparin"
  * coding[sct] = $sct#372877000 "Heparin (substance)"
//will need the dose for this one as it is supposed to be low dose heparin!

Instance: AntithromboticProphylaxisFondaparinuxSubcutaneous
InstanceOf: drug-administration-action
Usage: #example
Title: "Antithrombotic prophylaxis with Fondaparinux"
Description: "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients (when contraindications for LWMH exist)"
* name = "ProphylacticFondaparinuxApplicationActivity"
* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/antithrombotic_prophylaxis_fondaparinux"
//TODO: unique, actual URL!
* status = #active
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept 
  * coding[atcde] = $atcde#B01AX05 "Fondaparinux"
  * coding[sct] = $sct#708189008 "Fondaparinux (substance)"
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
InstanceOf: drug-administration-action
Usage: #example
Title: "No Antithrombotic prophylaxis in patients with thrombosis"
Description: "No antithrombotic prophylaxis in patients with thrombosis"
* name = "NoAntithromboticProphylaxisApplicationActivity"
* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/No_antithrombotic_prophylaxis"
// TODO: actual, unique URL
* status = #active
* code = $sct#432102000 "Administration of substance (procedure)"
* doNotPerform = true

