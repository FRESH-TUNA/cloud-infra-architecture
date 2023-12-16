resource "aws_launch_template" "tfer--project-prod-app-launch-template" {
  default_version         = "2"
  description             = "project-prod-launch-template"
  disable_api_stop        = "false"
  disable_api_termination = "false"
  image_id                = "ami-0176e7b0ee6aa5815"
  instance_type           = "t3.nano"
  key_name                = "hhs1-vm"
  name                    = "project-prod-app-launch-template"

  network_interfaces {
    device_index       = "0"
    ipv4_address_count = "0"
    ipv4_prefix_count  = "0"
    ipv6_address_count = "0"
    ipv6_prefix_count  = "0"
    network_card_index = "0"
    security_groups    = ["sg-09ffdf20b7242392a"]
  }

  tags = {
    group = "practice-prod"
  }

  tags_all = {
    group = "practice-prod"
  }
}
