resource "aws_db_subnet_group" "default" {
  name        = "subnet_group"
  description = "Terraform example RDS subnet group"
  subnet_ids  = [
    aws_subnet.scenario-1-private-subnet.id,
    aws_subnet.scenario-1-private-subnet-2.id,
  ]
}

resource "aws_db_instance" "muffy-test" {
  allocated_storage    = 10
  db_subnet_group_name = aws_db_subnet_group.default.id
  engine               = "postgres"
  engine_version       = "11.5"
  identifier           = "muffy-test"
  instance_class       = "db.t2.micro"
  password             = "scenario_1_password"
  skip_final_snapshot  = true
  storage_encrypted    = false
  username             = "postgres"
  vpc_security_group_ids = [
    aws_security_group.scenario_1_rds.id
  ]
}
