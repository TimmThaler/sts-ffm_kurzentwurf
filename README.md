# sts-ffm_kurzentwurf
LaTeX-Template für Kurzentwürfe zu Unterrichtsbesuchen am Studienseminar für Gymnasien Frankfurt am Main.

Entworfen nach der [Word-Vorlage](https://sts-gym-frankfurt.bildung.hessen.de/modul/vorlage_kurzentwurf3-2018.dotx) auf der [Homepage des Studienseminars](https://sts-gym-frankfurt.bildung.hessen.de/).
Eine [Handreichung für die kurzen Unterrichtsentwürfe](https://sts-gym-frankfurt.bildung.hessen.de/modul/kurzentwurf_3-2017.docx) gibt es ebenfalls auf der Homepage des Studienseminars. Die dort angeführten Formalia u. a. bzgl. der Länge der einzelnen Abschnitte sind möglichst einzuhalten (auch in `main.tex` vermerkt).


## Wie starte ich?
Um die Tabelle am Anfang der ersten Seite zu befüllen, nutze diese Setup-Variablen direkt am Anfang deines Dokuments:

* Nachname der LiV: `\name{Musterfrau}`
* Vorname der LiV: `\vorname{Martina}`
* Schule: `\schule{Tolle Schule}`
* Datum: `\datum{01.01.70`
* Stunde, in der der Unterrichtsbesuch stattfindet (einfache Zahl genügt): `\stunde{42}`
* Uhrzeit der Stunde: `\zeit{14:00 Uhr}`
* Klassenraum: `\raum{1337}`
* Modul(e) und Ausbilder*innen: `\modul{Fachmodul (Ausbilder*in)}`
* Weitere Personen: `\gaeste{Weitere Personen}`
* Bezeichnung der Lerngruppe: `\lerngruppe{Klasse 10c}`
* Anzahl der Schüler*innen: `\anzahl{33}`

## Hinweise / bekannte Probleme:
* Die Info-Tabelle am Anfang des Dokuments ist sehr eng. Um nicht von der Word-Vorlage abzuweichen, habe ich das vorerst nicht geändert.
* Die Tabellen in der Word-Vorlage sind 15,98cm breit, im LaTeX-Dokument allerdings maximal 14,7cm, obwohl die Seitenränder und das Seitenformat übernommen wurden.
* Im "Setup"-Bereich kann zum Zeilenumbruch, etwa für die Adresse der Schule, nicht `\\` genutzt werden, sondern nur `\newline`.

## ToDo:
- [ ] Tabellarische Übersicht (Punkt 5) in Klasse einarbeiten.
