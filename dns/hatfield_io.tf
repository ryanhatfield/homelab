
provider "cloudflare" {
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}

## Root Domain ##
resource "cloudflare_record" "terraform_managed_resource_16f5c981a76d2ec075abc958c43bd645" {
  name    = var.root_domain
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = var.ddns_domain
  zone_id = var.zone_id
}

## Code Server ##
resource "cloudflare_record" "terraform_managed_resource_146b1c9a9ec3d9437779af50d22d3e96" {
  name    = "code"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = var.root_domain
  zone_id = var.zone_id
}

## Squad K3s Cluster ##
resource "cloudflare_record" "terraform_managed_resource_3957c52499b91df6594e254c2c59dce1" {
  name    = "squad"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = var.root_domain
  zone_id = var.zone_id
}

## TP Link DDNS domain ##
resource "cloudflare_record" "terraform_managed_resource_45a492df12ce6017dbe4ca292e15c831" {
  name    = "*"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = var.ddns_domain
  zone_id = var.zone_id
}
