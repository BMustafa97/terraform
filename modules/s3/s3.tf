module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.15.1"

  bucket              = var.name
  force_destroy       = true
  intelligent_tiering = {}
  logging             = {}
  object_ownership    = "BucketOwnerEnforced"
  tags = {
    "TerraformManaged" = "true"
  }
}

