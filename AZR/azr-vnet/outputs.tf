output "resource_information" {
  value = {
    subnet_id         = azurerm_subnet.subnet.id
    security_group_id = azurerm_network_security_group.nsg.id
  }
  description = "Informações dos recursos"
}