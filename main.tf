data "azurerm_dns_mx_record" "dns_mx_record_lookup" {
  for_each = var.dns_mx_record_lookup

  resource_group_name = each.value.resource_group_name
  zone_name           = each.value.zone_name
  name                = each.value.name
}

