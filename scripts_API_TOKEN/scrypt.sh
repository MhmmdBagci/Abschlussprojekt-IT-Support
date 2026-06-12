#!/bin/bash 
source .env 
 
curl -X POST "$ZAMMAD_URL/api/v1/tickets"   -H "Authorization: Token token=$ZAMMAD_TOKEN"   -H "Content-Type: application/json"   -d '{ 
    "title": "Automatisch erstelltes Ticket: Monitoring Warnung", 
    "group_id": 8,
    "customer_id": 3,
    "article": { 
      "subject": "Monitoring Warnung", 
      "body": "Dieses Ticket wurde automatisch über die API erstellt. Der Server meldet eine hohe Auslastung.", 
      "type": "note", 
      "internal": false 
    }, 
    "priority_id": 3, 
    "state_id": 1 
  }'  