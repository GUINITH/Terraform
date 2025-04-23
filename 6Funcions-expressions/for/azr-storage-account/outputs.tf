output "storage_account_info" {
  value = {
    storage_account_id       = [for sa in azurerm_storage_account.sa : sa.id]
    storage_account_name     = [for key, sa in azurerm_storage_account.sa : sa.name]
    storage_account_location = [for key, sa in azurerm_storage_account.sa : sa.location]
    sensitive                = true
  }
  description = "Informações da conta de armazenamento"
}