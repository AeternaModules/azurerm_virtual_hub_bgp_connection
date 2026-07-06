output "virtual_hub_bgp_connections" {
  description = "All virtual_hub_bgp_connection resources"
  value       = azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections
}
output "virtual_hub_bgp_connections_name" {
  description = "List of name values across all virtual_hub_bgp_connections"
  value       = [for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : v.name]
}
output "virtual_hub_bgp_connections_peer_asn" {
  description = "List of peer_asn values across all virtual_hub_bgp_connections"
  value       = [for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : v.peer_asn]
}
output "virtual_hub_bgp_connections_peer_ip" {
  description = "List of peer_ip values across all virtual_hub_bgp_connections"
  value       = [for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : v.peer_ip]
}
output "virtual_hub_bgp_connections_virtual_hub_id" {
  description = "List of virtual_hub_id values across all virtual_hub_bgp_connections"
  value       = [for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : v.virtual_hub_id]
}
output "virtual_hub_bgp_connections_virtual_network_connection_id" {
  description = "List of virtual_network_connection_id values across all virtual_hub_bgp_connections"
  value       = [for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : v.virtual_network_connection_id]
}

