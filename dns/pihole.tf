provider "pihole" {
  url      = "http://${var.ip_prefix}.4"
  password = var.pihole_password
}

resource "pihole_dns_record" "squad" {
  domain = "squad.${var.root_domain}"
  ip     = "${var.ip_prefix}.3"
}

resource "pihole_dns_record" "pihole4" {
  domain = "pihole.${var.root_domain}"
  ip     = "${var.ip_prefix}.4"
}

resource "pihole_dns_record" "arnold" {
  domain = "arnold.${var.root_domain}"
  ip     = "${var.ip_prefix}.219"
}

resource "pihole_dns_record" "router" {
  domain = "router.${var.root_domain}"
  ip     = "${var.ip_prefix}.1"
}

resource "pihole_dns_record" "ha" {
  domain = "ha.${var.root_domain}"
  ip     = "${var.ip_prefix}.202"
}

resource "pihole_dns_record" "octopi" {
  domain = "octopi.${var.root_domain}"
  ip     = "${var.ip_prefix}.169"
}

resource "pihole_dns_record" "root" {
  domain = var.root_domain
  ip     = "${var.ip_prefix}.202"
}

