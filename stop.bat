@echo off
setlocal enabledelayedexpansion

echo Stoppe Private AI Agent Stack...

set SERVICES=flowise n8n openwebui ollama postgres

for %%S in (%SERVICES%) do (
    echo Stoppe %%S...
    docker compose -f %%S\docker-compose.yaml down
)

echo Alle Services wurden gestoppt.
