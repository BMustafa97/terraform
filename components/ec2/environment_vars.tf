#######################
# Environment vars
#######################
module "environment_vars" {
  source      = "../../environments"
  environment = terraform.workspace # Used to source the environment based on workspace
}
locals {
  v = module.environment_vars.env # Reference the environment_vars module output called env
}
