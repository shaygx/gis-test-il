variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.131.0.0/16"
}

variable "vpc_id" {
  description = "vpc-0804656fbcbfa78cf"
  type        = string
}


variable "vpc_name" {
   description = "vpc-gis-test"
   type        = string
  default     = "vpc-gis-test"
}

variable "aws_region" {
  description = "AWS region for the VPC"
  type        = string
  default     = "il-central-1"
}

variable "tags" {
  description = "Tags for the VPC"
  type        = map(string)
  default     = {
    Environment = "Test"
  }
}

#variable "igw_name" {
#  description = "The name for the Internet Gateway"
#  type        = string
#}


variable "subnet_private_cidrs" {
        type = list(string)
        description = "private subnets"
        default = ["10.131.1.0/24", "10.131.2.0/24"]
}

variable "subnet_private_names" {
  type    = list(string)
  default = ["subnet-gis-test-private-az1", "subnet-gis-test-private-az2"]  # Define custom names
}

variable "private_availability_zones" {
        type = list(string)
        description = "AZS"
        default = ["il-central-1a", "il-central-1b"]
}


variable "subnet_private_tags" {
  description = "Tags for the subnets"
  type        = map(string)
  default     = {
    Environment = "Test"
  }
}

variable "subnet_public_cidrs" {
        type = list(string)
        description = "public subnets"
        default = ["10.131.3.0/24", "10.131.4.0/24"]
}

variable "subnet_public_names" {
  type    = list(string)
  default = ["subnet-gis-test-public-az1", "subnet-gis-test-public-az2"]  # Define custom names
}

variable "public_availability_zones" {
        type = list(string)
        description = "AZS"
        default = ["il-central-1a", "il-central-1b"]
}


variable "subnet_public_tags" {
  description = "Tags for the subnets"
  type        = map(string)
  default     = {
    Environment = "Test"
 }
}


variable "tgw_id" {
	description = "TGW ID"
	type        = string
	default = "tgw-0430826c231550bf5"
}

variable "transit_gateway_vpc_attachment" {
  description = "Details for the Transit Gateway VPC attachment"
  type        = map(any) # Adjust type based on your requirements
}


variable "subnet_tgwa_cidrs" {
        type = list(string)
        description = "tgwa subnets"
        default = ["10.131.5.0/24", "10.131.6.0/24"]
}

variable "subnet_tgwa_names" {
  type    = list(string)
  default = ["subnet-gis-test-tgwa-az1", "subnet-gis-test-tgwa-az2"]  # Define custom names
}

variable "tgwa_availability_zones" {
        type = list(string)
        description = "AZS"
        default = ["il-central-1a", "il-central-1b"]
}


variable "subnet_tgwa_tags" {
  description = "Tags for the subnets"
  type        = map(string)
  default     = {
    Environment = "Test"
 }
}


variable "subnet_rds_cidrs" {
        type = list(string)
        description = "rds subnets"
        default = ["10.131.7.0/24", "10.131.8.0/24"]
}

variable "subnet_rds_names" {
  type    = list(string)
  default = ["subnet-gis-test-rds-az1", "subnet-gis-test-rds-az2"]  # Define custom names
}

variable "rds_availability_zones" {
        type = list(string)
        description = "AZS"
        default = ["il-central-1a", "il-central-1b"]
}


variable "subnet_rds_tags" {
  description = "Tags for the subnets"
  type        = map(string)
  default     = {

    Environment = "Test"
 }

}

#variable "route_table_id" {
#  description = "Tags to apply to the new route table"
#  type        = map(string)
#}


#variable "route_table_names" {
# description = "List of route table names"
#  type        = list(string)
#}

#variable "route_table_subnet_map" {
#  description = "A map of route table names to their associated subnet IDs"
#  type        = map(list(string))
#}



variable "role_name" {
   description = "The name of the SSM IAM role"
   type        = string
}




variable "assume_role_principal" {
   description = "The AWS service that will assume this role"
   type        = string
   default     = "ec2.amazonaws.com"  # Typically, this is EC2 for SSM roles.
 }

variable "instance_profile_name" {
   description = "The name of the instance profile to attach to EC2 instances"
   type        = string
 }

variable "max_session_duration" {
  description = "The maximum session duration for the IAM role in seconds"
  type        = number
  default     = 14400  # Default to 4 hour
}

variable "security_group_ids" {
  type      = list(string)
  default   = ["sg-0dc36b82e7306e3b7"]
}

variable "security_group_name" {
  description = "ssm-to-ec2"
  type        = string
}

variable "ingress_rules" {
  description = "List of ingress rules for the security group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "egress_rules" {
  description = "List of egress rules for the security group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = -1
      cidr_blocks = ["10.131.0.0/16"]
    }
  ]
}



variable "subnet_ids" {
   description = "The IDs of the subnets where endpoints should be deployed"
   type        = list(string)
   default     = ["subnet-0c362b393708ec1a1", "subnet-0562cde526444a353"]
}


variable "region" {
  description = "AWS region for the deployment"
  type        = string
  default     = "il-central-1"
}

variable "ssm_endpoint_types" {
  description = "List of SSM endpoint services to create"
  type        = list(string)
  default     = ["ssm", "ssmmessages", "ec2messages"]
}





