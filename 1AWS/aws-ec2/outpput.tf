output "ec2_info"   {
    value = {
        id = aws_instance.web.id
        arn = aws_instance.web.arn
        availability_zone = aws_instance.web.availability_zone
        placement_group = aws_instance.web.placement_group
        key_name = aws_instance.web.key_name
        password_data = aws_instance.web.password_data
        public_ip = aws_instance.web.public_ip
        plubic_dns = aws_instance.web.public_dns
        primary_network_interface_id = aws_instance.web.primary_network_interface_id
        private_dns = aws_instance.web.private_dns
        private_ip = aws_instance.web.private_ip
        security_groups = aws_instance.web.security_groups
        vpc_security_group_ids = aws_instance.web.vpc_security_group_ids
        subnet_id = aws_instance.web.subnet_id
        instance_state = aws_instance.web.instance_state
    }
    description = "Informações da instancia EC2"
}