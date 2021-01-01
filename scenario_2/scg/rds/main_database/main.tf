resource "aws_security_group" "main_db" {
  description = "security group for postgres"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "-1"
    security_groups = [var.logic_sg_id]
  }
}
