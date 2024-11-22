variable "ami" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "security_groups" { type = list(string) }
variable "tags" { type = map(string) }
