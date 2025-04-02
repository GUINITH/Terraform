resource "azurerm_resource_group" "rg" {
  name     = "group-do-gui-dev"
  location = "Brazil South"
}

resource "azurerm_storage_account" "sa" {
  name                     = "stgguidev"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "sc" {
  name                  = "vhds"
  storage_account_id    = azurerm_storage_account.sa.id
}

