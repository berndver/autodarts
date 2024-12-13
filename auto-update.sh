# change into directory
cd /autodarts

## pull the latest changes
git pull origin main

# Restart Docker Compose
docker compose up --force-recreate -d -f ./docker-compose.yml
docker compose up --force-recreate -d -f -f ./collector/docker-compose.yml
