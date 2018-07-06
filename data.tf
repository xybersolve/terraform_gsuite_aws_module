data "aws_route53_zone" "dns_host" {
  name = "${var.host_name}"
  private_zone = false
}

locals {
  host_zone_id = "${data.aws_route53_zone.dns_host.zone_id}"
}
