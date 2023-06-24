module "test" {
  source = "../../../regional"

  # Cloud NAT (network address translation) lets certain resources without external IP addresses create outbound connections to the internet.
  # https://cloud.google.com/nat/docs/overview

  network                            = "kitchen-vpc"
  prefix                             = "kitchen-vpc-subnetworks"
  project                            = var.project
  region                             = "us-east4"
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetwork_names                   = ["kitchen-subnet-us-east4"]
}
