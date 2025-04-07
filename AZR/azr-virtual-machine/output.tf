output "vm_info" {
  value = {
    id = azurerm_linux_virtual_machine.vm.id
    name = azurerm_linux_virtual_machine.vm.name
    identity = azurerm_linux_virtual_machine.vm.identity
    os_disk = azurerm_linux_virtual_machine.vm.os_disk
    private_ip_address = azurerm_linux_virtual_machine.vm.private_ip_address
    private_ip_addresses = azurerm_linux_virtual_machine.vm.private_ip_addresses
    public_ip_address = azurerm_linux_virtual_machine.vm.public_ip_address
    public_ip_addresses = azurerm_linux_virtual_machine.vm.public_ip_addresses
    virtual_machine_id = azurerm_linux_virtual_machine.vm.virtual_machine_id
  }
  description = "Informações da máquina virtual Linux"
}