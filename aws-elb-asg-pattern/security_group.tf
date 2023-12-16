resource "aws_security_group" "tfer--default_sg-09ffdf20b7242392a" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    from_port = "0"
    protocol  = "-1"
    self      = "true"
    to_port   = "0"
  }

  name = "default"

  tags = {
    Name  = "project-prod-sg-default"
    group = "practice-prod"
  }

  tags_all = {
    Name  = "project-prod-sg-default"
    group = "practice-prod"
  }

  vpc_id = "vpc-0582dfce4fb601402"
}

resource "aws_security_group" "tfer--practice-prod-sg-generic_sg-036026f85f227b451" {
  description = "generic access for testing network"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "generic"
    from_port   = "0"
    protocol    = "tcp"
    self        = "false"
    to_port     = "65535"
  }

  name = "practice-prod-sg-generic"

  tags = {
    group = "practice-prod"
  }

  tags_all = {
    group = "practice-prod"
  }

  vpc_id = "vpc-0582dfce4fb601402"
}

resource "aws_security_group" "practice-prod-sg-web-access" {
  description = "for web access"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = "0"
    protocol    = "-1"
    self        = "false"
    to_port     = "0"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = "80"
    protocol  = "tcp"
    self      = "false"
    to_port   = "80"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = "443"
    protocol  = "tcp"
    self      = "false"
    to_port   = "443"
  }

  name = "practice-prod-sg-web-access"

  tags = {
    Name  = "practice-prod-sg-web-access"
    group = "practice-prod"
  }

  tags_all = {
    Name  = "practice-prod-sg-web-access"
    group = "practice-prod"
  }

  vpc_id = "vpc-0582dfce4fb601402"
}
