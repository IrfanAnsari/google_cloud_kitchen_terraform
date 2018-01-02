terraform {
  required_version = "~> 0.11.0"
}

provider "google" {
  region      = "${var.gcp_region }"
  project = "${var.project_name}"
}

module "example" {
  source                   = "../../../"
  project_name = "${var.project_name}"
  machine_type = "${var.machine_type}"
  gcp_instance = "${var.gcp_instance}"
  billing_account = "${var.billing_account}"
  org_id = "${var.org_id}"
}
