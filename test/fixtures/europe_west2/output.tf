
output "project_id" {
  description = "Project id"
  value       = "${module.example.project_id}"
}

output "instance_id" {
  description = "The instance_id"
  value       = "${module.example.instance_id}"
}

output "test_subnetwork_project" {
  description = "subproject network defined for this instance"
  value       = ["${module.example.test_subnetwork_project}"]
}

output "test_target_public_dns" {
  description = "The list of public DNS names assigned to the test_target instances"
  value       = ["${module.example.test_target_public_dns}"]
}

output "netweork_details" {
  description = "Network details"
  value       = ["${module.example.network_details}"]
}

output "netweork" {
  description = "Network details"
  value       = ["${module.example.network}"]
}

output "terraform_state" {
  description = "Terraform state"
  value       = "${module.example.terraform_state}"
}