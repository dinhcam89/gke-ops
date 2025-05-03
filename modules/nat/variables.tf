variable "router_name" {
  description = "The name of the Cloud Router"
  type        = string
}

variable "nat_name" {
  description = "The name of the NAT"
  type        = string
}

variable "region" {
  description = "The region for the NAT and Router"
  type        = string
}

variable "network" {
  description = "The network for the NAT to attach to"
  type        = string
}