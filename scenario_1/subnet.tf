resource "aws_subnet" "scenario-1-public-subnet" {
  vpc_id = aws_vpc.scenario_1_vpc.id
  cidr_block = "172.16.0.0/28"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "scenario-1-public-subnet"
  }
}

resource "aws_subnet" "scenario-1-private-subnet" {
  vpc_id = aws_vpc.scenario_1_vpc.id
  cidr_block = "172.16.0.16/28"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "scenario-1-private-subnet"
  }
}

resource "aws_subnet" "scenario-1-private-subnet-2" {
  vpc_id = aws_vpc.scenario_1_vpc.id
  cidr_block = "172.16.0.32/28"
  availability_zone = "ap-northeast-2b"
  tags = {
    Name = "scenario-1-private-subnet-2"
  }
}
