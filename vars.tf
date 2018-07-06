# Project specific
variable "gsuite-apps" {
  type = "list"
  #default = ["mail", "cal", "docs"]
}
variable "ttl" {
  type = "string"
  default = "3600"
}

variable "gsuite-id" {
  type = "string"
}

variable "host_name" {
  type = "string"
}
variable "dns_domain_name" {
  type = "string"
}

# Global uber-project variables
#variable "aws_access_key" {}
#variable "aws_secret_key" {}
# variable "environment" {
#   description = "Which enviroinment are we in?"
#   default = "prod"
# }
#
# variable "zone" {
#   default = "mail"
# }
#
# variable "instance_type" {
#   default = "t2.small"
# }
#
# variable "aws_profile" {}
# variable "aws_region" {}
# variable "application" {}
# variable "local_ips" {
#   type = "list"
# }
# variable "ssh_public_key_path" {}
# variable "ssh_private_key_path" {}
# variable "ssh_public_key_name" {}
#
# variable "all_ips" {
#   type = "list"
#   default = ["0.0.0.0/0"]
# }



# variable "extra_tags" {
#   default = [
#     {
#       key = "Environment",
#       value = "${var.environment}"
#     }, {
#       key = "Application",
#       vale = "${var.application}"
#     }, {
#       key = "Terraform",
#       value = "True"
#     }
#   ]
# }
