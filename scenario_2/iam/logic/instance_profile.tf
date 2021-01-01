resource "aws_iam_role" "associate_elasticip" {
  name = "associate_elasticip"
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

resource "aws_iam_instance_profile" "logic" {
  name = "test_profile"
  role = aws_iam_role.role.name
}
