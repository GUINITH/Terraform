variable "resource_group_name" {
  type        = string
  description = "nome do grupo de recurso"
  default     = "gui-group"
}

variable "location" {
  type        = string
  description = "The location of the resource group"
  default     = "Brazil South"
}

variable "vnet_name" {
  type        = string
  description = "The name of the virtual network"
  default     = "gui-net"
}

variable "address_space" {
  type        = list(any)
  description = "The address space of the virtual network"
  default     = ["10.0.0.0/16"]
}

variable "subnet_prefix" {
  type        = list(any)
  description = "The prefix of the subnet"
  default     = ["10.0.0.0/24"]
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet"
  default     = "internal"
}

variable "nsg_name" {
  type        = string
  description = "The name of the network security group"
  default     = "gui-nsg"
}

variable "vm_name" {
  type        = string
  description = "The name of the virtual machine"
  default     = "vm-gui"
}

variable "vm_size" {
  type        = string
  description = "The size of the virtual machine"
  default     = "Standard_F2"
}

variable "admin_username" {
  type        = string
  description = "The username of the virtual machine"
  default     = "guinith"
}

variable "admin_password" {
  type        = string
  description = "The password of the virtual machine"
  default     = "Guigui123!"
}

variable "allocation_method" {
  type        = string
  description = "The allocation method of the public IP"
  default     = "Static"

}

variable "ip_name" {
  type        = string
  description = "The name of the public IP"
  default     = "aplubic-ip-terraform"
}

variable "nic_name" {
  type        = string
  description = "The name of the network interface"
  default     = "nic_terraform"
}

variable "private_ip_address_allocation" {
  type        = string
  description = "The allocation method of the private IP"
  default     = "Dynamic"
}


