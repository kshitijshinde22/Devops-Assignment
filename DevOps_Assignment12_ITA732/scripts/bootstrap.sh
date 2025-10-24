#!/bin/bash
set -e
cd terraform
terraform init
terraform apply -auto-approve

echo "Terraform done. Outputs:"
terraform output

cp terraform-key.pem ../ansible/terraform-key.pem
chmod 600 ../ansible/terraform-key.pem
cd ..

echo "Edit ansible/inventory.ini with the IPs from terraform output, then run:"
echo "ansible-playbook ansible/playbook.yml -i ansible/inventory.ini --private-key=terraform/terraform-key.pem"
