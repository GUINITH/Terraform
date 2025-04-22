resource "azurerm_resource_group" "rg" {
  name     = "gui-rg"
  location = var.location
  tags     = local.tags
}

resource "azurerm_storage_account" "sa" {
  name                     = "stgguidev"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  blob_properties {
    versioning_enabled = true
  }

  tags = local.tags
}

resource "azurerm_storage_container" "sc" {
  name               = "gui-container"
  storage_account_id = azurerm_storage_account.sa.id
}
