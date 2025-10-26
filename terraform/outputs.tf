output "instances_public_ips" {
  value = {
    for k, v in aws_instance.nodes : k => aws_eip.eips[k].public_ip
  }
}

output "pem_path" {
  value = "${path.module}/terraform-key.pem"
}
