resource "azurerm_resource_group" "rg2" {
  for_each = { for pe in var.private_endpoints : pe.name => pe }
  name     = each.value.name
  location = var.location
  tags = {
    atag = each.value.name
  }
}

resource "azurerm_private_dns_zone" "dns_zone" {
  for_each            = { for pe in var.private_endpoints : pe.name => pe }
  name                = "${each.value.name}.${each.value.parent_dns_zone}"
  resource_group_name = azurerm_resource_group.rg2[each.key].name
}

resource "azurerm_private_endpoint" "priv_endpoint" {
  for_each            = { for pe in var.private_endpoints : pe.name => pe }
  name                = "${each.key}-private-endpoint"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = "${each.key}-service-connection"
    private_connection_resource_id = each.value.target_resource_id
    subresource_names              = each.value.target_subresource_names
    # Private Endpoint shouldn't require Manual Approval from the remote resource owner.
    is_manual_connection = false
  }

  private_dns_zone_group {
    name                 = "${each.key}-dns-zone-group"
    private_dns_zone_ids = [azurerm_private_dns_zone.dns_zone[each.key].id]
  }

  depends_on = [azurerm_private_dns_zone.dns_zone]
}
