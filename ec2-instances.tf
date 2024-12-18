# Set Ec2 Instances


resource "aws_instance" "Internal" {
  subnet_id = "subnet-0c362b393708ec1a1"
  iam_instance_profile = "ec2-ssm-role"
  security_groups = ["sg-0dc36b82e7306e3b7"]
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
        Name = "i-testayalongis"
 }
}



resource "aws_instance" "External" {
  subnet_id = "subnet-0562cde526444a353"
  iam_instance_profile = "ec2-ssm-role"
  security_groups = ["sg-0dc36b82e7306e3b7"]
  count = 1
  ami           = "ami-0f8dd33d1a101f112"
  instance_type = "m5.xlarge"
  root_block_device {
   volume_type = "gp3"
   volume_size = 100
  }

tags = {
        Name = "i-testayalongishw"
  }
} 
