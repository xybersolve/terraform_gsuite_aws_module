#
# gsuite mail record
#
resource "aws_route53_record" "mx" {
  zone_id = "${local.host_zone_id}"
  name    = ""
  type    = "MX"

  records = [
    "1 ASPMX.L.GOOGLE.COM",
    "5 ALT1.ASPMX.L.GOOGLE.COM",
    "5 ALT2.ASPMX.L.GOOGLE.COM",
    "10 ASPMX2.GOOGLEMAIL.COM",
    "10 ASPMX3.GOOGLEMAIL.COM",
  ]

  ttl = "${var.ttl}"
}
#
# gsuite TXT identifier
#
resource "aws_route53_record" "txt" {
    zone_id = "${local.host_zone_id}"
    #name    = "${var.dns_domain_name}"
    name    = ""
    type    = "TXT"
    ttl     = "3600"
    records = [ "${var.gsuite-id}" ]
}

#
# subdomain records
#
resource "aws_route53_record" "gsuite" {
  count   = "${length(var.gsuite-apps)}"
  zone_id = "${local.host_zone_id}"
  name    = "${element(var.gsuite-apps, count.index)}"
  type    = "CNAME"
  records = ["ghs.google.com"]
  ttl     = "${var.ttl}"
}
