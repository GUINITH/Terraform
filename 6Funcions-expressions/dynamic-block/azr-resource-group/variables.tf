variable "location" {
  type = map(object({
    name = string
  }))
  default = {
    brasil = {
      name = "Brazil South"
    }
    eua1 = {
    name = "East US" }
    eua2 = {
    name = "East US 2" }
  }
}