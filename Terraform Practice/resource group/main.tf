resource "azurerm_resource_group" "RG_GROUP" {
  for_each = var.rg_block 
  name = each.key
  location =each.value
}

variable "rg_block" {
    type = map(any)

}