#######################
# Providers
#######################
provider "aws" {
  region  = local.v.region
  profile = local.v.aws_profile
}

terraform {
  required_version = ">= v1.5.0"
}