terraform {
  backend "s3" {
    encrypt = "true"
    bucket  = "thecoder97-infrastructure" # creates: env:/<workspace>/
    region  = "eu-west-2"
    key     = "ec2/terraform.tfstate" # <component>/tfstate
  }
}