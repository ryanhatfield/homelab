variable "pihole_password" {
  description = "Pi-Hole Admin Password"
  type        = string
  sensitive   = true
}

variable "ip_prefix" {
  description = "First 3 octets of IP address for now"
  type        = string
}

variable "root_domain" {
  description = "Root domain name to use for DNS"
  type        = string
  default     = "example.com"
}

variable "cloudflare_email" {
  description = "Cloudflare email"
  type        = string
  sensitive   = true
}

variable "cloudflare_api_key" {
  description = "Cloudflare api key"
  type        = string
  sensitive   = true
}

variable "zone_id" {
  description = "Cloudflare Site Zone ID"
  type        = string
  default     = "449380d13b788159f5c997355dfff7b2"
}

variable "ddns_domain" {
  description = "Domain that is updated by TP Link DDNS"
  type        = string
}
