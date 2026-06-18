# Terraform Modules Aws

Production-ready Terraform modules for AWS.

## Modules
- VPC with multi-AZ subnets
- ECS Fargate service
- RDS PostgreSQL with read replicas
- S3 + CloudFront static hosting
- ALB with WAF

## Usage
```hcl
module "vpc" {
  source  = "./modules/vpc"
  cidr    = "10.0.0.0/16"
  azs     = ["us-east-1a", "us-east-1b"]
}
```

## License
MIT
