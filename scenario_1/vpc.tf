resource "aws_vpc" "scenario_1_vpc" {
  cidr_block = "172.16.0.0/26"
  tags = {
    Name = "scenario-1-vpc"
  }
}
