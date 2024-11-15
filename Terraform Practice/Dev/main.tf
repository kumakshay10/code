module "rg_module" {
  source   = "../resource group"
  rg_block = var.rg_aks

}

module "vnet_module" {
  source     = "../vnet"
  vnet_group = var.vnet_aks
  depends_on = [module.rg_module]

}

module "subnet_module" {
  source       = "../Subnet"
  subnet_group = var.subnet_aks
  depends_on   = [module.vnet_module]
}

module "VM_module" {
  source     = "../Virtual machine"
  vms        = var.aks_vms
  depends_on = [module.subnet_module]
}

module "bastain_module" {
  depends_on  = [module.subnet_module]
  source      = "../Azure bastian"
  aks_bastain = var.bas

}