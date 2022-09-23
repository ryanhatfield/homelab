terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "2.9.11"
    }
  }
}

provider "proxmox" {
  pm_api_url = "https://arnold.local:8006/api2/json"
}

resource "proxmox_vm_qemu" "k3s" {
  count       = 6
  name        = "k3s-vm-${count.index + 1}"
  target_node = var.proxmox_host
  clone       = var.proxmox_template_name
  agent       = 1
  os_type     = "cloud-init"
  cores       = 2
  sockets     = 1
  cpu         = "host"
  memory      = 2048
  scsihw      = "virtio-scsi-pci"
  bootdisk    = "scsi0"
  disk {
    slot     = 0
    size     = "10G"
    type     = "scsi"
    storage  = "local-lvm"
    iothread = 1
  }
  network {
    model  = "virtio"
    bridge = "vmbr0"
  }
  lifecycle {
    ignore_changes = [
      network,
    ]
  }
  ipconfig0 = "ip=${var.ip_prefix}.3${count.index + 1}/24,gw=${var.ip_prefix}.1"
  sshkeys   = <<EOF
  ${var.ssh_key}
  EOF
}

resource "proxmox_vm_qemu" "test" {
  count       = 1
  name        = "test-vm-${count.index + 1}"
  target_node = var.proxmox_host
  clone       = var.proxmox_template_name
  agent       = 1
  os_type     = "cloud-init"
  cores       = 2
  sockets     = 1
  cpu         = "host"
  memory      = 2048
  scsihw      = "virtio-scsi-pci"
  bootdisk    = "scsi0"
  disk {
    slot     = 0
    size     = "10G"
    type     = "scsi"
    storage  = "local-lvm"
    iothread = 1
  }
  network {
    model  = "virtio"
    bridge = "vmbr0"
  }
  lifecycle {
    ignore_changes = [
      network,
    ]
  }
  ipconfig0 = "ip=${var.ip_prefix}.4${count.index + 1}/24,gw=${var.ip_prefix}.1"
  sshkeys   = <<EOF
  ${var.ssh_key}
  EOF
}
