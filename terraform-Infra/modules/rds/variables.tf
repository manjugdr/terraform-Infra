variable "identifier" {}
variable "instance_class" {}
variable "allocated_storage" {}
variable "db_name" {}
variable "username" {}
variable "password" {}
variable "publicly_accessible" { default = false }
variable "security_group_ids" { type = list(string) }
variable "tags" { type = map(string) }
