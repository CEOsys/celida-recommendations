/*********************/
/* Intervention Plan */
/*********************/
Instance: VentilatedCOVID19patientsInterventionPlan-fio2-point3
InstanceOf: recommendation-plan
Usage: #definition
Title: "PEEP Intervention Plan for Population: Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.3"
Description: "PEEP Intervention Plan for Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.3 - 0.39"
* insert canonical-url(covid19-inpatient-therapy, intervention-plan/peep-fio2-point3)
* insert publisher-experimental-version(7.0)
* name = "PEEP_Intervention_Plan_FiO2_0.3"
* title = "PEEP Intervention plan for COVID-19 patients, inspiratory oxygen fraction currently 0.3 - 0.39"
* identifier.value = "PEEPPlanCOVIDPatients_OxygenFraction-0.3"
* date = "2022-02"
* status = #active
* description = "PEEP Intervention Plan for Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.3 - 0.39"
* subjectCanonical = Canonical(PopulationVentilatedCOVID19patients-fio2-point3)
* extension[partOf].valueCanonical = Canonical(RecommendationCollectionVentilatedCOVID19patients)
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "ventilator-management-fio2-0.3-goal"
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "ventilator-management-fio2-0.3-goal"
  * description.text = "Positive end-expiratory pressure (PEEP) minimal value setting for COVID-19 Patients, inspiratory oxygen fraction currently 0.3 - 0.39"
  * target
    * measure = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
    * detailRange
      * low = 5 'cm[H2O]' "cm[H2O]"

Instance: VentilatedCOVID19patientsInterventionPlan-fio2-point4
InstanceOf: recommendation-plan
Usage: #definition
Title: "PEEP Intervention Plan for Population: Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.3"
Description: "PEEP Intervention Plan for Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.3 - 0.39"
* insert canonical-url(covid19-inpatient-therapy, intervention-plan/peep-fio2-point4)
* insert publisher-experimental-version(7.0)
* name = "PEEP_Intervention_Plan_FiO2_0.4"
* title = "PEEP Intervention plan for COVID-19 patients, inspiratory oxygen fraction currently 0.4 - 0.49"
* identifier.value = "PEEPPlanCOVIDPatients_OxygenFraction-0.4"
* date = "2022-02"
* status = #active
* description = "PEEP Intervention Plan for Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.4 - 0.49"
* subjectCanonical = Canonical(PopulationVentilatedCOVID19patients-fio2-point4)
* extension[partOf].valueCanonical = Canonical(RecommendationCollectionVentilatedCOVID19patients)
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "ventilator-management-fio2-0.4-goal"
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "ventilator-management-fio2-0.4-goal"
  * description.text = "Positive end-expiratory pressure (PEEP) minimal value setting for COVID-19 Patients, inspiratory oxygen fraction currently 0.4 - 0.49"
  * target
    * measure = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
    * detailRange
      * low = 5 'cm[H2O]' "cm[H2O]"

Instance: VentilatedCOVID19patientsInterventionPlan-fio2-point5
InstanceOf: recommendation-plan
Usage: #definition
Title: "PEEP Intervention Plan for Population: Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.5"
Description: "PEEP Intervention Plan for Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.5 - 0.59"
* insert canonical-url(covid19-inpatient-therapy, intervention-plan/peep-fio2-point5)
* insert publisher-experimental-version(7.0)
* name = "PEEP_Intervention_Plan_FiO2_0.5"
* title = "PEEP Intervention plan for COVID-19 patients, inspiratory oxygen fraction currently 0.5 - 0.59"
* identifier.value = "PEEPPlanCOVIDPatients_OxygenFraction-0.5"
* date = "2022-02"
* status = #active
* description = "PEEP Intervention Plan for Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.5 - 0.59"
* subjectCanonical = Canonical(PopulationVentilatedCOVID19patients-fio2-point5)
* extension[partOf].valueCanonical = Canonical(RecommendationCollectionVentilatedCOVID19patients)
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "ventilator-management-fio2-0.5-goal"
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "ventilator-management-fio2-0.5-goal"
  * description.text = "Positive end-expiratory pressure (PEEP) minimal value setting for COVID-19 Patients, inspiratory oxygen fraction currently 0.5 - 0.59"
  * target
    * measure = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
    * detailRange
      * low = 8 'cm[H2O]' "cm[H2O]"

Instance: VentilatedCOVID19patientsInterventionPlan-fio2-point6
InstanceOf: recommendation-plan
Usage: #definition
Title: "PEEP Intervention Plan for Population: Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.6"
Description: "PEEP Intervention Plan for Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.6 - 0.69"
* insert canonical-url(covid19-inpatient-therapy, intervention-plan/peep-fio2-point6)
* insert publisher-experimental-version(7.0)
* name = "PEEP_Intervention_Plan_FiO2_0.6"
* title = "PEEP Intervention plan for COVID-19 patients, inspiratory oxygen fraction currently 0.6 - 0.69"
* identifier.value = "PEEPPlanCOVIDPatients_OxygenFraction-0.6"
* date = "2022-02"
* status = #active
* description = "PEEP Intervention Plan for Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.6 - 0.69"
* subjectCanonical = Canonical(PopulationVentilatedCOVID19patients-fio2-point6)
* extension[partOf].valueCanonical = Canonical(RecommendationCollectionVentilatedCOVID19patients)
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "ventilator-management-fio2-0.6-goal"
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "ventilator-management-fio2-0.6-goal"
  * description.text = "Positive end-expiratory pressure (PEEP) minimal value setting for COVID-19 Patients, inspiratory oxygen fraction currently 0.6 - 0.69"
  * target
    * measure = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
    * detailRange
      * low = 10 'cm[H2O]' "cm[H2O]"

Instance: VentilatedCOVID19patientsInterventionPlan-fio2-point7
InstanceOf: recommendation-plan
Usage: #definition
Title: "PEEP Intervention Plan for Population: Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.7"
Description: "PEEP Intervention Plan for Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.7 - 0.79"
* insert canonical-url(covid19-inpatient-therapy, intervention-plan/peep-fio2-point7)
* insert publisher-experimental-version(7.0)
* name = "PEEP_Intervention_Plan_FiO2_0.7"
* title = "PEEP Intervention plan for COVID-19 patients, inspiratory oxygen fraction currently 0.7 - 0.79"
* identifier.value = "PEEPPlanCOVIDPatients_OxygenFraction-0.7"
* date = "2022-02"
* status = #active
* description = "PEEP Intervention Plan for Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.7 - 0.79"
* subjectCanonical = Canonical(PopulationVentilatedCOVID19patients-fio2-point7)
* extension[partOf].valueCanonical = Canonical(RecommendationCollectionVentilatedCOVID19patients)
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "ventilator-management-fio2-0.7-goal"
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "ventilator-management-fio2-0.7-goal"
  * description.text = "Positive end-expiratory pressure (PEEP) minimal value setting for COVID-19 Patients, inspiratory oxygen fraction currently 0.7 - 0.79"
  * target
    * measure = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
    * detailRange
      * low = 10 'cm[H2O]' "cm[H2O]"

Instance: VentilatedCOVID19patientsInterventionPlan-fio2-point8
InstanceOf: recommendation-plan
Usage: #definition
Title: "PEEP Intervention Plan for Population: Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.8"
Description: "PEEP Intervention Plan for Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.8 - 0.89"
* insert canonical-url(covid19-inpatient-therapy, intervention-plan/peep-fio2-point8)
* insert publisher-experimental-version(7.0)
* name = "PEEP_Intervention_Plan_FiO2_0.8"
* title = "PEEP Intervention plan for COVID-19 patients, inspiratory oxygen fraction currently 0.8 - 0.89"
* identifier.value = "PEEPPlanCOVIDPatients_OxygenFraction-0.8"
* date = "2022-02"
* status = #active
* description = "PEEP Intervention Plan for Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.8 - 0.89"
* subjectCanonical = Canonical(PopulationVentilatedCOVID19patients-fio2-point8)
* extension[partOf].valueCanonical = Canonical(RecommendationCollectionVentilatedCOVID19patients)
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "ventilator-management-fio2-0.8-goal"
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "ventilator-management-fio2-0.8-goal"
  * description.text = "Positive end-expiratory pressure (PEEP) minimal value setting for COVID-19 Patients, inspiratory oxygen fraction currently 0.8 - 0.89"
  * target
    * measure = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
    * detailRange
      * low = 14 'cm[H2O]' "cm[H2O]"

Instance: VentilatedCOVID19patientsInterventionPlan-fio2-point9
InstanceOf: recommendation-plan
Usage: #definition
Title: "PEEP Intervention Plan for Population: Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.9"
Description: "PEEP Intervention Plan for Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.9 - 0.99"
* insert canonical-url(covid19-inpatient-therapy, intervention-plan/peep-fio2-point9)
* insert publisher-experimental-version(7.0)
* name = "PEEP_Intervention_Plan_FiO2_0.9"
* title = "PEEP Intervention plan for COVID-19 patients, inspiratory oxygen fraction currently 0.9 - 0.99"
* identifier.value = "PEEPPlanCOVIDPatients_OxygenFraction-0.9"
* date = "2022-02"
* status = #active
* description = "PEEP Intervention Plan for Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 0.9 - 0.99"
* subjectCanonical = Canonical(PopulationVentilatedCOVID19patients-fio2-point9)
* extension[partOf].valueCanonical = Canonical(RecommendationCollectionVentilatedCOVID19patients)
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "ventilator-management-fio2-0.9-goal"
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "ventilator-management-fio2-0.9-goal"
  * description.text = "Positive end-expiratory pressure (PEEP) minimal value setting for COVID-19 Patients, inspiratory oxygen fraction currently 0.9 - 0.99"
  * target
    * measure = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
    * detailRange
      * low = 14 'cm[H2O]' "cm[H2O]"

Instance: VentilatedCOVID19patientsInterventionPlan-fio2-1
InstanceOf: recommendation-plan
Usage: #definition
Title: "PEEP Intervention Plan for Population: Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 1.0"
Description: "PEEP Intervention Plan for Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 1.0 - 1.09"
* insert canonical-url(covid19-inpatient-therapy, intervention-plan/peep-fio2-1)
* insert publisher-experimental-version(7.0)
* name = "PEEP_Intervention_Plan_FiO2_1.0"
* title = "PEEP Intervention plan for COVID-19 patients, inspiratory oxygen fraction currently 1.0 - 1.09"
* identifier.value = "PEEPPlanCOVIDPatients_OxygenFraction-1.0"
* date = "2022-02"
* status = #active
* description = "PEEP Intervention Plan for Ventilated COVID-19 Patients, inspiratory oxygen fraction currently 1.0 - 1.09"
* subjectCanonical = Canonical(PopulationVentilatedCOVID19patients-fio2-1)
* extension[partOf].valueCanonical = Canonical(RecommendationCollectionVentilatedCOVID19patients)
* action[ventilatorManagement][+]
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "ventilator-management-fio2-1.0-goal"
* goal[ventilatorManagement][+]
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "ventilator-management-fio2-1.0-goal"
  * description.text = "Positive end-expiratory pressure (PEEP) minimal value setting for COVID-19 Patients, inspiratory oxygen fraction currently 1.0 - 1.09"
  * target
    * measure = $loinc#76248-4 "PEEP Respiratory system --on ventilator"
    * detailRange
      * low = 18 'cm[H2O]' "cm[H2O]"
