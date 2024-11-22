module "vpc" {
  source       = "../../modules/vpc"
  cidr_block   = "10.0.0.0/16"
  subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  tags         = { Environment = "dev" }
}

module "security_group" {
  source      = "../../modules/security_group"
  name        = "dev-sg"
  description = "Dev Security Group"
  vpc_id      = module.vpc.vpc_id
  ingress = [
    { from_port = 80, to_port = 80, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"] }
  ]
  egress = [
    { from_port = 0, to_port = 0, protocol = "-1", cidr_blocks = ["0.0.0.0/0"] }
  ]
  tags = { Environment = "dev" }
}
