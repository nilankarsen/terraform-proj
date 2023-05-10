module "resourcegroup" {
  source = "./modules/resourcegroup"
  resource_group = try(var.resource_group,{})
}

module "vnet" {
  source = "./modules/vnet"
  vnets = try(var.vnets,{})
  depends_on = [
    module.resourcegroup,
  ]
}

module "subnet" {
  source = "./modules/subnet"
  subnets = try(var.subnets,{})
    depends_on = [
    module.resourcegroup,
    module.vnet
  ]
}