data "azurerm_subnet" "subnet" {
    for_each = var.aks_bastain
  name                 = "AzureBastionSubnet"
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

resource "azurerm_public_ip" "pip" {
    for_each = var.aks_bastain
  name                = each.value.pip_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_bastion_host" "bastian" {
    for_each = var.aks_bastain
  name                = each.value.bastain_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.subnet[each.key].id
    public_ip_address_id = azurerm_public_ip.pip[each.key].id
  }
}

variable "aks_bastain" {
    type = map(any)
  
}