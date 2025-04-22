output "resources_info" {
  value = {
    subnet_id         = aws_subnet.subnet.id
    security_group_id = aws_security_group.security_group.id
  }
  description = "Informações dos recursos"
}
