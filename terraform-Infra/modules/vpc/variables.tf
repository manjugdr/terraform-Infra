variable "cidr_block" {}
variable "subnet_cidrs" { type = list(string) }
variable "map_public_ip_on_launch" { default = true }
variable "tags" { type = map(string) }
