variable "cluster_name" {}
variable "cluster_version" { default = "1.24" }
variable "vpc_id" {}
variable "subnet_ids" { type = list(string) }
variable "node_groups" { type = map(any) }
variable "tags" { type = map(string) }
