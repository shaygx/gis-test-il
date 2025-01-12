resource "aws_ec2_transit_gateway_vpc_attachment" "tgwa-gis-test" {
	transit_gateway_id = var.tgw_id
  	vpc_id             = aws_vpc.main.id
	subnet_ids         = ["subnet-075b52535a58670b3", "subnet-005921e193fed799b"]
  tags = var.tags
}

resource "aws_route" "route-to-tgw-1" {
    route_table_id         =  aws_route_table.RTB-GIS-Test-Private.id
    destination_cidr_block = "10.10.20.20/32"  # First destination CIDR block
    transit_gateway_id     = "tgw-0430826c231550bf5"  # Same Transit Gateway ID as the target
}

resource "aws_route" "route_to_tgw-2" {
   route_table_id         =  aws_route_table.RTB-GIS-Test-Private.id
   destination_cidr_block = "0.0.0.0/0"  # Secound destination CIDR block
   transit_gateway_id     = "tgw-0430826c231550bf5"  # Same Transit Gateway ID as the target
 
}
