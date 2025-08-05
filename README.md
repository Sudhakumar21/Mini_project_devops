# Flask Web Application with Docker and Jenkins CI/CD

## 📌 Project Overview

This project demonstrates how to develop, containerize, and deploy a Python Flask web application using Docker and automate the deployment pipeline using Jenkins. The web application will be run inside a Docker container using `docker-compose` and deployed through a Jenkins job that pulls code from a GitHub repository.

---

## ⚙️ Tech Stack

- **Language**: Python 3.x  
- **Web Framework**: Flask  
- **Containerization**: Docker & Docker Compose  
- **CI/CD**: Jenkins  
- **Version Control**: Git & GitHub  

---

## 📁 Project Structure (Planned)

```
project-root/
│
├── app/
│   ├── app.py
│   ├── templates/
│   └── static/
│
├── requirements.txt
├── Dockerfile
├── docker-compose.yml
└── README.md
```

---

## ✅ Prerequisites

Ensure the following are installed on your system:

- Python 3.x
- pip (Python package installer)
- Flask (`pip install flask`)
- Docker Engine
- Docker Compose
- Git
- curl & wget
- Jenkins (Installed on a virtual Linux machine)

---

## 🚀 Installation & Setup Steps

### 🔧 Step 1: Create a New GitHub Repository

Create a repository on GitHub to maintain the project code. Clone it to your local system.

```bash
git clone https://github.com/yourusername/your-repo-name.git
cd your-repo-name
```

---

### 🛠 Step 2: Develop Flask Application

- Create a simple Flask application under the `app/` directory.
- Create a `requirements.txt` file listing all dependencies.

Example:

```text
flask==2.3.3
```

---

### 🐳 Step 3: Create Dockerfile and docker-compose.yml

- Write a `Dockerfile` to containerize the Flask app.
- Write a `docker-compose.yml` to define container behavior, including ports, volumes, and networks.

---

### 🧪 Step 4: Setup Jenkins on a Virtual Machine

- Install Docker Engine and Jenkins on a Linux VM.
- Start and configure Jenkins server.

---

### 🔁 Step 5: Configure Jenkins Job

1. Create a new Jenkins freestyle or pipeline job.
2. Configure the job to:
   - Pull code from your GitHub repository.
   - Execute the `docker-compose up --build` command to run the Flask app inside a container.

---

### ✅ Step 6: Verify Deployment

- After Jenkins completes the build and deployment:
  - Verify that the Flask app is running inside the Docker container.
  - Access the web application via the forwarded port (e.g., `http://<vm-ip>:5000`).

---

## 📝 Notes

- Ensure required ports are exposed in `docker-compose.yml`.
- Configure firewall or security groups if deploying to a cloud VM.

---

PHASE-2 Plan
===============

## ☁️ AWS EC2 Deployment Guide

You can deploy this Flask web application on an AWS EC2 instance as follows:

### 🔑 Step 7: Launch an AWS EC2 Instance

1. Log in to your AWS Management Console.
2. Navigate to **EC2** > **Instances** > **Launch Instance**.
3. Choose an Amazon Linux 2 or Ubuntu Server AMI.
4. Choose a t2.micro instance type (free tier eligible).
5. Create or select an existing key pair to SSH into the instance.
6. Configure security group to allow:
   - **TCP Port 22** for SSH access.
   - **TCP Port 5000** (or any port your Flask app runs on).
   - **TCP Port 8080/80** (if you use NGINX or expose web ports).

---

### 💻 Step 8: Connect and Setup EC2

1. SSH into your EC2 instance:

```bash
ssh -i your-key.pem ec2-user@your-ec2-public-ip
```

2. Update packages and install required tools:

```bash
sudo apt update && sudo apt install -y docker.io docker-compose git python3-pip
sudo usermod -aG docker $USER
newgrp docker
```

3. (Optional) Install Jenkins on EC2 if needed.

---

### 📦 Step 9: Clone and Deploy Application

```bash
git clone https://github.com/yourusername/your-repo-name.git
cd your-repo-name
docker-compose up --build -d
```

---

### 🌐 Step 10: Access the Web Application

- Open your browser and navigate to:  
  `http://<your-ec2-public-ip>:5000`

- Ensure the security group allows inbound access to this port.

---

### 🔒 Step 11: Security and Monitoring

- Configure a reverse proxy (e.g., NGINX) for production readiness.
- Use AWS CloudWatch or external tools to monitor logs and resource usage.
- Use a custom domain or Route 53 for DNS mapping (optional).
- Set up HTTPS using Let's Encrypt or ACM (optional).

## 📎 License

This project is licensed under the [MIT License](LICENSE).

---

## 🙋‍♂️ Author

**Niresh Shanmugam**  
GitHub: [nireshs](https://github.com/nireshs)  
Email: niresh.shanmugam@gmail.com
