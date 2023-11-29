module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.5.0"
  create                      = true
  ami                         = "ami-0cfd0973db26b893b"
  associate_public_ip_address = true
  key_name                    = "personal"
  iam_role_name               = "ec2-instance-role"
  instance_type               = "t3a.micro"
  name                       = "ec2-instance"

  instance_tags = {
    "TerraformManaged" = "true"
  }

}