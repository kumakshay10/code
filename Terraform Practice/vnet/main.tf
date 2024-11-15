resource "azurerm_virtual_network" "vnet" {
    for_each = var.vnet_group
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    address_space = each.value.address_space
}

variable "vnet_group" {
    type = map(any)
  
}