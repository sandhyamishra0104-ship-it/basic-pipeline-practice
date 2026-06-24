variable "rgs" {
  type = map(object({
    name     = string
    location = string
  }))
}
variable "vnets" {
  type = map(object({
    vnet_name     = string
    location      = string
    rg_name       = string
    address_space = list(string)
  }))

}
