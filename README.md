# sts-ffm_kurzentwurf
LaTeX-Template für Kurzentwürfe zu Unterrichtsbesuchen am Studienseminar für Gymnasien Frankfurt am Main.

Entworfen nach der Word-Vorlage auf der [Homepage des Studienseminars](https://sts-gym-frankfurt.bildung.hessen.de/modul/vorlage_kurzentwurf3-2018.dotx).
Eine [Handreichung für die kurzen Unterrichtsentwürfe](https://sts-gym-frankfurt.bildung.hessen.de/modul/kurzentwurf_3-2017.docx) gibt es ebenfalls auf der Homepage des Studienseminars.


## Wie starte ich?
Um die Tabelle am Anfang der ersten Seite zu befüllen, nutze einfach diese Variablen:

* Nachname der LiV: `\name{Musterfrau}`
* Vorname der LiV: `\vorname{Martina}`
* Schule: `\schule{Tolle Schule}`
* Stunde, in der der Unterrichtsbesuch stattfindet (einfache Zahl genügt): `\stunde{42}`
* Datum und Uhrzeit: `\zeit{01.01.70, 14:00 Uhr}`
* Klassenraum: `\raum{1337}`
* Modul(e) und Ausbilder*innen: `\modul{Fachmodul (Ausbilder*in)}`
* Weitere Personen: `\gaeste{Weitere Personen}`
* Bezeichnung der Lerngruppe: `\lerngruppe{Klasse 10c}`
* Anzahl der Schüler*innen: `\anzahl{33}`

## Bekannte Probleme:
* Die Info-Tabelle am Anfang des Dokuments ist sehr eng. Um nicht von der Word-Vorlage abzuweichen, habe ich das vorerst nicht geändert.
