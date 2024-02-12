/************************/
/* Intervention Plans */
/************************/
Instance: AntithrombLWMHProphInHospitalisedCOVID19PatientsRecommPlan
InstanceOf: recommendation-plan
Usage: #definition
Title: "Antithrombotic prophylaxis with LWMH"
Description: "Hospitalized patients with COVID-19 should receive standard drug thromboembolism prophylaxis with low molecular weight heparin in the absence of contraindications. Alternatively, fondaparinux may be used."
* insert canonical-url(covid19-inpatient-therapy, intervention-plan/antithrombotic-prophylaxis-LMWH)
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithLWMH"
* title = "Antithrombotic prophylaxis with LWMH in hospitalised COVID-19 patients"
* date = "2022-04-27"
* status = #active
* description = "Antithrombotic prophylaxis with LWMH in hospitalised COVID-19 patients"
* subjectCanonical = Canonical(PopHospitalisedCOVID19PatientsWOContraIndications)
* extension[partOf].valueCanonical = Canonical(RecCollectionProphAnticoagulationHospitalizedCOVID19Patients)
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ProphylacticAnticoagulationWDalteparin)
  * selectionBehavior = #one-or-more
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ProphylacticAnticoagulationWEnoxaparin)
  * selectionBehavior = #one-or-more
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ProphylacticAnticoagulationWNadroparinLowWeight)
  * selectionBehavior = #one-or-more
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ProphylacticAnticoagulationWNadroparinHighWeight)
  * selectionBehavior = #one-or-more
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ProphylacticAnticoagulationWCertoparin)
  * selectionBehavior = #one-or-more
  * code = $sct#432102000 "Administration of substance (procedure)"
* action[drugAdministration][+]
  * definitionCanonical = Canonical(ProphylacticAnticoagulationWTinzaparin)
  * selectionBehavior = #one-or-more
  * code = $sct#432102000 "Administration of substance (procedure)"

Instance: AntithrombFondapProphInHospitalisedCOVID19PatientsRecommPlan
InstanceOf: recommendation-plan
Usage: #definition
Title: "Antithrombotic prophylaxis with Fondaparinux"
Description: "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients"
* insert canonical-url(covid19-inpatient-therapy, intervention-plan/antithrombotic-prophylaxis-fondaparinux)
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithFondaparinux"
* title = "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients"
* date = "2022-04-27"
* status = #active
* description = "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients"
* subjectCanonical = Canonical(PopHospitalisedCOVID19PatientsWithContraIndications)
* extension[partOf].valueCanonical = Canonical(RecCollectionProphAnticoagulationHospitalizedCOVID19Patients)
* action[drugAdministration][+]
  * code = $sct#432102000 "Administration of substance (procedure)"
  * definitionCanonical = Canonical(AntithromboticProphylaxisFondaparinuxSubcutaneous)
  * selectionBehavior = #one-or-more


/**********************/
/* Recommended Actions */
/**********************/
Instance: ProphylacticAnticoagulationWDalteparin
InstanceOf: drug-administration-action
Usage: #definition
Title: "Antithrombotic prophylaxis with Dalteparin"
Description: "Antithrombotic prophylaxis with Dalteparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/antithrombotic-prophylaxis-dalteparin-administration)
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithDalteparinPlan"
* status = #active
* description = "Antithrombotic prophylaxis with Dalteparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB04 "Dalteparin"
  * coding[sct] = $sct#372563008 "Dalteparin (substance)"
* dosage
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 5000 '[iU]' "IU"

Instance: ProphylacticAnticoagulationWEnoxaparin
InstanceOf: drug-administration-action
Usage: #definition
Title: "Antithrombotic prophylaxis with Enoxaparin"
Description: "Antithrombotic prophylaxis with Enoxaparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/antithrombotic-prophylaxis-enoxaparin-administration)
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithEnoxaparinPlan"
* status = #active
* description = "Antithrombotic prophylaxis with Enoxaparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB05 "Enoxaparin"
  * coding[sct] = $sct#372562003 "Enoxaparin (substance)"
* dosage
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 40 'mg'

Instance: ProphylacticAnticoagulationWNadroparinLowWeight
InstanceOf: drug-administration-action
Usage: #definition
Title: "Antithrombotic prophylaxis with Nadroparin Low Weight"
Description: "Antithrombotic prophylaxis with Nadroparin Low Weight in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/antithrombotic-prophylaxis-nadroparin-administration-low-weight)
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithPlanNadroparinLowWeight"
* status = #active
* description = "Antithrombotic prophylaxis with Nadroparin Low Weight in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB06 "Nadroparin"
  * coding[sct] = $sct#699946002 "Nadroparin (substance)"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.high = 70 'kg' "kg"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 3800 '[iU]' "IU"

Instance: ProphylacticAnticoagulationWNadroparinHighWeight
InstanceOf: drug-administration-action
Usage: #definition
Title: "Antithrombotic prophylaxis with Nadroparin High Weight"
Description: "Antithrombotic prophylaxis with Nadroparin High Weight in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/antithrombotic-prophylaxis-nadroparin-administration-high-weight)
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithNadroparinHighWeightPlan"
* status = #active
* description = "Antithrombotic prophylaxis with Nadroparin High Weight in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB06 "Nadroparin"
  * coding[sct] = $sct#699946002 "Nadroparin (substance)"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.low = 70.0000001 'kg' "kg"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 5700 '[iU]' "IU"

Instance: ProphylacticAnticoagulationWCertoparin
InstanceOf: drug-administration-action
Usage: #definition
Title: "Antithrombotic prophylaxis with Certoparin"
Description: "Antithrombotic prophylaxis with Certoparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/antithrombotic-prophylaxis-certoparin-administration)
* insert publisher-experimental-version(0.1)
* name = "AntithromboticProphylaxisWithCertoparinPlan"
* status = #active
* description = "Antithrombotic prophylaxis with Certoparin in hospitalised COVID-19 patients (in absence of contraindications for LWMH)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB13 "Certoparin"
  * coding[sct] = $sct#395961003 "Certoparin (substance)"
* dosage
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 3000 '[iU]' "IU"

Instance: AntithromboticProphylaxisFondaparinuxSubcutaneous
InstanceOf: drug-administration-action
Usage: #definition
Title: "Antithrombotic prophylaxis with Fondaparinux"
Description: "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients (when contraindications for LWMH exist)"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/antithrombotic-prophylaxis-fondaparinux-administration)
* insert publisher-experimental-version(0.1)
* name = "ProphylacticFondaparinuxApplicationActivity"
* status = #active
* description = "Antithrombotic prophylaxis with Fondaparinux in hospitalised COVID-19 patients (when contraindications for LWMH exist)"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AX05 "Fondaparinux"
  * coding[sct] = $sct#708189008 "Fondaparinux (substance)"
* dosage
  * route = $sct#386362006 "Administration of drug or medicament via subcutaneous route (procedure)"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 2.5 'mg' "mg"

Instance: ProphylacticAnticoagulationWTinzaparin
InstanceOf: drug-administration-action
Usage: #definition
Title: "Antithrombotic prophylaxis with Tinzaparin"
Description: "Antithrombotic prophylaxis with Tinzaparin in hospitalised COVID-19 patients"
* insert canonical-url(covid19-inpatient-therapy, recommended-action/drug-administration-action/antithrombotic-prophylaxis-tinzaparin-administration)
* insert publisher-experimental-version(0.1)
* name = "ProphylacticTinzaparinApplicationActivity"
* status = #active
* description = "Antithrombotic prophylaxis with Tinzaparin in hospitalised COVID-19 patients"
* code = $sct#432102000 "Administration of substance (procedure)"
* productCodeableConcept
  * coding[atcde] = $atcde#B01AB10 "Tinzaparin"
  * coding[sct] = $sct#412608008 "Tinzaparin (substance)"
* dosage
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "day"
  * doseAndRate
    * doseQuantity = 4500 '[iU]' "IU"
