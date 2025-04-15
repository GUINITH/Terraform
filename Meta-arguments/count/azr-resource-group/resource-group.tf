resource "azurerm_resource_group" "rg" {
  count    = 3
  name     = "teste-gui-group-${count.index}"
  location = "Brazil South"

  tags = local.tags
}