
variable "project_name" {
  default = "kitchen-project"
}

variable "gcp_instance" {
  default = "tf-compute-1"
}

variable "machine_type" {
  default = "f1-micro"
}


variable "gcp_region" {
  default = "europe-west2"
}


variable "org_id" {
  description = "Organisation id"
  type = "string"
}

variable "billing_account" {
  description = "Billing account for the project"
  type = "string"
}
