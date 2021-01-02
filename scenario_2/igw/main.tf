resource "aws_internet_gateway" "scenario_2" {
  vpc_id = aws_vpc.scenario_1_vpc.id

  tags = {
    Name = "main"
  }
}
