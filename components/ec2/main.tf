# modules
module "ec2" {
  source      = "../../modules/ec2"
  environment = local.v.environment
  region      = local.v.region
  name        = local.v.name

}