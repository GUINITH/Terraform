variable "location" {
  type        = string
  description = "The location of the resource group"
  default     = "Brazil South"
}

variable "account_tier" {
  type        = string
  description = "The tier of the storage account"
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "The replication type of the storage account"
  default     = "LRS"
}
