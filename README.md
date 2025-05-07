# Infrastructure as Code – Examples

## 📌 Purpose
This repository contains practical examples of Infrastructure as Code (IaC) using tools like **Terraform** and **AWS CloudFormation**.

The goal is to demonstrate how modern cloud infrastructure can be provisioned, configured, and maintained in a declarative and reproducible way.

---

## ⚙️ Technologies Used

- Terraform (HashiCorp)
- AWS CloudFormation (YAML)
- AWS EC2, VPC, IAM
- GitHub

---

## 📁 Project Structure

```
infrastructure-as-code-examples/
├── terraform/             # Terraform configurations (EC2, VPC)
│   ├── main.tf
│   ├── variables.tf
│   ├── provider.tf
│   └── outputs.tf
├── cloudformation/        # CloudFormation templates (YAML)
│   └── cloudformation_ec2_vpc.yaml
├── images/                # Architecture diagrams
└── README.md              # This file
```

---

## 🚀 Examples

### 🔸 Terraform
Creates an EC2 instance and a custom VPC setup:

```bash
terraform init
terraform plan
terraform apply
```

Files:
- `main.tf`
- `variables.tf`
- `provider.tf`
- `outputs.tf`

---

### 🔸 AWS CloudFormation
Defines infrastructure using YAML templates.

Deploy via AWS Console or AWS CLI:

```bash
aws cloudformation deploy \
  --template-file cloudformation/cloudformation_ec2_vpc.yaml \
  --stack-name demo-stack
```

---

## 👤 Author

Erkan Baran  
[GitHub Profile](https://github.com/ErkanBarann)  
[Portfolio Website](https://www.erkanbaran.me)
