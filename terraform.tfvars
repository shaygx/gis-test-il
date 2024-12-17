vpc_id = "vpc-0804656fbcbfa78cf"
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

#subnet_ids   = ["subnet-057dd1db78ad239b2", "subnet-042545b810a1a4e55"]
region       = "il-central-1"

#tgw_id     = "tgw-0430826c231550bf5"


transit_gateway_vpc_attachment = {
       tgw_id     = "tgw-0430826c231550bf5" 
#       subnet_ids = ["subnet-0cf6f7d1c30a00612", "subnet-08cb635201da8cf97"]
}


#route_table_names = [
#  "RTB-GIS-Test-Private",
#  "RTB-GIS-Test-Public",
#  "RTB-GIS-Test-RDS",
#  "RTB-GIS-Test-TGWA"
#]


#route_table_names = ["RTB-GIS-Test-Private", "RTB-GIS-Test-Public", "RTB-GIS-Test-RDS", "RTB-GIS-Test-TGWA"]


#subnet_ids = [
#   "subnet-0c362b393708ec1a1", "subnet-0562cde526444a353",
#   "subnet-04e0fb597aa9e19c1", "subnet-07312fba78d9aab8e",
#   "subnet-0ca76635703d30ff4", "subnet-0977cd851a493798d",
#   "subnet-0cf6f7d1c30a00612", "subnet-08cb635201da8cf97"
#]

#route_table_subnet_map = {
#  "RTB-GIS-Test-Private" = ["subnet-042545b810a1a4e55", "subnet-057dd1db78ad239b2"] 
#  "RTB-GIS-Test-Public" = ["subnet-04e0fb597aa9e19c1", "subnet-07312fba78d9aab8e"]
#  "RTB-GIS-Test-RDS" = ["subnet-0ca76635703d30ff4", "subnet-0977cd851a493798d"]
#  "RTB-GIS-Test-TGWA" = ["subnet-0cf6f7d1c30a00612", "subnet-08cb635201da8cf97"]
#}



