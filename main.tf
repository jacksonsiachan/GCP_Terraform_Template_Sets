provider "google" {
  project = var.project
  region  = var.region
}

data "google_compute_image" "webserver_image" {
  family  = "ubuntu-1804-lts"
  project = "ubuntu-os-cloud"
}

resource "google_compute_instance" "vm_instance" {
  name                      = "${var.name}-${count.index + 1}"
  machine_type              = var.machine_type
  zone                      = var.zone
  allow_stopping_for_update = var.allow_stopping_for_update
  count                     = var.servers

  boot_disk {
    initialize_params {
      image = data.google_compute_image.webserver_image.self_link
      type  = var.boot_disk_type
    }
  }

  network_interface {
    network = google_compute_network.data_center.name
  }
  tags = ["web"]
}

resource "google_compute_network" "data_center" {
  description             = var.description
  name                    = "datacenter"
  auto_create_subnetworks = var.auto_create_subnetworks
  project                 = var.project
}


resource "google_compute_firewall" "web_traffic" {
  name          = "web"
  network       = google_compute_network.data_center.name
  source_ranges = ["0.0.0.0/0"]
  allow {
    ports    = var.firewall_ports
    protocol = "tcp"
  }
  source_tags = ["web"]
}
