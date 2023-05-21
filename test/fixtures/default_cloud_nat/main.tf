module "test" {
  source = "../../../regional"

  # Cloud NAT (network address translation) lets certain resources without external IP addresses create outbound connections to the internet.
  # https://cloud.google.com/nat/docs/overview

  network    = "kitchen-vpc"
  project_id = var.project_id
  region     = "us-east1"
}
