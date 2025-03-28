resource "azurerm_resource_group" "rg" {
  name     = var.group_name
  location = "Brazil South"
}

resource "azurerm_storage_account" "sa" {
  name                     = var.storage_accaunt_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "sc" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}