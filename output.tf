output "private_endpoint_name" {
  description = "The name of the Private Link Endpoint"
  value       = azurerm_private_endpoint.priv_endpoint[each.key].name
}

output "private_endpoint_ip" {
  description = "The private IP address of the Private Link Endpoint"
  value       = azurerm_private_endpoint.priv_endpoint.private_service_connection[each.key].private_ip_address
}

output "private_endpoint_id" {
  description = "The ID of the Private Link Endpoint"
  value       = azurerm_private_endpoint.priv_endpoint[each.key].id
}
