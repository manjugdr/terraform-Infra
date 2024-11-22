variable "name" {}
variable "description" {}
variable "vpc_id" {}
variable "ingress" { type = list(map(string)) }
variable "egress" { type = list(map(string)) }
variable "tags" { type = map(string) }
