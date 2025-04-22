resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_public_ip" "plubic_ip" {
  name                = "aplubic-ip-terraform"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  allocation_method   = "Static"

  tags = local.tags

}

resource "azurerm_network_interface" "network_interface" {
  name                = "nic_terraform"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name

  ip_configuration {
    name                          = "aplubic-ip-terraform"
    subnet_id                     = data.terraform_remote_state.vnet.outputs.resource_information.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.plubic_ip.id
  }

  tags = local.tags
}

resource "azurerm_network_interface_security_group_association" "nisga" {
  network_interface_id      = azurerm_network_interface.network_interface.id
  network_security_group_id = data.terraform_remote_state.vnet.outputs.resource_information.security_group_id
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                            = "vm-terraform"
  resource_group_name             = azurerm_resource_group.resource_group.name
  location                        = azurerm_resource_group.resource_group.location
  size                            = "Standard_B1s"
  admin_username                  = "Terraform"
  disable_password_authentication = true'
  network_interface_ids           = [azurerm_network_interface.network_interface.id, ]

  admin_ssh_key {
    username   = "Terraform"
    public_key = file("./azure-key.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}