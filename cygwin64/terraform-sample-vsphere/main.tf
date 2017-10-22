variable "vsphere_user" {
  default = "xxx"
}

variable "vsphere_password" {
  default = "xxx"
}

variable "vsphere_server" {
  default = "xxx"
}

# Configure the VMware vSphere Provider
provider "vsphere" {
  user           = "${var.vsphere_user}"
  password       = "${var.vsphere_password}"
  vsphere_server = "${var.vsphere_server}"

  # if you have a self-signed cert
  allow_unverified_ssl = true
}
