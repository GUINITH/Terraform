variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
  default     = "gui-group"
}

variable "location" {
  type        = string
  description = "The location of the resource group"
  default     = "Brazil South"
}

variable "virtual_network_name" {
  type        = string
  description = "The name of the virtual network"
  default     = "gui-net"
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet"
  default     = "internal"
}

variable "network_interface_name" {
  type        = string
  description = "The name of the network interface"
  default     = "gui-nic"
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
  description = "The admin username of the virtual machine"
  default     = "guinith"
}

variable "admin_password" {
  type        = string
  description = "The admin password of the virtual machine"
  default     = "Password123!"
}

variable "subnet_id" {
  type        = string
  description = "The subnet id of the virtual machine"
  default     = "subnet_id"
} 