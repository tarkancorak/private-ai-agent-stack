#!/bin/bash

echo "📦 Status der Private AI Agent Stack Container:"
echo

services=(postgres openwebui ollama flowise n8n)

for service in "${services[@]}"
do
  echo "🔍 $service:"
  docker compose -f "$service/docker-compose.yaml" ps
  echo
done
