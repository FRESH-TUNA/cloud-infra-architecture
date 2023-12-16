resource "aws_route_table" "tfer--rtb-052a6831b2252bb35" {
  tags = {
    Name  = "practice-prod-rtb-private1-ap-northeast-2a"
    group = "practice-prod"
  }

  tags_all = {
    Name  = "practice-prod-rtb-private1-ap-northeast-2a"
    group = "practice-prod"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-0582dfce4fb601402_id}"
}

resource "aws_route_table" "tfer--rtb-0577ef25a2357b1f8" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-036d08fb68663759a"
  }

  tags = {
    Name  = "practice-prod-rtb-public"
    group = "practice-prod"
  }

  tags_all = {
    Name  = "practice-prod-rtb-public"
    group = "practice-prod"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-0582dfce4fb601402_id}"
}

resource "aws_route_table" "tfer--rtb-075576bc63132dca7" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-036d08fb68663759a"
  }

  tags = {
    Name  = "practice-prod-rtb-public-professor-peering-support"
    group = "practice-prod"
  }

  tags_all = {
    Name  = "practice-prod-rtb-public-professor-peering-support"
    group = "practice-prod"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-0582dfce4fb601402_id}"
}

resource "aws_route_table" "tfer--rtb-07a004d9989397851" {
  tags = {
    Name  = "practice-prod-rtb-private2-ap-northeast-2b"
    group = "practice-prod"
  }

  tags_all = {
    Name  = "practice-prod-rtb-private2-ap-northeast-2b"
    group = "practice-prod"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-0582dfce4fb601402_id}"
}
