# modules
module "s3" {
  source      = "../../modules/s3"
  environment = local.v.environment
  region      = local.v.region
  name        = "${local.v.name}-bucket-5646768798"

}