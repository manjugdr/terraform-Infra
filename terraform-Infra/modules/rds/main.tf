resource "aws_db_instance" "rds" {
  identifier              = var.identifier
  engine                  = "postgres"
  instance_class          = var.instance_class
  allocated_storage       = var.allocated_storage
  name                    = var.db_name
  username                = var.username
  password                = var.password
  publicly_accessible     = var.publicly_accessible
  vpc_security_group_ids  = var.security_group_ids
  tags                    = var.tags
}
