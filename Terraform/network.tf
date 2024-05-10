module "network" {

  source                = "./network/"
  vpc_cidr              = var.vpc_cidr
  private_subnet_cidr   = var.private_subnet_cidr
  private_subnet_cidr_2 = var.private_subnet_cidr_2
  public_subnet_cidr    = var.public_subnet_cidr
  public_subnet_cidr_2   = var.public_subnet_cidr_2 
  region_name           = var.region_name
}
