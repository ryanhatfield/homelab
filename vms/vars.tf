variable "ssh_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDEXeTnXh8uSt4t1Mw3I7cF1OuSHsCDLcuahXEKVy5so5DvccgL+8pfj1+flapeHHZMDPfzlTuxyS8P3rvQ+SfXSsbC1XHhRRfDP4d/k8d05xLjV2J0UqNt9q56Uxl5cX42anPjh2IbnEeFziMunmv4WJJIxPhbd4A28CR9molNDiSYjOOYLgQXkHsWCLhRXbcZ1Yq+jLcpDHximfVFK/rDUmWF+RO55chS5i06ZMmYTB6KLgNDEkH1ZTCT8QiI6C7XLOPAM1LDR2e0ET2uNM1Rl8Uwb02fUPYWDxuJakym+Mcog++P+BiFhkuE468doY7CbjIa3awIUZwNDGBU1ztMLrbJULeM++5eCxT5VwJn1iGk6bSFF/WzMuRz58ja+Dl9jtR8bSxWPF5crVnHRQxGPzvShnGuwOC3lstS1ZxuuDuHfqqhHwE79eFrmj9orzep2D/tjSemkLnawD4+Yc+T8aYUBvRa7DFfYK6BQv21cdim/R97CBSWccncKQj4JkU= rhatfield@bushelpowered.com"
}
variable "proxmox_host" {
  description = "VM host to install to"
  default     = "arnold"
}
variable "proxmox_template_name" {
  description = "VM template created in proxmox"
  default     = "ubuntu-2004-cloudinit-template"
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
