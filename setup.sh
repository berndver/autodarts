## install packackge manager gui
sudo apt install plasma-discover

## install docker
curl -fsSL https://get.docker.com | sudo bash
sudo apt-get install -y uidmap
dockerd-rootless-setuptool.sh install
sudo loginctl enable-linger $USER
echo "export DOCKER_HOST=unix:///run/user/1000/docker.sock" >> ~/.bashrc

## grant access to docker.sock for watchtower run by user
sudo chmod 666 /var/run/docker.sock
