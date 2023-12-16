resource "aws_subnet" "tfer--subnet-06e14e9bcd408e325" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.105.128.0/20"
  enable_dns64                                   = "false"
  #enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  #map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name  = "practice-prod-subnet-private1-ap-northeast-2a"
    group = "practice-prod"
  }

  tags_all = {
    Name  = "practice-prod-subnet-private1-ap-northeast-2a"
    group = "practice-prod"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-0582dfce4fb601402_id}"
}

resource "aws_subnet" "tfer--subnet-0866df141ac575821" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.105.144.0/20"
  enable_dns64                                   = "false"
  #enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  #map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name  = "practice-prod-subnet-private2-ap-northeast-2b"
    group = "practice-prod"
  }

  tags_all = {
    Name  = "practice-prod-subnet-private2-ap-northeast-2b"
    group = "practice-prod"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-0582dfce4fb601402_id}"
}

resource "aws_subnet" "tfer--subnet-0b9f0e192b14560fb" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.105.0.0/20"
  enable_dns64                                   = "false"
  #enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  #map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name  = "practice-prod-subnet-public1-ap-northeast-2a"
    group = "practice-prod"
  }

  tags_all = {
    Name  = "practice-prod-subnet-public1-ap-northeast-2a"
    group = "practice-prod"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-0582dfce4fb601402_id}"
}

resource "aws_subnet" "tfer--subnet-0eecee20295fd3772" {
  assign_ipv6_address_on_creation                = "false"
  cidr_block                                     = "10.105.16.0/20"
  enable_dns64                                   = "false"
  #enable_lni_at_device_index                     = "0"
  enable_resource_name_dns_a_record_on_launch    = "false"
  enable_resource_name_dns_aaaa_record_on_launch = "false"
  ipv6_native                                    = "false"
  #map_customer_owned_ip_on_launch                = "false"
  map_public_ip_on_launch                        = "false"
  private_dns_hostname_type_on_launch            = "ip-name"

  tags = {
    Name  = "practice-prod-subnet-public2-ap-northeast-2b"
    group = "practice-prod"
  }

  tags_all = {
    Name  = "practice-prod-subnet-public2-ap-northeast-2b"
    group = "practice-prod"
  }

  vpc_id = "${data.terraform_remote_state.local.outputs.aws_vpc_tfer--vpc-0582dfce4fb601402_id}"
}
