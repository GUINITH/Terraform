variable "resource_group_name" {
    type        = string   
    description = "The name of the resource group"
    default     = "group-do-gui-dev"
}

variable "location" {
    type        = string
    description = "The location of the resource group"
    default     = "Brazil South"
}

variable "storage_account_name" {
    type        = string
    description = "The name of the storage account"
    default     = "stgguidev"
}

variable "account_tier" {
    type        = string
    description = "The tier of the storage account"
    default     = "Standard"
}

variable "account_replication_type" {
    type        = string
    description = "The replication type of the storage account"
    default     = "GRS"
}

variable "storage_container_name" {
    type        = string
    description = "The name of the storage container"
    default     = "vhds"
}
