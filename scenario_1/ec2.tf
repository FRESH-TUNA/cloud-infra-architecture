resource "aws_instance" "scenario_1_ec2_logic" {
  ami = "ami-0094965d55b3bb1ff"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.scenario-1-public-subnet.id
  key_name = aws_key_pair.scenario_1_ec2_logic.key_name
  vpc_security_group_ids = [
    aws_security_group.scenario_1_ec2.id
  ]
}
