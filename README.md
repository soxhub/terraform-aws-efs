# Terraform: AWS EFS (Elastic File System)

This provides the `efs` terraform module for the AWS provider.

This provisions an AWS EFS.

## Usage
In your `.tf` file, import the module:

```terraform
module "efs" {
  source  = "app.terraform.io/auditboard/efs/aws"
  version = "1.1.x"

  name       = local.name
  region     = local.region
  subnet_ids = module.vpc.private_subnet_ids
  vpc_id     = module.vpc.vpc_id
}
```
