resource "aws_iam_role" "asg_logic_associate_elasticip" {
  name = "asg_logic_associate_elasticip"
  path = "/"

  assume_role_policy = <<EOF
{
    "Version": "2021-01-02",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "ec2:AssociateAddress",
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_instance_profile" "asg_logic_associate_elasticip" {
  name = "asg_logic_associate_elasticip"
  role = aws_iam_role.asg_logic_associate_elasticip.name
}
