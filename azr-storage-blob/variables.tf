variable "group_name" {
  type        = string
  description = "Nome do grupo de recursos"
  default     = "Gui_group"

}

variable "storage_accaunt_name" {
  type        = string
  description = "Nome da storage accaunt"
  default     = "guistorage"

}

variable "container_name" {
  type        = string
  description = "Nome do storage container"
  default     = "guicontainer"

}