# modules
module "vpc" {
  source      = "../../modules/vpc"
  environment = local.v.environment
  region      = local.v.region
  name        = local.v.name
  vpc_cidr        = local.v.vpc_cidr
  private_subnets = ["10.90.0.0/22", "10.90.4.0/22", "10.90.8.0/22"]
  public_subnets  = ["10.90.12.0/22", "10.90.16.0/22", "10.90.20.0/22"]

}