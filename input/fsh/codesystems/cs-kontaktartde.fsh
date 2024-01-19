// including the CodeSystem to allow the validator to validate the codes
CodeSystem: KontaktArtDe
Id: KontaktArtDe
Title: "KontaktArtDe"
Description: "Klassifizierung eines Kontaktes mit einer Gesundheitseinrichtung"
* ^status = #active
* ^content = #complete
* ^url = "http://fhir.de/CodeSystem/kontaktart-de"
* ^version = "1.5.0"
* ^experimental = false
* ^date = "2023-11-30"
* ^publisher = "HL7 Deutschland e.V. (Technisches Komitee FHIR)"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.de/technische-komitees/fhir/"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^caseSensitive = true
* ^valueSet = "http://fhir.de/ValueSet/kontaktart-de"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^count = 12
* #begleitperson "Begleitperson" "Begleitperson definiert nach § 11 Abs. 3 SGB V"
* #vorstationaer "Vorstationär" "Vorstationärer Kontakt nach § 115 a SGB V"
* #nachstationaer "Nachstationär" "Nachstationärer Kontakt nach § 115 a SGB V"
* #teilstationaer "Teilstationäre Behandlung" "Eine teilstationäre Behandlung unterscheidet sich im Wesentlichen von einer vollstationären Behandlung durch eine regelmäßige, aber nicht zeitlich durchgehende Anwesenheit der Patientin oder des Patienten im Krankenhaus. Im Rahmen der teilstationären Behandlung kann Unterkunft und Verpflegung gewährt werden."
* #teilstationaer #tagesklinik "Tagesklinische Behandlung"
* #teilstationaer #nachtklinik "Behandlung in einer Nachtklinik"
* #normalstationaer "Normalstationär" "Stationärer Aufenthalt in Abgrenzung zu Intensivstationär"
* #intensivstationaer "Intensivstationär" "Intensivstationäre Kontakte sind Kontakte mit einer Station, die zur intensivmedizinischen Behandlung im Krankenhausplan bzw. Förderungsbescheid zugelassen sind"
* #ub "Untersuchung und Behandlung" "Aufenthalt auf einer Funktionsabteilung zur Durchführung spezieller diagnostischer/therapeutischer Maßnahmen"
* #konsil "Konsil" "Arztkontakte im Rahmen z.B. von Aufklärungsgesprächen, Visiten etc."
* #stationsaequivalent "Stationsäquivalent" "Psychiatrische Krankenhäuser mit regionaler Versorgungsverpflichtung sowie Allgemeinkrankenhäuser mit selbständigen, fachärztlich geleiteten psychiatrischen Abteilungen mit regionaler Versorgungsverpflichtung können in medizinisch geeigneten Fällen, wenn eine Indikation für eine stationäre psychiatrische Behandlung vorliegt, anstelle einer vollstationären Behandlung eine stationsäquivalente psychiatrische Behandlung im häuslichen Umfeld erbringen"
* #operation "Operation" "Aufenthalt in OP-Bereichen zur Durchführung von operativen Eingriffen inklusive Vor- und Nachbereitung"
