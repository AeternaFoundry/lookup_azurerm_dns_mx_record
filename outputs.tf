output "dns_mx_record_lookup_id" {
  description = "Map of id values across all dns_mx_record_lookup, keyed the same as var.dns_mx_record_lookup"
  value       = { for k, v in data.azurerm_dns_mx_record.dns_mx_record_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dns_mx_record_lookup_fqdn" {
  description = "Map of fqdn values across all dns_mx_record_lookup, keyed the same as var.dns_mx_record_lookup"
  value       = { for k, v in data.azurerm_dns_mx_record.dns_mx_record_lookup : k => v.fqdn if v.fqdn != null && length(v.fqdn) > 0 }
}
output "dns_mx_record_lookup_name" {
  description = "Map of name values across all dns_mx_record_lookup, keyed the same as var.dns_mx_record_lookup"
  value       = { for k, v in data.azurerm_dns_mx_record.dns_mx_record_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dns_mx_record_lookup_record" {
  description = "Map of record values across all dns_mx_record_lookup, keyed the same as var.dns_mx_record_lookup"
  value       = { for k, v in data.azurerm_dns_mx_record.dns_mx_record_lookup : k => v.record if v.record != null && length(v.record) > 0 }
}
output "dns_mx_record_lookup_resource_group_name" {
  description = "Map of resource_group_name values across all dns_mx_record_lookup, keyed the same as var.dns_mx_record_lookup"
  value       = { for k, v in data.azurerm_dns_mx_record.dns_mx_record_lookup : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "dns_mx_record_lookup_tags" {
  description = "Map of tags values across all dns_mx_record_lookup, keyed the same as var.dns_mx_record_lookup"
  value       = { for k, v in data.azurerm_dns_mx_record.dns_mx_record_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "dns_mx_record_lookup_ttl" {
  description = "Map of ttl values across all dns_mx_record_lookup, keyed the same as var.dns_mx_record_lookup"
  value       = { for k, v in data.azurerm_dns_mx_record.dns_mx_record_lookup : k => v.ttl if v.ttl != null }
}
output "dns_mx_record_lookup_zone_name" {
  description = "Map of zone_name values across all dns_mx_record_lookup, keyed the same as var.dns_mx_record_lookup"
  value       = { for k, v in data.azurerm_dns_mx_record.dns_mx_record_lookup : k => v.zone_name if v.zone_name != null && length(v.zone_name) > 0 }
}

