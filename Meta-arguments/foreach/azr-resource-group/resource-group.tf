resource "azurerm_resource_group" "rg" {
  for_each = var.location
  name     = "teste-gui-group-${each.key}"
  location = each.value

  tags = local.tags
}