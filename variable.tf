variable "gcp_region" {
  default = "europe-west2"
}

variable "gcp_zone" {
  default = "europe-west2-a"
}

variable "project_name" {
  default = "my-project"
}


variable "gcp_instance" {
  default = "tf-compute-1"
}

variable "machine_type" {
  default = "f1-micro"
}

variable "org_id" {
  description = "Organisation id"
  type = "string"
}

variable "billing_account" {
  description = "Billing account for the project"
  type = "string"
}

variable "userCredentials" {
  type = "map"
  default = {
    user = "ubuntu",
    keyFile = "~/.ssh/id_rsa_terraform.pub"
  }
}

