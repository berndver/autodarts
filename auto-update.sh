# change into directory
cd /autodarts

## pull the latest changes
git pull origin main

# Restart Docker Compose
docker compose up --force-recreate -d
cd collector
docker compose up --force-recreate -d
