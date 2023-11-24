locals {
  environments = {
    "dev" : local.dev
  }
}

locals {
    dev = {
        "environment" : "dev"
        "aws_profile" = "personal"
        "name" : "personal-dev"
        "region" : "eu-west-2"
        "vpc_cidr" : "10.90.0.0/16"
    }
}
