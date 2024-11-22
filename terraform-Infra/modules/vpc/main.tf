resource "aws_vpc" "main" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = var.tags
}

resource "aws_subnet" "subnet" {
  count = length(var.subnet_cidrs)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidrs[count.index]
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = var.tags
}
