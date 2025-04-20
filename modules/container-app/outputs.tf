output "url" {
  value = azurerm_container_app.ca_app.ingress[0].fqdn
}