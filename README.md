# Mini_project_devops
To learn devops concepts and foccus on working on github, jenkins, docker, AWS instances, kubernetes.

A simple ecommerce welcome page designed using python flask which will be deployed using docker, jenkins, kubernetes and EC2 instances.
## Table of Contents
1. Docker
2. Docker Compose
3. Jenkins
4. EC2 Instance
5. Kubernetes

## Deployment using Docker

To deploy this project run the following commands,
 - In order to build docker image

```bash
  docker build -t ecommerce_app .
```

 - Now to run container using built image

```bash
  docker run -d -p 3000:3000 --name ecommerce_app_container ecommerce_app
```

## Deployment using Docker-compose

To deploy this project using docker-compose run the following commands,

```bash
  docker-compose up -d
```

## Deployment using Jenkins

You can access jenkins at http://localhost:8080

A job ecommerce was created, once it builds successfully. You can access the ecommerce portal at http://localhost:5000

## Deployment using EC2 instance

- Create an Ec2 instance and install docker, docker-compose and git
```bash
  sudo apt update && sudo apt upgrade -y
  sudo apt install -y docker.io docker-compose git
```
- Start and enable docker
```bash
  sudo systemctl start docker
  sudo systemctl enable docker
```
- Clone your git repo 
```bash
  git clone https://github.com/your/repo.git
```
- Navigate to repo folder
- Now to run container using built image - Docker

```bash
  docker run -d -p 3000:3000 --name ecommerce_app_container ecommerce_app
```
- Using docker-compose,

```bash
  docker-compose up -d
```
- Finally access the application at Access: http://<your-ec2-public-ip>:3000

