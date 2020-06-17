
variable "name" {
    type = string
    default = "server"

}
variable "machine_type" {
     type = string
     default = "f1-micro"
}

variable "zone" {
     type = string
     default = "asia-southeast1-a"
}

variable "allow_stopping_for_update" {
     type = bool
     default = false

}

variable "image" {
     type = string
     default = "debian-cloud/debian-9"

}

variable "network" {
     type = string
     default = "default"

}

variable "servers" {
     type = number
     default = 1

}

variable "project" {
    type = string

}

variable "region" {
    type = string
    default = "asia-southeast1"
}
