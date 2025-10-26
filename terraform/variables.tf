variable "aws_region" {
  default = "ap-south-1"
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

variable "ami" {
  default = "ami-0d5eff06f840b45e9" # Update this to a valid AMI in your region
}

variable "instance_type" {
  default = "t2.micro"
}

variable "project_tag" {
  default = "DevOps_Assignment12_ITA732"
}


variable "key_name" {
  default = "devops_assignment12_ita732_key"
}
