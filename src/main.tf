module "Resourcegroup" {
  source = "./modules/resourcegroup"

  name = var.name
  location = var.location
}
