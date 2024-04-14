module "test" {
  source = "../../regional"

  # Cloud NAT (network address translation) lets certain resources without external IP addresses create outbound connections to the internet.
  # https://cloud.google.com/nat/docs/overview

  network = "terraform-test-vpc"
  project = var.project
  region  = "us-east1"
}
