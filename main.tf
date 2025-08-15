output "blah" {
  value = var.private_endpoints
}

resource "azurerm_resource_group" "rg2" {
  for_each = { for pe in var.private_endpoints : pe.name => pe}
  name     = each.value.name
  location = "westus2"
  tags = {
    atag = each.value.name
  }
}

resource "azurerm_private_endpoint" "priv_endpoint" {
  for_each = { for pe in var.private_endpoints: pe.name => pe }
  name                  = "${each.key}-private-endpoint"
  location = var.location
  resource_group_name = var.resource_group_name
#  location = "westus2"
#  resource_group_name = "blah"
#  location            = azurerm_resource_group.this.location
#  resource_group_name = azurerm_resource_group.this.name
#  subnet_id           = azurerm_subnet.pe.id
#
#  private_service_connection {
#    name                           = "${lower(replace(var.company," ","-"))}-${var.app_name}-${var.environment}-psc"
#    private_connection_resource_id = azurerm_postgresql_flexible_server.pe.id
#    subresource_names              = ["postgresqlServer"]
#    is_manual_connection           = false
#  }
#
#  private_dns_zone_group {
#    name                 = azurerm_postgresql_flexible_server.pe.name
#    private_dns_zone_ids = [data.azurerm_private_dns_zone.postgres_dns_zone.id]
#  }
#
#  depends_on = [ azurerm_postgresql_flexible_server.pe, azurerm_subnet.pe ]
}

