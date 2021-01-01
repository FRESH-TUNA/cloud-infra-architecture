data "template_file" "asg_user_data" {
  template = "${file("${path.module}/user_data.sh")}"
  vars = {
    ALLOCATION_ID = var.allocation_id
  }
}

resource "aws_launch_template" "logic" {
  name = "logic"

  block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      volume_size = 10
    }
  }

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_termination = true

  ebs_optimized = true

  image_id = "ami-0094965d55b3bb1ff"

  instance_initiated_shutdown_behavior = "terminate"

  instance_market_options {
    market_type = "spot"
  }

  instance_type = "t2.micro"

  key_name = var.key_name

  vpc_security_group_ids = var.vpc_security_group_ids

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "test"
    }
  }

  user_data = template_file.asg_user_data
}
