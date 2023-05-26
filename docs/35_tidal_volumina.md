Recommendation
==============

Guideline
---------

S3-Leitlinie Empfehlungen zur stationären Therapie von Patienten mit COVID-19 – Living Guideline - <https://register.awmf.org/de/leitlinien/detail/113-001LG>

Summary
-------

### German

Bei beatmeten Patienten mit COVID-19 und ARDS sollte das Tidalvolumen ≤ 6 ml/kg Standardkörpergewicht betragen, der endinspiratorische Atemwegsdruck ≤ 30 cm H2O.

### English (machine translation)

In ventilated patients with COVID-19 and ARDS, tidal volume should be ≤ 6 ml/kg standard body weight, end-inspiratory airway pressure ≤ 30 cm H2O.

Justification
-------------

### German

In verschiedenen Leitartikeln und kleineren Fallserien wurde zu Beginn der COVID-19 Pandemie vermutet, dass das COVID-19 ARDS atypisch ist, da es sich, zumindest in einem Teil der Fälle, in der Frühphase durch eine höhere Compliance, reduzierte Rekrutierbarkeit sowie eine hohe Shunt-Fraktion vom „klassischen ARDS“ unterschied (145, 258). In den zuletzt publizierten größeren Studien zeigte sich aber, dass es bei Patienten mit COVID-19 assoziiertem ARDS im späteren Verlauf im Vergleich zu sonstigen Ursachen des ARDS keine signifikanten Unterschiede im Hinblick auf Lungencompliance, Beatmungsdrücke und Pressure gibt (259-261). Aufgrund fehlender randomisierter Studien zur Beatmungstherapie bei COVID-19, leiten sich daher die Empfehlungen zur Beatmungstherapie von den zuletzt publizierten Leitlinien zur invasiven Beatmung bei akuter respiratorischer Insuffizienz ab (193, 195). Dies beinhaltet die Empfehlungen zum Tidalvolumen (≤ 6 ml/kg ideales Körpergewicht) und dem endinspiratorischen Atemwegsdruck (PEI) ≤ 30 cm H2O).

### English (machine translation)

At the onset of the COVID-19 pandemic, various editorials and smaller case series suggested that COVID-19 ARDS was atypical because, at least in a subset of cases, it differed from "classic ARDS" in the early phase by higher compliance, reduced recruitable, and high shunt fraction (145, 258). However, in the most recently published larger studies, there were no significant differences in lung compliance, ventilatory pressures, and pressures in patients with COVID-19 associated ARDS in the later course compared with other causes of ARDS (259-261). Therefore, because of the lack of randomized trials of ventilatory therapy in COVID-19, recommendations for ventilatory therapy are derived from the most recently published guidelines on invasive ventilation for acute respiratory failure (193, 195). This includes the recommendations on tidal volume (≤ 6 ml/kg ideal body weight) and end-inspiratory airway pressure (PEI) ≤ 30 cm H2O).

Population
==========



| Name | Description | Criteria |
| --- | --- | --- |
|  |  | Inclusion  / Exclusion  | Name | Category | definition.type | definition.value |
| VentilatedCOVID19patientsWithARDS | Ventilated COVID-19 patients with ARDS |  | COVID-19 | Condition | SCT [404684003 "Clinical finding (finding)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=404684003&edition=MAIN/2022-04-30&release=&languages=en)" | $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)" |
|  | Ventilated | Procedure | SCT [71388002 "Procedure (procedure)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=71388002&edition=MAIN/2022-05-31&release=&languages=en)" | $sct#40617009 "Artificial ventilation (regime/therapy)" |
|  | ARDS | Condition | SCT [404684003 "Clinical finding (finding)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=404684003&edition=MAIN/2022-04-30&release=&languages=en)" | $sct#67782005 "Acute respiratory distress syndrome (disorder)" |

Intervention
============

The used LOINC code for tidal volume uses "per body weight" but it should use "per *ideal*  body weight" – however, we couldn't find a code for that (neither in LOINC nor in SNOMED CT)

  




| Name | Description | Population | Action/Activities |
| --- | --- | --- | --- |
|  |  |  | Name | Action Categroy | Goal target measure | Goal target detail |
| VentilatedCOVID19PatientsWithARDSVentilationPlan | Manage ventilation such that tidal volume ≤ 6 ml/kg standard body weight, end-inspiratory airway pressure ≤ 30 cm H2O. | VentilatedCOVID19patientsWithARDS | Tidal Volume | ventilatorManagement | $loinc#20117-8 "Tidal volume.spontaneous+mechanical/Body weight [Volume/mass] --on ventilator" | range.high = 6 'ml/kg' "ml/kg" |
| End-inspiratory airway pressure | ventilatorManagement | $loinc#60951-1 "Pressure max Respiratory system airway --during inspiration" | range.high = 30 'cm[H2O]' "cm[H2O]" |

  


