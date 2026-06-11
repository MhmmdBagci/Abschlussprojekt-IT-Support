#!/bin/bash
source "$(dirname "$0")/.env"

echo "ZAMMAD API TICKET ERSTELLEN"
echo "==========================="

read -p "Titel des Tickets: " TITEL
read -p "Kunde/Name: " KUNDE
read -p "Seit wann besteht das Problem?: " SEIT_WANN
read -p "Betroffenes Gerät oder Anwendung: " GERAET
read -p "Fehlermeldung oder Beobachtung: " FEHLER
read -p "Auswirkung auf die Arbeit: " AUSWIRKUNG
read -p "Was wurde bereits versucht?: " VERSUCHT

api_info="Ticket durch API erstellt!"

BESCHREIBUNG=" $api_info | Benutzer: $KUNDE | Das Problem besteht seit: $SEIT_WANN | Gerät/Anwendung: $GERAET | Fehlermeldung/Beobachtung: $FEHLER | Auswirkung: $AUSWIRKUNG | Bereits versucht: $VERSUCHT"

curl -X POST "$ZAMMAD_URL/api/v1/tickets" \
-u "$ZAMMAD_USER:$ZAMMAD_PASSWORD" \
-H "Content-Type: application/json" \
-d "{
  \"title\": \"$TITEL\",
  \"group_id\": 2,
  \"customer_id\": 3,
  \"article\": {
    \"subject\": \"$TITEL\",
    \"body\": \"$BESCHREIBUNG\",
    \"type\": \"note\",
    \"internal\": false
  },
  \"priority_id\": 2,
  \"state_id\": 1
}"