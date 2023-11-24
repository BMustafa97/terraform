module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.1" # stable-ish version

  name = var.name
  cidr = var.vpc_cidr
  azs             = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  private_subnets = var.private_subnets
  public_subnets = var.public_subnets

  enable_nat_gateway = true
  single_nat_gateway = true
  map_public_ip_on_launch = true

  tags = {
    "TerraformManaged"                            = "true"
  }

  public_subnet_tags = {
    "Name"                                        = "${var.name}-public"
    "TerraformManaged"                            = "true"
  }

  private_subnet_tags = {
    "Name"                                        = "${var.name}-private"
    "TerraformManaged"                            = "true"
  }

}

