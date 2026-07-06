variable "virtual_hub_bgp_connections" {
  description = <<EOT
Map of virtual_hub_bgp_connections, attributes below
Required:
    - name
    - peer_asn
    - peer_ip
    - virtual_hub_id
Optional:
    - virtual_network_connection_id
EOT

  type = map(object({
    name                          = string
    peer_asn                      = number
    peer_ip                       = string
    virtual_hub_id                = string
    virtual_network_connection_id = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_hub_bgp_connections : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_hub_bgp_connections : (
        v.peer_asn >= 0
      )
    ])
    error_message = "must be at least 0"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_virtual_hub_bgp_connection's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: virtual_hub_id
  #   source:    [from virtualwans.ValidateVirtualHubID] !ok
  # path: virtual_hub_id
  #   source:    [from virtualwans.ValidateVirtualHubID] err != nil
  # path: peer_ip
  #   source:    validation.IsIPv4Address(...) - no translation rule yet, add one
  # path: virtual_network_connection_id
  #   source:    [from virtualwans.ValidateHubVirtualNetworkConnectionID] !ok
  # path: virtual_network_connection_id
  #   source:    [from virtualwans.ValidateHubVirtualNetworkConnectionID] err != nil
}

