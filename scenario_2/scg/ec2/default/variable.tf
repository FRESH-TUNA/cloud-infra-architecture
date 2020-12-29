variable "vpc_id" {
  type = string
}

variable "ingress_rules" {
  description = "Ingress security group rules"
  type        = map
}

variable "egress_rules" {
  description = "egress security group rules"
  type        = map
}
