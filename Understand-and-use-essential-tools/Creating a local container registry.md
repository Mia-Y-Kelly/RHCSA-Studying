# Setting up a local container registry

## Installing docker
1. `sudo dnf -y install dnf-plugins-core`
2. `sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo`
3. `sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin`
4. `sudo systemctl enable --now docker`
5. `sudo systemctl start docker`
6. Verify installation
    1. `sudo docker run hello-world`

# Setting up the registry
1. `sudo docker pull registry`
2. `sudo docker run -d -p 5000:5000 registry registry:latest`
3. Open up port 5000 tcp port on the firewall
    1. `sudo firewall-cmd --permanent --zone=public --add-port=5000/tcp`
    2. `sudo firewall-cmd --reload`
    3. `sudo systemctl restart firewalld`

# Start the local registry
1. `sudo docker build registry --name registry:latest .`