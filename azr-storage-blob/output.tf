output "storage_accaunt_id" {
  value = azurerm_storage_account.sa.id
  description = 'Id da storage accaunt'
}

output "storage_accaunt_name" {
  value = azurerm_storage_account.sa.name
  description = 'Nome da storage accaunt'
}

output "storage_container_id" {
  value = azurerm_storage_container.sc.id
  description = 'Id do storage container'
}

output "storage_container_name" {
  value = azurerm_storage_container.sc.name
  description = 'Nome do storage container'
}

output "sa_primary_access_key" {
  value = azurerm_storage_account.sa.primary_access_key
  description = 'Chave de acesso da storage accaunt'
}



