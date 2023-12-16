resource "aws_internet_gateway" "tfer--igw-036d08fb68663759a" {
  tags = {
    Name  = "practice-prod-igw"
    group = "practice-prod"
  }

  tags_all = {
    Name  = "practice-prod-igw"
    group = "practice-prod"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-0582dfce4fb601402_id}"
}
