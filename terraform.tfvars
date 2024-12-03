vpc_id = "vpc-0cc788fc3cc7b533c"
#igw_name = "mk-igw"
#tags = {
#  Environment = "Dev"
#}
role_name = "ec2-ssm-role"
instance_profile_name = "ec2-ssm-role"

security_group_name = "ssm-to-ec2"
#security_group_ids =  "sg-088efe7e7841b01ca"


ingress_rules = [
  {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.131.0.0/16"]
  }
]

subnet_ids   = ["subnet-057dd1db78ad239b2", "subnet-042545b810a1a4e55"]
region       = "il-central-1"

#tgw_id     = "tgw-0430826c231550bf5"


transit_gateway_vpc_attachment = {
       tgw_id     = "tgw-0430826c231550bf5" 
#       subnet_ids = ["subnet-0cf6f7d1c30a00612", "subnet-08cb635201da8cf97"]
}

