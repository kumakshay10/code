rg_aks = {
  akshaybastionrg = "EastAsia"
}

vnet_aks = {
  vnet1 = {
    name                = "akshayvnet"
    location            = "East Asia"
    resource_group_name = "akshaybastionrg"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet_aks = {
  subnet1 = {
    name                 = "frontendsubnet"
    resource_group_name  = "akshaybastionrg"
    virtual_network_name = "akshayvnet"
    adress_prefix        = ["10.0.1.0/26"]
  }

  subnet2 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "akshaybastionrg"
    virtual_network_name = "akshayvnet"
    adress_prefix        = ["10.0.2.0/26"]
  }

  subnet3 = {
    name                 = "backendsubnet"
    resource_group_name  = "akshaybastionrg"
    virtual_network_name = "akshayvnet"
    adress_prefix        = ["10.0.3.0/26"]
  }
}

aks_vms = {
  vm1 = {
    subnet_name          = "frontendsubnet"
    virtual_network_name = "akshayvnet"
    resource_group_name  = "akshaybastionrg"
    nic_name             = "vm1-nic"
    location             = "East Asia"
    vm_name              = "frontendvm"
    size                 = "Standard_F2"
  }

  vm2 = {
    subnet_name          = "backendsubnet"
    virtual_network_name = "akshayvnet"
    resource_group_name  = "akshaybastionrg"
    nic_name             = "vm2-nic"
    location             = "East Asia"
    vm_name              = "backendvm"
    size                 = "Standard_F2"
  }
}

bas = {
  bastian1 = {
    virtual_network_name = "akshayvnet"
    resource_group_name  = "akshaybastionrg"
    pip_name             = "akshaypip"
    location             = "East Asia"
    bastain_name         = "Akshay1234"
  }
}