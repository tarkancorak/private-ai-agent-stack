#!/bin/bash

set -e

echo "🛑 Stoppe Private AI Agent Stack..."

services=(flowise n8n openwebui ollama postgres)

for service in "${services[@]}"
do
  echo "🛑 Stoppe $service..."
  docker compose -f "$service/docker-compose.yaml" down
done

echo "✅ Alle Services wurden gestoppt."
