resource "aws_ecr_repository" "repo" {
  name                 = var.name
  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }
  tags = var.tags
}
