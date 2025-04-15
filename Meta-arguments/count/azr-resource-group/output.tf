output "resource_group_info_0" {
  value = {
    resource_group_id       = azurerm_resource_group.rg[0].id
    resource_group_name     = azurerm_resource_group.rg[0].name
    resource_group_location = azurerm_resource_group.rg[0].location
  }
  description = "Informações do resource group"
}

output "resource_group_info_1" {
  value = {
    resource_group_id       = azurerm_resource_group.rg[1].id
    resource_group_name     = azurerm_resource_group.rg[1].name
    resource_group_location = azurerm_resource_group.rg[1].location
  }
  description = "Informações do resource group"
}

output "resource_group_info_2" {
  value = {
    resource_group_id       = azurerm_resource_group.rg[2].id
    resource_group_name     = azurerm_resource_group.rg[2].name
    resource_group_location = azurerm_resource_group.rg[2].location
  }
  description = "Informações do resource group"
}