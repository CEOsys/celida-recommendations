Recommendation
==============

Guideline
---------

S3-Leitlinie Empfehlungen zur stationären Therapie von Patienten mit COVID-19 – Living Guideline - <https://register.awmf.org/de/leitlinien/detail/113-001LG>

Summary
-------

### German

Für die orientierende Einstellung des PEEP bei COVID-19 sollte die FiO2/PEEP-Tabelle des ARDS-Networks berücksichtigt werden. Durch ein engmaschiges Monitoring kann der PEEP der individuellen Situation des Patienten angepasst werden. ⇑

### English (machine translation)

For the orientational adjustment of PEEP in COVID-19, the FiO2/PEEP table of the ARDS Network should be considered. Close monitoring can adjust the PEEP to the individual patient's situation. ⇑

Justification
-------------

### German

Hinsichtlich der Einstellung des positiven end-exspiratorischen Drucks (PEEP) erscheint für Patienten in der Frühphase (ohne klassische Konsolidierungen, hohe Compliance, erwartbar geringe Rekrutierbarkeit) die PEEP Einstellung entsprechend den Werten der LOW-FiO2/PEEP-Tabelle sinnvoll. Bei der klassischen bildmorphologischen Ausprägung eines ARDS mit reduzierter Compliance sollte die Einstellung eher nach der High FiO2/PEEP-Tabelle erfolgen (195, 225).  
Bei ARDS und einem PaO2/FiO2 < 150 mmHg soll konsequent eine Bauchlagerung durchgeführt werden, das Bauchlagerungsintervall beträgt dabei mind. 16 Stunden (195). Im Einzelfall können zur Überbrückung einer schweren Hypoxämie die Applikation von inhalativem NO, eine Muskelrelaxierung oder ein Rekrutierungsmanöver erwogen werden. Bei Patienten mit schwerem ARDS und therapierefraktärer Hypoxämie (PaO2/FiO2-Quotient < 80 bzw. 60 mmHg) ist der Einsatz der veno-venösen ECMO eine therapeutische Option um den Gasaustausch zu stabilisieren. Eine ECMO-Anlage ist allerdings nur in Erwägung zu ziehen, wenn alle sonstigen Therapiemaßnahmen ausgeschöpft sind, keine Kontraindikationen bestehen und der Patientenwille diesbezüglich evaluiert ist. In einer aktuellen französischen Studie lag die Sterblichkeit von mit veno-venöser ECMO behandelten COVID-19 Patienten nach 90 Tagen bei 54 % (262).  
Das Management von Analgesie und Sedierung bei intensivmedizinisch behandelten Patienten sollte zielgerichtet erfolgen und an Hand validierter Messinstrumente überwacht werden (263). Das Sedierungsziel umfasst allenfalls eine leichte Sedierung, insbesondere mit Hinblick auf die Nebenwirkungen der Sedativa wie: Delir, Depression der Atmung, Hypotension und Immunsuppression. Tiefe Sedierung und Übersedierung sind auch bei COVID-19 Erkrankten ein Risikofaktor für ein schlechteres Outcome.

### English (machine translation)

Regarding the setting of positive end-expiratory pressure (PEEP), for patients in the early phase (without classic consolidations, high compliance, expected low recruitable) the PEEP setting according to the values of the LOW-FiO2/PEEP table seems reasonable. In the classic image-morphologic manifestation of ARDS with reduced compliance, the setting should rather be according to the High FiO2/PEEP table (195, 225).  
In ARDS and a PaO2/FiO2 < 150 mmHg, abdominal positioning should be consistently performed, with an abdominal positioning interval of at least 16 hours (195). In individual cases, application of inhaled NO, muscle relaxation, or a recruitment maneuver may be considered to bridge severe hypoxemia. In patients with severe ARDS and refractory hypoxemia (PaO2/FiO2 quotient < 80 or 60 mmHg), the use of venovenous ECMO is a therapeutic option to stabilize gas exchange. However, ECMO should only be considered if all other therapeutic measures have been exhausted, no contraindications exist, and the patient's will has been evaluated in this regard. In a recent French study, the mortality of COVID-19 patients treated with venovenous ECMO was 54% at 90 days (262).  
Management of analgesia and sedation in ICU-treated patients should be targeted and monitored using validated measurement tools (263). At most, the sedation goal includes mild sedation, especially with regard to the side effects of sedatives such as Delirium, respiratory depression, hypotension, and immunosuppression. Deep sedation and oversedation are also risk factors for poorer outcomes in COVID-19 sufferers.

Population
==========

* For each FiO2 value (0.0, 0.4, 0.5 etc) we have defined a different population
* The selection works via "valueRange", i.e. the range datatype, with valueRange.low and valueRange.high
* According to the FHIR specicfication for the Range datatype, these values (low/high) are inclusive, and there is no possibility to change that behaviour (because low and high use the SimpleQuantity datatype, which disallows the use of the comparator field, which could have  been used otherwise to specify inclusive or exclusive)
* There is apparently no real way to define an [exact cover](https://en.wikipedia.org/wiki/Exact_cover) using the Range datatype in FHIR

| Name | Description | Criteria |
| --- | --- | --- |
|  |  | Inclusion  / Exclusion  | Name | Type | definition.type | definition.value |
| PopulationVentilatedCOVID19patientsWithARDS-fio2-[0.0, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9] | Ventilated Patients suffering from COVID-19 induced ARDS |  | COVID-19 | Condition | SCT [404684003 "Clinical finding (finding)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=404684003&edition=MAIN/2022-04-30&release=&languages=en)" | $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)" |
|  | ventilated | Procedure | SCT [71388002 "Procedure (procedure)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=71388002&edition=MAIN/2022-05-31&release=&languages=en)" | $sct#40617009 "Artificial ventilation (regime/therapy)" |
|  | FiO2 | ventilationObservableLOINC | $loinc#3150-0 "Inhaled oxygen concentration"* as used in [GECCO FiO2](https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide-1.0.5/Home/GECCOCore/Vitalsigns/FiO2.guide.md?version=current)
* Alternative (as decimal, without % unit): [71835-3 Oxygen/Gas total [Pure volume fraction] Inhaled gas](https://loinc.org/71835-3/)
 | FiO2 [0.0, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9] |

Intervention
============

| Name | Description | Criteria |
| --- | --- | --- |
|  |  | Name (Goal ID) | Action Category | Goal target measure | Goal target detail |
| VentilatedCOVID19patientsWithARDSInterventionPlan-fio2-[0.0, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9] | PEEP Intervention Plan for Ventilated COVID-19 Patients with ARDS, inspiratory oxygen fraction currently -[0.0, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9] 
| ventilator-management-fio2-0.0-goal | ventilatorManagement | $loinc#76248-4 "PEEP Respiratory system --on ventilator" | >5 cm[H2O] |
| ventilator-management-fio2-0.4-goal | ventilatorManagement | $loinc#76248-4 "PEEP Respiratory system --on ventilator" | >5 cm[H2O] |
| ventilator-management-fio2-0.5-goal | ventilatorManagement | $loinc#76248-4 "PEEP Respiratory system --on ventilator" | >8 cm[H2O] |
| ventilator-management-fio2-0.6-goal | ventilatorManagement | $loinc#76248-4 "PEEP Respiratory system --on ventilator" | >10 cm[H2O] |
| ventilator-management-fio2-0.7-goal | ventilatorManagement | $loinc#76248-4 "PEEP Respiratory system --on ventilator" | >10 cm[H2O] |
| ventilator-management-fio2-0.8-goal | ventilatorManagement | $loinc#76248-4 "PEEP Respiratory system --on ventilator" | >14 cm[H2O] |
| ventilator-management-fio2-0.9-goal | ventilatorManagement | $loinc#76248-4 "PEEP Respiratory system --on ventilator" | >14 cm[H2O] |
| ventilator-management-fio2-1.0-goal | ventilatorManagement | $loinc#76248-4 "PEEP Respiratory system --on ventilator" | >18 cm[H2O] |

Notes
=====

Since the recommendation is ambiguous (who is considered to be an early-phase ARDS patient?, what is "well ventilated/oxygenated"? etc.), we have decided to model the following: For a patient with a given FiO2, is the PEEP-value greater or equal than the minimum level specified for this FiO2. Reference is the table "Lower PEEP, higher fiO2" from the AWMF Recommendation for ARDS (<https://www.awmf.org/fileadmin/user_upload/Leitlinien/001_Anaesthesiologie_und_Intensivmedizin/001-021kt_S3_Invasive_Beatmung_2017-12.pdf>)



| FiO2 | 0.3 | 0.4 | 0.5 | 0.6 | 0.7 | 0.8 | 0.9 | 1.0 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| min. PEEP | 5 | 5 | 8 | 10 | 10 | 14 | 14 | 18 |

  


  


