terraform {
  required_providers {
    pihole = {
      source = "ryanwholey/pihole"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}
