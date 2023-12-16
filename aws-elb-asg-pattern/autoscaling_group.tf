resource "aws_autoscaling_group" "tfer--project-prod-asg-app" {
  #availability_zones        = ["ap-northeast-2a", "ap-northeast-2b"]
  capacity_rebalance        = "false"
  default_cooldown          = "300"
  default_instance_warmup   = "0"
  desired_capacity          = "0"
  enabled_metrics           = ["GroupAndWarmPoolDesiredCapacity", "GroupAndWarmPoolTotalCapacity", "GroupDesiredCapacity", "GroupInServiceCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingCapacity", "GroupPendingInstances", "GroupStandbyCapacity", "GroupStandbyInstances", "GroupTerminatingCapacity", "GroupTerminatingInstances", "GroupTotalCapacity", "GroupTotalInstances", "WarmPoolDesiredCapacity", "WarmPoolMinSize", "WarmPoolPendingCapacity", "WarmPoolTerminatingCapacity", "WarmPoolTotalCapacity", "WarmPoolWarmedCapacity"]
  force_delete              = "false"
  health_check_grace_period = "60"
  health_check_type         = "EC2"

  launch_template {
    id      = "lt-0ca4f6a2736ab38bd"
    #name    = "project-prod-app-launch-template"

    #version = "$Default"
    version = "2"
  }

  instance_refresh {
    strategy = "Rolling"
    preferences {
      min_healthy_percentage = 50
    }
    triggers = ["tag"]
  }

  max_instance_lifetime   = "0"
  max_size                = "2"
  metrics_granularity     = "1Minute"
  min_size                = "0"
  name                    = "project-prod-asg-app"
  protect_from_scale_in   = "false"
  service_linked_role_arn = "arn:aws:iam::474156821902:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling"

  tag {
    key                 = "group"
    propagate_at_launch = "true"
    value               = "practice-prod"
  }

  tag {
    key                 = "name"
    propagate_at_launch = "false"
    value               = "practice-prod-asg"
  }

  target_group_arns = ["arn:aws:elasticloadbalancing:ap-northeast-2:474156821902:targetgroup/project-prod-targetgroup/a95634b6c6f7f109"]

  # traffic_source {
  #   identifier = "arn:aws:elasticloadbalancing:ap-northeast-2:474156821902:targetgroup/project-prod-targetgroup/a95634b6c6f7f109"
  #   type       = "elbv2"
  # }

  vpc_zone_identifier       = ["subnet-06e14e9bcd408e325", "subnet-0866df141ac575821"]
  wait_for_capacity_timeout = "10m"
}
