output "VM" {
  value = {
    id                = azurerm_linux_virtual_machine.vm.id
    plubic_ip         = azurerm_public_ip.plubic_ip.ip_address
    name              = azurerm_linux_virtual_machine.vm.name
    identity          = azurerm_linux_virtual_machine.vm.identity
    subnet_id         = azurerm_subnet.subnet.id
    security_group_id = azurerm_network_security_group.nsg.id

  }
  description = "Informações da máquina virtual Linux"
}

output "EC2" {
  value = {
    public_ip         = aws_instance.vm.public_ip
    subnet_id         = aws_subnet.subnet.id
    security_group_id = aws_security_group.security_group.id
  }
  description = "Informações da máquina virtual Linux"

}