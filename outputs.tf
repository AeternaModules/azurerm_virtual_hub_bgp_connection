output "virtual_hub_bgp_connections_id" {
  description = "Map of id values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = { for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "virtual_hub_bgp_connections_name" {
  description = "Map of name values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = { for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "virtual_hub_bgp_connections_peer_asn" {
  description = "Map of peer_asn values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = { for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : k => v.peer_asn if v.peer_asn != null }
}
output "virtual_hub_bgp_connections_peer_ip" {
  description = "Map of peer_ip values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = { for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : k => v.peer_ip if v.peer_ip != null && length(v.peer_ip) > 0 }
}
output "virtual_hub_bgp_connections_virtual_hub_id" {
  description = "Map of virtual_hub_id values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = { for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : k => v.virtual_hub_id if v.virtual_hub_id != null && length(v.virtual_hub_id) > 0 }
}
output "virtual_hub_bgp_connections_virtual_network_connection_id" {
  description = "Map of virtual_network_connection_id values across all virtual_hub_bgp_connections, keyed the same as var.virtual_hub_bgp_connections"
  value       = { for k, v in azurerm_virtual_hub_bgp_connection.virtual_hub_bgp_connections : k => v.virtual_network_connection_id if v.virtual_network_connection_id != null && length(v.virtual_network_connection_id) > 0 }
}

