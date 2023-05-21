# Terraform Output Values
# https://www.terraform.io/language/values/outputs

output "name" {
  value = module.test.name
}

output "project_id" {
  value = module.test.project_id
}
