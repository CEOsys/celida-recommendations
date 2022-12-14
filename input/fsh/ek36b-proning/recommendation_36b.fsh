/**********************************/
/* Recommendation Collection Plan */
/**********************************/
Instance: RecommendationCollectionAbdominalPositioningARDS
InstanceOf: recommendation
Usage: #example
Title: "Recommendation Collection: Patients with ARDS and a PaO2/FiO2 < 150 mmHg"
Description: "Recommendation Collection for Patients with ARDS and a PaO2/FiO2 < 150 mmHg"
* name = "RecommendationCollectionEk36b"
* title = "Abdominal Positioning Intervention for Population: Patients with ARDS and a PaO2/FiO2 < 150 mmHg"
* version = "1.0"
* date = "2022-02-14"
* status = #active
* description = "In ARDS and a PaO2/FiO2 < 150 mmHg, abdominal positioning should be consistently performed, with an abdominal positioning interval of at least 16 hours."
* insert canonical-url(recommendation/therapeutic-anticoagulation) //To-DO: change URL
* experimental = true
* publisher = "Deutsche Gesellschaft für Internistische Intensivmedizin und Notfallmedizin e.V. (DGIIN)"
* action[+]
  * title = "Abdominal_Positioning_Plan_In_Case_Of_ARDS_And_PaO2/FiO2_<_150mmHg"
  * code = $cs-common-process#guideline-based-care
  * description = "In ARDS and a PaO2/FiO2 < 150 mmHg, abdominal positioning should be consistently performed, with an abdominal positioning interval of at least 16 hours."
  * definitionCanonical = Canonical(AbdominalPositioningARDSPlan)
  * selectionBehavior = #exactly-one
