# 📖 Project Write-up

## 🛠️ Tools & Services Used
- **GitHub** – Source code management and version control
- **Jenkins** – CI/CD pipeline automation
- **Docker** – Containerization of Node.js application
- **DockerHub** – Image registry for Docker images
- **EC2 (AWS)** – Deployment server
- **Node.js & npm** – Runtime and package management
- **Docker Compose** – Multi-container application deployment

---

## ⚡ Challenges Faced & Solutions

1. **Jenkins not starting properly**
   - **Issue:** Jenkins service failed to start at first  
   - **Solution:** Ran Jenkins inside Docker container and checked logs to debug  

2. **Container already exists error**
   - **Issue:** Docker container conflicts during redeployment  
   - **Solution:** Used `docker rm -f` and `docker compose down || true` before `docker compose up`  

3. **DockerHub login error in Jenkins**
   - **Issue:** Jenkins pipeline failed at push stage due to credentials  
   - **Solution:** Added DockerHub username/password in Jenkins credentials (`dockerHubCred`) and used `withCredentials` binding  

4. **Accessing deployed app**
   - **Issue:** Security groups / firewall rules blocked port 3000 on EC2  
   - **Solution:** Added inbound rule in EC2 Security Group for port 3000 (TCP)  




