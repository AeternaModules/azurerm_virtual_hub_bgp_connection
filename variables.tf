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
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

