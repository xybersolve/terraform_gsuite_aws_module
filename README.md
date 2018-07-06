# terraform_gsuite_aws_module

> Custom Terraform Module to map corporate domain to GSuite, to provide 3rd party
email service for domain. Also, maps Google apps as subdomains.


Module Input Variables
----------------------
- `dns_host_name`:
- `host_name`:
- `ttl`:
- `gsuite-id`:
- `gsuite-apps`:

Notes
-----
This module is assumes that a Host Zone is already present.
This seems to be the most likely working scenario.
If this is not the case then create the Host Zone before using this module.

Usage
-----
A simple example to create AWS DNS records for `mydomain.com`.

```sh

module "gsuite" {
  source = "github.com/xybersolve/terraform_gsuite_aws_module"
  # source = "../../../modules/services/gsuite"
  gsuite-apps = ["mail", "cal", "docs"]
  host_name = "mydomain.com"
  dns_domain_name = "mydomain.com"
  gsuite-id = "google-site-verification=<gsuite supplied id>"
  ttl = "3600"
}


```


## [License](LICENSE.md)
