variable "aws_region" {
  default = "ap-south-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  # Ubuntu 20.04 LTS in ap-south-1 (example) — update if needed for your region
  default = "ami-0d5eff06f840b45e9"
}

variable "key_name" {
  default = "devops_assignment12_ita732_key"
}

variable "project_tag" {
  default = "DevOps_Assignment12_ITA732"
}
