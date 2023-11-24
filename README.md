# Infrastructure

### Requirements

- awscli
- terraform >= v1.5.0
- docker


### Resources Created Through Terraform
- VPC

The format of the terraform is using terraform worksapces, more here about [workspaces](https://developer.hashicorp.com/terraform/language/state/workspaces)

To create/destroy resources you will need to change directory into the appropiate component. i.e.run `cd components/vpc`

Then run the following commands:

```
terraform init
terraform workspace new dev
terraform workspace select dev
terraform plan
```
If you are confident with the plan, run:

 `terraform apply --auto-approve`

#### Notes
Ensure your awscli is configured, run `aws configure` to start this process

In your aws credentials file, name the aws secret and access key ids under the name `perosonal`.

For example:
```
[personal]
aws_access_key_id = YOUR_ACCESS_KEY_ID
aws_secret_access_key = YOUR_SECRET_ACCESS_KEY
region = eu-west-2
```