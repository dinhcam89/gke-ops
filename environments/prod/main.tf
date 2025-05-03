module "vpc" {
  source       = "../../modules/vpc"
  network_name = "prod-network"
  subnet_name  = "prod-subnet"
  subnet_cidr  = "10.1.0.0/16"
  region       = "us-central1"
}

module "gke" {
  source           = "../../modules/gke"
  cluster_name     = "prod-cluster"
  region           = "us-central1"
  initial_node_count = 5
  machine_type     = "e2-standard-4"
}