# Terraform Modules AWS

Production-ready Terraform modules for AWS infrastructure.

## Modules
- VPC with multi-AZ subnets and NAT
- ECS Fargate service with auto-scaling
- RDS PostgreSQL with read replicas
- S3 + CloudFront static hosting
- ALB with WAF integration

## Usage
```hcl
module "vpc" {
  source = "./modules/vpc"
  cidr   = "10.0.0.0/16"
  azs    = ["us-east-1a", "us-east-1b"]
}
```

## License: Apache 2.0
