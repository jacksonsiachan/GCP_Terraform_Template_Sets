
variable "name" {
  type    = string
  default = "server"

}
variable "machine_type" {
  type    = string
  default = "f1-micro"
}

variable "zone" {
  type    = string
  default = "asia-southeast1-a"
}

variable "allow_stopping_for_update" {
  type    = bool
  default = false

}

variable "boot_disk_type" {
  type    = string
  default = "pd-standard"
}

variable "servers" {
  type    = number
  default = 1

}

variable "project" {
  type    = string
  default = "terraform-280514"

}

variable "firewall_ports" {
  type    = list
  default = ["80", "8080", "1000-2000"]

}

variable "auto_create_subnetworks" {
  type    = bool
  default = true
}

variable "description" {
  type    = string
  default = "A custom VPC for your new Ubuntu web server."
}

variable "region" {
  type    = string
  default = "asia-southeast1"
}
