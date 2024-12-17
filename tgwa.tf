resource "aws_ec2_transit_gateway_vpc_attachment" "tgwa-gis-test" {
	transit_gateway_id = var.tgw_id
  	vpc_id             = var.vpc_id
	subnet_ids         = ["subnet-036635c1c04b5a8b7", "subnet-052b053d1b57a83b2"]
  tags = var.tags
}

