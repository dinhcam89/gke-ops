output "router_name" {
  description = "The name of the Cloud Router"
  value       = google_compute_router.nat_router.name
}

output "nat_name" {
  description = "The name of the NAT"
  value       = google_compute_router_nat.nat.name
}