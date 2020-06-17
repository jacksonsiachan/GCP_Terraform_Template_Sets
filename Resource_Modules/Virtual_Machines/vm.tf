provider "google" {
   project = var.project
   region = var.region
}

resource "google_compute_instance" "vm_instance" {
  name         = "${var.name}-${count.index + 1}"
  machine_type = var.machine_type
  zone         = var.zone
  allow_stopping_for_update = var.allow_stopping_for_update
  count = var.servers

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network
  }
}
