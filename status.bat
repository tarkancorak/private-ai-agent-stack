@echo off
setlocal enabledelayedexpansion

echo Status der Private AI Agent Stack Container:
echo.

set SERVICES=postgres openwebui ollama flowise n8n

for %%S in (%SERVICES%) do (
    echo %%S:
    docker compose -f %%S\docker-compose.yaml ps
    echo.
)
