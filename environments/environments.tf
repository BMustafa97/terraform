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
        "vpc_id" : "vpc-03f1f585bd3129ff0"
        "subnet_id" : "subnet-0b121820879d85d61"
        "db_subnet_id" : ["subnet-0b121820879d85d61", "subnet-00b4c8ffa9fd87ae7", "subnet-0d01d4362ed6fc98f"]
    }
}
