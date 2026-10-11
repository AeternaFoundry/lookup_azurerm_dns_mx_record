variable "dns_mx_record_lookup" {
  description = <<EOT
Map of dns_mx_record_lookup, attributes below
Required:
    - resource_group_name
    - zone_name
Optional:
    - name
EOT

  type = map(object({
    resource_group_name = string
    zone_name           = string
    name                = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.dns_mx_record_lookup : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dns_mx_record_lookup : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dns_mx_record_lookup : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

