# change into directory
cd /autodarts

## pull the latest changes
git pull origin main

# Restart Docker Compose
sudo docker-compose up --force-recreate --build -d -f ./docker-compose.yml -f ./collector/docker-compose.yml
