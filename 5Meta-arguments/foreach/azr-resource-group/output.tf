output "resource_group_info_0" {
  value = {
    resource_group_id       = azurerm_resource_group.rg["brasil"].id
    resource_group_name     = azurerm_resource_group.rg["brasil"].name
    resource_group_location = azurerm_resource_group.rg["brasil"].location
  }
  description = "Informações do resource group"
}

output "resource_group_info_1" {
  value = {
    resource_group_id       = azurerm_resource_group.rg["eual"].id
    resource_group_name     = azurerm_resource_group.rg["eual"].name
    resource_group_location = azurerm_resource_group.rg["eual"].location
  }
  description = "Informações do resource group"
}

output "resource_group_info_euall" {
  value = {
    resource_group_id       = azurerm_resource_group.rg["euall"].id
    resource_group_name     = azurerm_resource_group.rg["euall"].name
    resource_group_location = azurerm_resource_group.rg["euall"].location
  }
  description = "Informações do resource group"
}