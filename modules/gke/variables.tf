variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
}

variable "region" {
  description = "The region where the GKE cluster will be created"
  type        = string
}

variable "initial_node_count" {
  description = "The initial number of nodes in the cluster"
  type        = number
}

variable "machine_type" {
  description = "The type of machine to use for nodes"
  type        = string
  default     = "e2-medium"
}