output "storage_account_info_1" {
  value = {
    storage_account_id       = azurerm_storage_account.sa["brasil"].id
    storage_account_name     = azurerm_storage_account.sa["brasil"].name
    storage_account_location = azurerm_storage_account.sa["brasil"].location
    sensitive                = true
  }
  description = "Informações da conta de armazenamento"
}

output "storage_account_info_2" {
  value = {
    storage_account_id       = azurerm_storage_account.sa["eual"].id
    storage_account_name     = azurerm_storage_account.sa["eual"].name
    storage_account_location = azurerm_storage_account.sa["eual"].location
    sensitive                = true
  }
  description = "Informações da conta de armazenamento"
}

output "storage_account_info_3" {
  value = {
    storage_account_id       = azurerm_storage_account.sa["euall"].id
    storage_account_name     = azurerm_storage_account.sa["euall"].name
    storage_account_location = azurerm_storage_account.sa["euall"].location
  }
  description = "Informações da conta de armazenamento"
}