resource "azurerm_resource_group" "resource-group" {
  name     = "group-do-gui-dev"
  location = "Brazil South"
}

resource "azurerm_storage_account" "sa" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "container" {
  name                  = "vhds"
  storage_account_id    = azurerm_storage_account.sa.id
}

