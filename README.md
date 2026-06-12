# Zammad IT Support Monatsprojekt 
# Abschlussprojekt IT-Support – Zammad Ticketsystem

## Projektübersicht

Im Rahmen meines Abschlussprojekts im Bereich IT-Support wurde ein vollständiges Ticketsystem mit **Zammad** auf Basis von **Docker Compose** eingerichtet und konfiguriert.

Ziel des Projekts war die Einführung einer zentralen Plattform zur Bearbeitung, Dokumentation und Nachverfolgung von IT-Supportanfragen für die fiktive **OfficeLine GmbH**.

---

## Projektziele

* Einführung eines zentralen Ticketsystems
* Strukturierung des IT-Supports durch Gruppen und Rollen
* Automatische Ticketzuordnung durch Trigger
* Automatisierung wiederkehrender Prozesse
* Aufbau einer Knowledge Base
* Umsetzung einer API-Integration
* Erstellung eines Backup- und Restore-Konzepts
* Dokumentation und Test der Umgebung

---

## Verwendete Technologien

* Docker
* Docker Compose
* Zammad
* PostgreSQL
* Redis
* Elasticsearch
* Git
* GitHub
* Bash
* curl
* Linux / WSL

---

## Projektstruktur

```text
Abschlussprojekt_IT-Support
├── backup-tests
├── docker
│   └── docker-compose.yml
├── docs
├── knowledge-base
├── presentation
├── screenshots
├── scripts
│   ├── Ticket_erstellen.sh
│   └── .env.example
├── .gitignore
└── README.md
```

---

## Umgesetzte Funktionen

### Ticketsystem

* 40 realistische IT-Support-Tickets erstellt
* unterschiedliche Prioritäten
* verschiedene Supportgruppen
* Eskalationen dokumentiert
* Kundenkommunikation dokumentiert

### Supportgruppen

* 1st Level Support
* Benutzerverwaltung
* Hardware Support
* Software Support
* Netzwerk Support
* 2nd Level Support
* Systemadministration

### Trigger

Automatische Zuordnung für:

* Passwortprobleme
* VPN-Probleme
* WLAN-Probleme
* Druckerprobleme
* Phishing-Verdacht
* Berechtigungsanfragen

### Automatisierungen

* Alte Tickets markieren
* Kritische Tickets kennzeichnen
* Tickets ohne Bearbeiter finden
* Warten auf Kunde nachverfolgen
* Knowledge-Base-Prüfung

### Knowledge Base

Erstellung von 15 Artikeln für häufige Supportfälle:

* Passwort zurücksetzen
* VPN Verbindung prüfen
* WLAN Probleme lösen
* Outlook Passwortabfrage lösen
* Teams Mikrofon prüfen
* Teams Kamera prüfen
* Netzlaufwerk verbinden
* Phishing melden
* und weitere

### API Integration

Über ein Bash-Skript können Tickets automatisiert über die Zammad REST API erstellt werden.

Beispiel:

```bash
./Ticket_erstellen.sh
```

Anschließend werden die Ticketinformationen abgefragt und automatisch in Zammad angelegt.

---

## Docker Umgebung

Die Umgebung wird über Docker Compose bereitgestellt.

Start:

```bash
docker-compose up -d
```

Status prüfen:

```bash
docker-compose ps
```

Logs anzeigen:

```bash
docker-compose logs
```

Stoppen:

```bash
docker-compose down
```

---

## Sicherheit

Sensible Zugangsdaten werden nicht im Repository gespeichert.

Dateien wie:

```text
scripts/.env
```

sind über die `.gitignore` ausgeschlossen.

---

## Testumfang

Durchgeführt wurden unter anderem:

* Ticketerstellung
* Triggerprüfung
* Automatisierungstests
* API-Tests
* Backupprüfung
* Docker Neustart
* Eskalationsszenarien
* Knowledge Base Nutzung

---

## Erkenntnisse

Durch das Projekt konnte praktische Erfahrung gesammelt werden in:

* Docker Administration
* Ticketsystemen
* IT-Support-Prozessen
* Fehleranalyse
* API-Anbindung
* Git und GitHub
* Dokumentation technischer Projekte

---

## Autor

Muhammed Bagci

Abschlussprojekt IT-Support
2026
