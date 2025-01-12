# Set Ec2 Instances


resource "aws_instance" "gis-internal" {
  subnet_id = "subnet-00c91967500cfa6ce"
  iam_instance_profile = "ec2-instance-profile"
  vpc_security_group_ids = [aws_security_group.ssm-to-ec2.id, aws_security_group.ec2-to-tgw.id, aws_security_group.ec2-active-directory-op-aws.id, aws_security_group.prtg-access.id]
  disable_api_termination = true
  count = 1
  ami           = "ami-0f8dd33d1a101f112"
  instance_type = "m5.2xlarge"
  root_block_device {
   volume_type = "gp3"
   volume_size = 150
  }
  ebs_block_device {
    volume_type = "gp3"
    device_name = "/dev/sdb"
    volume_size = 500
}

tags = {
  Name = "i-ayalon-gis-test"
   }
  

metadata_options {
    http_tokens               = "required"   # Enforces IMDSv2
    http_put_response_hop_limit = 1          # Limit the number of network hops
    http_endpoint             = "enabled"    # Enable or disable the metadata service
  }
 }

resource "aws_instance" "gis-external" {
  subnet_id = "subnet-0418c5ef6e8b8abb8"
  iam_instance_profile = "ec2-instance-profile"
  vpc_security_group_ids = [aws_security_group.ssm-to-ec2.id, aws_security_group.ec2-to-tgw.id, aws_security_group.ec2-active-directory-op-aws.id, aws_security_group.prtg-access.id]
  disable_api_termination = true
  count = 1
  ami           = "ami-0f8dd33d1a101f112"
  instance_type = "m5.xlarge"
  root_block_device {
   volume_type = "gp3"
   volume_size = 100
}
tags = {
  Name = "i-ayalonhw-gis-test"
   }
  

metadata_options {
    http_tokens               = "required"   # Enforces IMDSv2
    http_put_response_hop_limit = 1          # Limit the number of network hops
    http_endpoint             = "enabled"    # Enable or disable the metadata service
  }
 }
