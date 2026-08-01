# 🛒 E-Commerce Store on AWS using Terraform & Docker

<p align="center">

![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4?logo=terraform)
![AWS](https://img.shields.io/badge/AWS-EC2-FF9900?logo=amazonaws)
![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker)
![Node.js](https://img.shields.io/badge/Node.js-339933?logo=node.js)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-black?logo=github)

</p>

> Deploy a multi-service Node.js E-Commerce application on **AWS EC2** using **Terraform** for Infrastructure as Code and **Docker** for containerization.

---

# 📚 Table of Contents

- Project Overview
- Features
- Architecture
- Tech Stack
- Repository Structure
- Terraform Modules
- Docker Services
- Deployment Workflow
- Installation
- Verification
- Screenshots
- Troubleshooting
- Cleanup
- Future Enhancements
- Author
- License

# 📖 Project Overview

This project provisions an AWS EC2 instance with Terraform and deploys a Dockerized
microservices-based e-commerce application consisting of a frontend and four backend
services (User, Product, Cart and Order).

# ✨ Features

- Infrastructure as Code using Terraform
- Dockerized microservices
- AWS EC2 deployment
- Automated provisioning using userdata.sh
- Production-style repository layout
- Screenshot based deployment evidence

# 🏗️ Architecture

```mermaid
flowchart LR
Developer-->GitHub
GitHub-->Terraform
Terraform-->AWS
AWS-->EC2
EC2-->Docker
Docker-->Frontend
Docker-->User
Docker-->Product
Docker-->Cart
Docker-->Order
Frontend-->User
Frontend-->Product
Frontend-->Cart
Frontend-->Order
```

# ☁️ Tech Stack

| Layer | Technology |
|-------|------------|
| Cloud | AWS EC2 |
| IaC | Terraform |
| Containers | Docker |
| Runtime | Node.js |
| OS | Ubuntu |
| Version Control | Git & GitHub |

# 📂 Repository Structure

```text
.
├── frontend/
├── backend/
│   ├── user-service/
│   ├── product-service/
│   ├── cart-service/
│   └── order-service/
├── terraform/
│   ├── provider.tf
│   ├── network.tf
│   ├── security-group.tf
│   ├── ec2.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── userdata.sh
├── screenshots/
└── README.md
```

# 🌍 Terraform Resources

| File | Purpose |
|------|---------|
| provider.tf | AWS provider configuration |
| network.tf | Network configuration |
| security-group.tf | Security group rules |
| ec2.tf | EC2 instance provisioning |
| variables.tf | Input variables |
| outputs.tf | Terraform outputs |
| userdata.sh | Bootstrap Docker & application |

# 🐳 Docker Services

- Frontend
- User Service
- Product Service
- Cart Service
- Order Service

# 🚀 Deployment Workflow

1. Clone repository
2. Configure AWS credentials
3. terraform init
4. terraform plan
5. terraform apply
6. SSH into EC2
7. User data installs Docker
8. Build/Run containers
9. Verify application

# ⚙️ Installation

```bash
git clone https://github.com/rahulsahaneDEVOPS/E-CommerceStore-Terraform-Docker-AWS.git
cd E-CommerceStore-Terraform-Docker-AWS/terraform
terraform init
terraform plan
terraform apply
```

# ✅ Verification

```bash
terraform state list
terraform output
docker ps
docker images
docker logs <container>
```

# 📸 Deployment Screenshots

## 01. 01 User Service Docker Build

![01 User Service Docker Build](screenshots/01_user_service_docker_build.png)

Brief description of this deployment step.

## 02. 02 All Docker Images

![02 All Docker Images](screenshots/02_all_docker_images.png)

Brief description of this deployment step.

## 03. 03 User Service Container Running

![03 User Service Container Running](screenshots/03_user_service_container_running.png)

Brief description of this deployment step.

## 04. 04 Dockerhub Tagged Images

![04 Dockerhub Tagged Images](screenshots/04_dockerhub_tagged_images.png)

Brief description of this deployment step.

## 05. 05 Dockerhub Repositories

![05 Dockerhub Repositories](screenshots/05_dockerhub_repositories.png)

Brief description of this deployment step.

## 06. 06 Terraform Version

![06 Terraform Version](screenshots/06_terraform_version.png)

Brief description of this deployment step.

## 07. 07 Iam User Created

![07 Iam User Created](screenshots/07_iam_user_created.png)

Brief description of this deployment step.

## 08. 08 Access Key Created

![08 Access Key Created](screenshots/08_access_key_created.png)

Brief description of this deployment step.

## 09. 09 Aws Configure

![09 Aws Configure](screenshots/09_aws_configure.png)

Brief description of this deployment step.

## 10. 10 Aws Identity

![10 Aws Identity](screenshots/10_aws_identity.png)

Brief description of this deployment step.

## 11. 11 Terraform Files Created

![11 Terraform Files Created](screenshots/11_terraform_files_created.png)

Brief description of this deployment step.

## 12. 12 Terraform Files Created

![12 Terraform Files Created](screenshots/12_terraform_files_created.png)

Brief description of this deployment step.

## 13. 13 Network Tf

![13 Network Tf](screenshots/13_network_tf.png)

Brief description of this deployment step.

## 14. 14 A Security Group Tf

![14 A Security Group Tf](screenshots/14_A_security_group_tf.png)

Brief description of this deployment step.

## 15. 14 Security Group Tf

![14 Security Group Tf](screenshots/14_security_group_tf.png)

Brief description of this deployment step.

## 16. 15 Ec2 Tf

![15 Ec2 Tf](screenshots/15_ec2_tf.png)

Brief description of this deployment step.

## 17. 16 Terraform Init

![16 Terraform Init](screenshots/16_terraform_init.png)

Brief description of this deployment step.

## 18. 17 Terraform Validate

![17 Terraform Validate](screenshots/17_terraform_validate.png)

Brief description of this deployment step.

## 19. 18 Terraform Plan Success

![18 Terraform Plan Success](screenshots/18_terraform_plan_success.png)

Brief description of this deployment step.

## 20. 19 Terraform Apply Success

![19 Terraform Apply Success](screenshots/19_terraform_apply_success.png)

Brief description of this deployment step.

## 21. 20 Ec2 Ssh Login

![20 Ec2 Ssh Login](screenshots/20_ec2_ssh_login.png)

Brief description of this deployment step.

## 22. 21 Docker Ps

![21 Docker Ps](screenshots/21_docker_ps.png)

Brief description of this deployment step.

## 23. 22 Frontend Live

![22 Frontend Live](screenshots/22_frontend_live.png)

Brief description of this deployment step.

## 24. 23 Docker Images

![23 Docker Images](screenshots/23_docker_images.png)

Brief description of this deployment step.

## 25. 24 Cloud Init Status

![24 Cloud Init Status](screenshots/24_cloud_init_status.png)

Brief description of this deployment step.

## 26. 25 Userdata Log

![25 Userdata Log](screenshots/25_userdata_log.png)

Brief description of this deployment step.


# 🛠️ Troubleshooting

| Issue | Resolution |
|------|------------|
| Terraform init fails | Verify AWS credentials |
| EC2 not reachable | Check Security Group and key pair |
| Docker container stopped | Review docker logs |
| Port conflict | Verify exposed ports |
| App not loading | Confirm services are running |

# 🧹 Cleanup

```bash
terraform destroy
```

# 🚀 Future Enhancements

- Application Load Balancer
- Auto Scaling Group
- Amazon RDS
- GitHub Actions CI/CD
- CloudWatch Monitoring
- HTTPS with ACM

# 👨‍💻 Author

**Rahul Sahane**

Linux & Cloud Administrator • RHCSA • RHCE • Azure Certified

GitHub: https://github.com/rahulsahaneDEVOPS

# 📄 License

MIT License.
