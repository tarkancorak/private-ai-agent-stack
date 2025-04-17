#!/bin/bash

set -e

echo "🔧 Starte Private AI Agent Stack..."

services=(postgres ollama openwebui flowise n8n)

for service in "${services[@]}"
do
  echo "🚀 Starte $service..."
  docker compose \
    --env-file "$service/.env" \
    -f "$service/docker-compose.yaml" \
    up -d
done

echo "✅ Alle Services laufen jetzt im Hintergrund."
