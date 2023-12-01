# RDS
module "rds" {

  source         = "../../modules/rds"
  environment    = local.v.environment
  region         = local.v.region
  name           = local.v.name
  vpc_id         = local.v.vpc_id
  subnet_id      = local.v.subnet_id
  db_subnet_id  = local.v.db_subnet_id

}