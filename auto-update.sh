# change into directory
cd /autodarts

## pull the latest changes
git pull origin main

# Restart Docker Compose
docker compose up --force-recreate -d
cd collector
docker compose up --force-recreate -d

# wait for containers to start
sleep 10

# run watchtower command
docker run -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower -e WATCHTOWER_LABEL_ENABLE true --run-once
