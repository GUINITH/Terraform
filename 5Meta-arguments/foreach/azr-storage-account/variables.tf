variable "location" {
  type        = map(string)
  description = "The location of the resource group"
  default = {
    "brasil" = "Brazil South"
    "eual"   = "East US"
    "euall"  = "East US 2"
  }
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
