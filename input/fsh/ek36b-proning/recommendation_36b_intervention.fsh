/************************/
/* Recommendation Plans */
/************************/
// Abdominal positioning plan in case of ARDS and a PaO2/FiO2 < 150 mmHg
Instance: AbdominalPositioningARDSPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "Abdominal positioning plan in case of ARDS and a PaO2/FiO2 < 150 mmHg"
Description: "In ARDS and a PaO2/FiO2 < 150 mmHg, abdominal positioning should be consistently performed, with an abdominal positioning interval of at least 16 hours."
* insert publisher-experimental-version(7.0)
* insert canonical-url(covid19-inpatient-therapy, intervention-plan/abdominal-positioning-ARDS-plan)
* name = "Abdominal_Positioning_Plan_In_Case_Of_ARDS_And_PaO2/FiO2_<_150mmHg"
* title = "Abdominal positioning plan in case of ARDS and a PaO2/FiO2 < 150 mmHg"
* date = "2022-02"
* status = #active
* experimental = true
* description = "In ARDS and a PaO2/FiO2 < 150 mmHg, abdominal positioning should be consistently performed, with an abdominal positioning interval of at least 16 hours. "
* subjectCanonical = Canonical(PopVentilatedCOVID19patientsWithARDSWithOxygenationFailure)
* extension[partOf].valueCanonical = Canonical(RecommendationCollectionAbdominalPositioningARDS)
* action[bodyPositioning][+]
  * definitionCanonical = Canonical(PronePositioning)
  * code = $sct#229824005 "Positioning patient (procedure)"

/**********************/
/* Recommended Action */
/**********************/
Instance: PronePositioning
InstanceOf: body-positioning-action
Usage: #example
Title: "Abdominal Positioning"
Description: "In ARDS and a PaO2/FiO2 < 150 mmHg, abdominal positioning should be consistently performed, with an abdominal positioning interval of at least 16 hours."
* name = "PronePositioning"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/body-positioning-action/abdominal-positioning-ARDS)
* insert publisher-experimental-version(7.0)
* description = "In ARDS and a PaO2/FiO2 < 150 mmHg, abdominal positioning should be consistently performed, with an abdominal positioning interval of at least 16 hours."
* status = #active
* code = $sct#431182000 "Placing subject in prone position (procedure)"
* timingRange
  * low = 16 'h' "hour"
