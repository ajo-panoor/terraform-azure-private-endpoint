output "private_endpoint_ip" {
  description = "The private IP address of the Private Link Endpoint"
  value       = { for k, endpoint in azurerm_private_endpoint.priv_endpoint : k => endpoint.private_service_connection[0].private_ip_address }
}
