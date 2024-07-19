## install packackge manager gui
sudo apt install plasma-discover

## install docker
curl -fsSL https://get.docker.com | sudo bash
 
 ## grant access to docker.sock for watchtower run by user
sudo chmod 666 /var/run/docker.sock
