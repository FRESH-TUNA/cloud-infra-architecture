resource "aws_route_table" "scenario_1_public_route_table" {
  vpc_id = aws_vpc.scenario_1_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.scenario_1_igw.id
  }

  tags = {
    Name = "main"
  }
}

resource "aws_route_table" "scenario_1_private_route_table" {
  vpc_id = aws_vpc.scenario_1_vpc.id

  tags = {
    Name = "main"
  }
}

resource "aws_route_table_association" "scenario_1_public_rt_association" {
  subnet_id      = aws_subnet.scenario-1-public-subnet.id
  route_table_id = aws_route_table.scenario_1_public_route_table.id
}

resource "aws_route_table_association" "scenario_1_private_rt_1_association" {
  subnet_id      = aws_subnet.scenario-1-private-subnet.id
  route_table_id = aws_route_table.scenario_1_private_route_table.id
}

resource "aws_route_table_association" "scenario_1_private_rt_2_association" {
  subnet_id      = aws_subnet.scenario-1-private-subnet-2.id
  route_table_id = aws_route_table.scenario_1_private_route_table.id
}
