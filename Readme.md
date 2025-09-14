# 🚀 DevOps Task – CI/CD Pipeline with Jenkins, Docker & DockerHub

## 📌 Overview
This project demonstrates a complete **CI/CD pipeline** using:
- **Jenkins** (automation server)
- **Docker & DockerHub** (containerization & registry)
- **GitHub** (source code repository)
- **Node.js App** (sample application)

The pipeline automatically:
1. Clones the code from GitHub  
2. Builds a Docker image  
3. Pushes the image to DockerHub  
4. Deploys the application using Docker Compose  

---

## 🛠️ Tech Stack
- Jenkins (Pipeline)
- Docker & Docker Compose
- DockerHub
- GitHub
- Node.js (Express.js app)

---

## 🔑 Prerequisites
- Jenkins installed and running (with plugins: Git, Pipeline, Credentials Binding)
- Docker & Docker Compose installed
- DockerHub account
- Jenkins credentials added with ID: `dockerHubCred`  
  (stores DockerHub **username & password**)

---

## ⚙️ Jenkins Pipeline Stages
### 1️⃣ Code
- Clones the repository from GitHub  
```groovy
git url: "https://github.com/SwayattDrishtigochar/devops-task", branch:"main"
