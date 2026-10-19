
# AWS Application Load Balancer + Auto Scaling with Terraform

## Project Overview

Deployed a highly available web application infrastructure on AWS using Terraform.

The infrastructure uses an Application Load Balancer (ALB) to distribute HTTP traffic across EC2 instances managed by an Auto Scaling Group (ASG).

## AWS Services Used

- Amazon EC2
- Application Load Balancer (ALB)
- Auto Scaling Group (ASG)
- Amazon VPC
- Public Subnets
- Internet Gateway
- Security Groups
- Target Groups

## Tools Used

- Terraform
- AWS CLI
- Ubuntu Linux
- Nginx
- Git and GitHub

## Architecture

Internet Users
    |
Application Load Balancer
    |
Target Group
    |
Auto Scaling Group
    |
    +-- EC2 Instance 1 (Nginx)
    |
    +-- EC2 Instance 2 (Nginx)

## What I Built

1. Created a custom VPC with two public subnets across different Availability Zones.
2. Configured an Internet Gateway and route tables.
3. Created security groups to control network traffic.
4. Configured an EC2 Launch Template with an Nginx startup script.
5. Created an Application Load Balancer and Target Group.
6. Deployed an Auto Scaling Group with a desired capacity of two EC2 instances.
7. Verified that the website was accessible through the ALB DNS address.

## Troubleshooting Experience

During deployment, the application returned a 502 Bad Gateway error.

I investigated:
- Target Group health checks
- EC2 instance health
- Launch Template versions
- EC2 startup logs
- Terraform configuration

I discovered a formatting issue in the EC2 startup script, corrected it, and deployed an updated Launch Template.

After replacing the EC2 instances, the website loaded successfully.

## Skills Demonstrated

- Infrastructure as Code (IaC)
- AWS networking
- Load balancing
- Auto Scaling
- Linux server configuration
- Troubleshooting AWS infrastructure
- Terraform deployment and management

## Cleanup

Run `terraform destroy` to remove the infrastructure when testing is complete.
