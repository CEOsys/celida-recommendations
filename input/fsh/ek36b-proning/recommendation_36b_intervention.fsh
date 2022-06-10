/************************/
/* Recommendation Plans */
/************************/
//Abdominal positioning plan in case of ARDS and a PaO2/FiO2 < 150 mmHg
Instance: AbdominalPositioningARDSPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "Abdominal positioning plan in case of ARDS and a PaO2/FiO2 < 150 mmHg,"
Description: "In ARDS and a PaO2/FiO2 < 150 mmHg, abdominal positioning should be consistently performed, with an abdominal positioning interval of at least 16 hours. "
* name = "Abdominal_Positioning_Plan_In_Case_Of_ARDS_And_PaO2/FiO2_<_150mmHg,"
* title = "Abdominal positioning plan in case of ARDS and a PaO2/FiO2 < 150 mmHg"
* version = "7.0"
* date = "2022-02"
* status = #active
* description = "In ARDS and a PaO2/FiO2 < 150 mmHg, abdominal positioning should be consistently performed, with an abdominal positioning interval of at least 16 hours. "
* subjectReference = Reference(PopGroup) //Add reference when population is done: for patients with the above conditions
* action[bodyPositioning][+]
  * definitionCanonical = Canonical(AbdominalPositioningARDS)
  * code = $sct#229824005 "Positioning patient (procedure)"
  * goalId = "Proning-duration-goal"
  * selectionBehavior = #exactly-one

  

/**********************/
/* Recommended Action */
/**********************/


Instance: AbdominalPositioningARDS
InstanceOf: recommendation-action
Usage: #example
Title: "Abdominal Positioning in case of ARDS"
Description: "In ARDS and a PaO2/FiO2 < 150 mmHg, abdominal positioning should be consistently performed, with an abdominal positioning interval of at least 16 hours."
* name = "AbdominalPositioningARDS"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/abdominal-positioning-ARDS"
* status = #active
* code = $sct#431182000 "Placing subject in prone position (procedure)"
* timingRange 
  * low = 57600 's' 
