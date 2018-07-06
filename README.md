# terraform_gsuite_aws_module

> Custom Terraform Module to map corporate domain to GSuite, to provide 3rd party
email service for domain. Also, maps Google apps as subdomains.


Module Input Variables
----------------------
- `dns_domain_name`: Corporate DNS domain name
- `host_name`: Name of host record, if other than corporate DNS
- `ttl`: Time to Live on new records
- `gsuite-id`: Google provided gsuite identifier
- `gsuite-apps`: Apps to map to subdomains [docs, cal, drive, etc]

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
  dns_domain_name = "mydomain.com"
  host_name = "mydomain.com"
  ttl = "3600"
  gsuite-id = "google-site-verification=<gsuite supplied id>"
  gsuite-apps = ["mail", "cal", "docs"]
}


```


## [License](LICENSE.md)
