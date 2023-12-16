resource "aws_lb" "tfer--practice-prod-alb" {
  desync_mitigation_mode                      = "defensive"
  drop_invalid_header_fields                  = "false"
  enable_cross_zone_load_balancing            = "true"
  enable_deletion_protection                  = "false"
  enable_http2                                = "true"
  enable_tls_version_and_cipher_suite_headers = "false"
  enable_waf_fail_open                        = "false"
  enable_xff_client_port                      = "false"
  idle_timeout                                = "60"
  internal                                    = "false"
  ip_address_type                             = "ipv4"
  load_balancer_type                          = "application"
  name                                        = "practice-prod-alb"
  preserve_host_header                        = "false"
  security_groups                             = ["sg-09ffdf20b7242392a", aws_security_group.practice-prod-sg-web-access.id]

  subnet_mapping {
    subnet_id = "subnet-0b9f0e192b14560fb"
  }

  subnet_mapping {
    subnet_id = "subnet-0eecee20295fd3772"
  }

  subnets = ["subnet-0b9f0e192b14560fb", "subnet-0eecee20295fd3772"]

  tags = {
    group = "practice-prod"
  }

  tags_all = {
    group = "practice-prod"
  }

  xff_header_processing_mode = "append"
}
