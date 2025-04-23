resource "azurerm_resource_group" "rg" {
  for_each = var.location
  name     = "rg-${each.key}"
  location = each.value
}

resource "azurerm_storage_account" "sa" {
  for_each                 = azurerm_resource_group.rg
  name                     = "guinithstg${each.key}"
  resource_group_name      = each.value.name
  location                 = each.value.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.tags
}

resource "azurerm_storage_container" "sc" {
  for_each           = azurerm_storage_account.sa
  name               = "guicontainer-${each.key}"
  storage_account_id = each.value.id
}

