module "vpc" {
  source       = "../../modules/vpc"
  network_name = "dev-network"
  subnet_name  = "dev-subnet"
  subnet_cidr  = "10.0.0.0/16"
  region       = "us-central1"
}

module "gke" {
  source           = "../../modules/gke"
  cluster_name     = "dev-cluster"
  region           = "us-central1"
  initial_node_count = 3
  machine_type     = "e2-medium"
}