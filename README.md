# DevOps_Assignment12 - ITA732

This repo is prepared for Assignment 1 & 2 (DevOps) and is configured for Roll No **ITA732**.
It contains Terraform, Ansible, Docker Swarm, Django app, CI (GitHub Actions + Jenkinsfile), and helper scripts.

**Important**
- Do NOT commit terraform/terraform-key.pem to a public repo. Keep it private.
- Update `ansible/inventory.ini` with the public IPs from `terraform output` before running ansible.
- The Terraform AMI ID in `terraform/variables.tf` may need update depending on your AWS region.

Follow the runbook in the assignment statement to provision and deploy.

