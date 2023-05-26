Recommendation
==============

Guideline
---------

S3-Leitlinie Empfehlungen zur stationären Therapie von Patienten mit COVID-19 – Living Guideline - <https://register.awmf.org/de/leitlinien/detail/113-001LG>

Summary
-------

### German

Bei ARDS und einem PaO2/FiO2 < 150 mmHg soll konsequent eine Bauchlagerung durchgeführt werden, das Bauchlagerungsintervall beträgt dabei mind. 16 Stunden 

### English (machine translation)

In ARDS and a PaO2/FiO2 < 150 mmHg, abdominal positioning should be consistently performed, with an abdominal positioning interval of at least 16 hours. 

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



| Name | Description | Criteria |
| --- | --- | --- |
|  |  | Inclusion  / Exclusion  | Name | Category | definition.type | definition.value |
| VentilatedCOVID19patientsWithARDSWithOxygenationFailure | Ventilated Patients suffering from COVID-19 induced ARDS which exhibit oxygenation failure |  | COVID-19 | Condition | SCT [404684003 "Clinical finding (finding)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=404684003&edition=MAIN/2022-04-30&release=&languages=en)" | $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)" |
|  | Ventilated | Procedure | SCT [71388002 "Procedure (procedure)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=71388002&edition=MAIN/2022-05-31&release=&languages=en)" | $sct#40617009 "Artificial ventilation (regime/therapy)" |
|  | ARDS | Condition | SCT [404684003 "Clinical finding (finding)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=404684003&edition=MAIN/2022-04-30&release=&languages=en)" | $sct#67782005 "Acute respiratory distress syndrome (disorder)" |
|  | hypoxic respiratory failure | laboratory | $loinc#50984-4 "Horowitz index in Arterial blood" | Horowitz (=oxygenation) index lower than 150 mmHg |

Intervention
============



| Name | Description | Population | Action/Activities |
| --- | --- | --- | --- |
|  |  |  | Name | Type | Action.code | Timing |
| PronePositioning | Actively putting the patient in prone position, for at least 16 hours at a time | VentilatedCOVID19patientsWithARDSWithOxygenationFailure | prone positioning | bodyPositioning | $sct#431182000 "Placing subject in prone position (procedure)" | >= 16h |

  


