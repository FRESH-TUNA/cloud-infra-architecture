resource "aws_default_network_acl" "tfer--acl-02782774b28a3541b" {
  default_network_acl_id = "${data.terraform_remote_state.local.outputs.aws_default_network_acl_tfer--acl-02782774b28a3541b_id}"

  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = "0"
    icmp_code  = "0"
    icmp_type  = "0"
    protocol   = "-1"
    rule_no    = "100"
    to_port    = "0"
  }

  subnet_ids = ["${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-06e14e9bcd408e325_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0866df141ac575821_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0b9f0e192b14560fb_id}", "${data.terraform_remote_state.local.outputs.aws_subnet_tfer--subnet-0eecee20295fd3772_id}"]

  tags = {
    group = "practice-prod"
  }

  tags_all = {
    group = "practice-prod"
  }
}
