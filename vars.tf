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
# variable "aws_access_key" {}
# variable "aws_secret_key" {}
# variable "aws_profile" {}
# variable "aws_region" {}
# variable "application" {}
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
