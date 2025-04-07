variable  "region" {  
    description = "The AWS region where resources will be deployed"
    type        = string
    default     = "sa-east-1"
}

variable "instance_type" {  
    description = "The instance type for the EC2 instance"
    type        = string
    default     = "t2.micro"
}
