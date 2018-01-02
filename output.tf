output "project_id" {
  description = "The project id "
  value = "${google_project.project.*.project_id}"
}

output "instance_id" {
  description = "Id of instance created"
  value = "${google_compute_instance.default.*.id}"
}

output "test_subnetwork_project" {
  description = "The list of public DNS names assigned to the test_target instances"
  value       = ["${google_compute_instance.default.network_interface.0.subnetwork_project}"]
}

output "test_target_public_dns" {
  description = "The list of public DNS names assigned to the test_target instances"
  value       = ["${google_compute_instance.default.network_interface.0.access_config.0.nat_ip}"]
}

output "network_details" {
  description = "The list of public DNS names assigned to the test_target instances"
  value       = ["${google_compute_instance.default.*.network_interface}"]
}

output "network" {
  value = "${data.google_compute_network.default.name}"
}

output "gateway_ipv4" {
  value = "${data.google_compute_network.default.gateway_ipv4 }"
}

output "subnetworks_self_links" {
  value = "${data.google_compute_network.default.subnetworks_self_links }"
}

output "self_link" {
  value = "${data.google_compute_network.default.self_link }"
}

output "terraform_state" {
  description = "The path to the Terraform state file"
  value       = "${path.module}/terraform.tfstate.d/${terraform.workspace}/terraform.tfstate"
}
