
resource "google_compute_instance" "default" {
  project      = "${google_project_services.project.project}"
  zone         = "${var.gcp_zone}"
  name         = "${var.gcp_instance}"
  machine_type = "${var.machine_type}"

  boot_disk {
    initialize_params {
      image = "ubuntu-1604-xenial-v20170328"
    }
  }

  tags = ["kitchen-terraform-example"]

  network_interface {
    network       = "${data.google_compute_network.default.name}"
    access_config = {
      // Ephemeral IP
    }
  }

  metadata {
    sshKeys = "${var.userCredentials["user"]}:${file(var.userCredentials["keyFile"])}"
  }
}

data "google_compute_network" "default" {
  name = "default"
  project = "${google_project_services.project.project}"
}
