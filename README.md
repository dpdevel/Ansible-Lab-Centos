# Introduction

## Clone repository

Clone this git repository:

`git clone https://github.com/dpdevel/Ansible-Lab-Centos7.git`

## Build images and run containers

Enter **ansible** directory containing [docker-compose.yml](./ansible/docker-compose.yml) file.

Build docker images and run containers in the background (details defined in [docker-compose.yml](./ansible/docker-compose.yml)):

`docker-compose up -d --build`

Connect to **master node**:

`docker exec -it master01 bash`
