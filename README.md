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

## 📎 License

This project is licensed under the [MIT License](LICENSE).

---

## 🙋‍♂️ Author

**Niresh Shanmugam**  
GitHub: [nireshs](https://github.com/nireshs)  
Email: niresh.shanmugam@gmail.com
