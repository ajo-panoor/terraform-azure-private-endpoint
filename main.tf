resource "azurerm_private_dns_zone" "dns_zone" {
  for_each            = { for pe in var.private_endpoints : pe.name => pe }
  name                = "${each.value.name}.${each.value.parent_dns_zone}"
  resource_group_name = var.resource_group_name
  tags                = var.tags
}
# Create virtual network link
resource "azurerm_private_dns_zone_virtual_network_link" "vnet_link" {
  name                  = "${each.key}-vnet-link"
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.dns_zone[each.key].name
  virtual_network_id    = var.subnet_id
  tags                  = var.tags
}

resource "azurerm_private_endpoint" "priv_endpoint" {
  for_each            = { for pe in var.private_endpoints : pe.name => pe }
  name                = "${each.key}-private-endpoint"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id
  vnet_id             = var.vnet_id
  tags                = var.tags

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
