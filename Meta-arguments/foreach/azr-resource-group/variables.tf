variable "location" {
  type        = map(string)
  description = "The location of the resource group"
  default = {
    "brasil" = "Brazil South"
    "eual"   = "East US"
    "euall"  = "East US 2"
  }
}