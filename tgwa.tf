resource "aws_ec2_transit_gateway_vpc_attachment" "tgwa-gis-test" {
	transit_gateway_id = var.tgw_id
  	vpc_id             = var.vpc_id
	subnet_ids         = ["subnet-0cf6f7d1c30a00612", "subnet-08cb635201da8cf97"]
  tags = var.tags
}

