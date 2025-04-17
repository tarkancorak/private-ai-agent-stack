#!/bin/bash

set -e

echo "🔄 Starte Private AI Agent Stack neu..."

services=(flowise n8n openwebui ollama postgres)

for service in "${services[@]}"
do
  echo "🔄 Starte $service neu..."
  docker compose -f "$service/docker-compose.yaml" down
  docker compose \
    --env-file "$service/.env" \
    -f "$service/docker-compose.yaml" \
    up -d
done

echo "✅ Neustart abgeschlossen."

