resource "azurerm_resource_group" "rgs" {
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}
resource "azurerm_virtual_network" "vnet" {
  depends_on          = [azurerm_resource_group.rgs]
  for_each            = var.vnets
  name                = each.value.vnet_name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  address_space       = each.value.address_space
}
