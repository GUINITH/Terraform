resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  
  tags = local.tags
}

resource "azurerm_storage_container" "sc" {
  name                  = var.storage_container_name
  storage_account_id    = azurerm_storage_account.sa.id
}

