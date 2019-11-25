#!/bin/sh
docker_port=81
host_port=8082
name="bizmet"
deploy_repo="vinay886"
tag="latest"

bash security_check.sh 
#sudo docker build -t bizmet:latest .
sudo docker build -t ${name}/${tag} .
docker run -d -p ${host_port}:${docker_port} --name=${name} ${name}

