@echo off
setlocal enabledelayedexpansion

echo Starte Private AI Agent Stack...

set SERVICES=postgres ollama openwebui flowise n8n

for %%S in (%SERVICES%) do (
    echo Starte %%S...
    docker compose ^
        --env-file %%S\.env ^
        -f %%S\docker-compose.yaml ^
        up -d
)

echo Alle Services laufen jetzt im Hintergrund.
