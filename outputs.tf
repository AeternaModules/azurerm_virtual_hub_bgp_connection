output "virtual_hub_bgp_connections_id" {
  description = "Map of id values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = { for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : k => v.id }
}
output "virtual_hub_bgp_connections_name" {
  description = "Map of name values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = { for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : k => v.name }
}
output "virtual_hub_bgp_connections_peer_asn" {
  description = "Map of peer_asn values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = { for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : k => v.peer_asn }
}
output "virtual_hub_bgp_connections_peer_ip" {
  description = "Map of peer_ip values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = { for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : k => v.peer_ip }
}
output "virtual_hub_bgp_connections_virtual_hub_id" {
  description = "Map of virtual_hub_id values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = { for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : k => v.virtual_hub_id }
}
output "virtual_hub_bgp_connections_virtual_network_connection_id" {
  description = "Map of virtual_network_connection_id values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = { for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : k => v.virtual_network_connection_id }
}

