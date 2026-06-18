resource "aws_vpc" "main" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = true
  tags = { Name = var.name }
}

resource "aws_subnet" "public" {
  count             = length(var.public_subnets)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnets[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = true
}

variable "name" { type = string }
variable "cidr_block" { type = string; default = "10.0.0.0/16" }
variable "public_subnets" { type = list(string); default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"] }
