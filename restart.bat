@echo off
setlocal enabledelayedexpansion

echo Starte Private AI Agent Stack neu...

set SERVICES=flowise n8n openwebui ollama postgres

for %%S in (%SERVICES%) do (
    echo Starte %%S neu...
    docker compose -f %%S\docker-compose.yaml down
    docker compose ^
        --env-file %%S\.env ^
        -f %%S\docker-compose.yaml ^
        up -d
)

echo Neustart abgeschlossen.
