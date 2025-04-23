resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.enviroment}"
  location = var.location
}

resource "azurerm_storage_account" "sa" {
  count                    = var.enviroment == "dev" ? 0 : 1
  name                     = "guinithstg${var.enviroment}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.account_tier == "prod" ? "Premium " : "Standard"
  account_replication_type = var.account_replication_type == "prod" ? "LRS" : "GRS"
  tags                     = local.tags
}
