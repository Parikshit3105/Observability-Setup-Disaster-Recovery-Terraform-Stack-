# Observability-Setup-Disaster-Recovery-Terraform-Stack
# Terraform Setup and Deployment Guide

## Prerequisites

Before deploying the Terraform stack, ensure you have the following prerequisites:

- **AMI ID for the observability server**
- **Key pair for SSH access**
- **Private subnet ID (private_subnet_id_A)**
- **VPC ID**
- **VPC CIDR**
- **IAM Role with relevant permissions**

## Terraform Setup Steps

### Step 1: Provide AWS Credentials

Open the `provider.tf` file located in your Terraform stack directory. Provide your AWS secret key and access key in the appropriate fields. Save the file.

### Step 2: Define Variables

Create a `terraform.tfvars` file in the same directory as your Terraform configuration files. Define variables such as region, AMI ID, instance type, etc., in this file. Save the file.

### Step 3: Navigate to Stack Directory

Open your Windows shell (or any terminal) and change the directory to where the Terraform stack is located using the `cd` command:

cd /path/to/your/terraform/stack
### Step 4: Initialize Terraform
Run the following command to initialize Terraform:

----> terraform init <-----


### Step 5: Plan Deployment
Run the following command to see what changes Terraform will apply:
---->terraform plan <-----


### Step 6: Apply Terraform Configuration
Apply the Terraform configuration to create resources:
----->terraform apply<-------

During the apply process, Terraform will prompt you to confirm the changes. 

Type yes and press Enter.

Note: Be cautious during this step, as it will create resources in your AWS environment.

### Deleting Resources
To delete the resources created by Terraform, use the following command:
 ------> terraform destroy <------
Terraform will prompt you to confirm the deletion. Type yes and press Enter.

#### Note: Be careful when running terraform destroy as it will remove all the resources created by Terraform.
