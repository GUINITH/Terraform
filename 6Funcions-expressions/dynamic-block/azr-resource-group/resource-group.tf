resource "azurerm_resource_group" "rg" {
  name = "teste-gui-group-${location.name}"
  dynamic "location" {
    for_each = var.location
    content {
      name = location.value
    }
  }

  tags = local.tags
}
