## pull the latest changes
git pull origin main

# Restart Docker Compose
docker compose up --force-recreate -d
cd collector
docker compose up --force-recreate -d

# run watchtower command
docker run -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --run-once --label-enable
