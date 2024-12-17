resource "aws_route_table" "RTB-GIS-Test-Private" {
  vpc_id = var.vpc_id

tags = {
    Name = "RTB-GIS-Test-Private"
   }
}


resource "aws_route" "route-to-tgw-1" {
  route_table_id         =  aws_route_table.RTB-GIS-Test-Private.id
  destination_cidr_block = "10.110.0.0/16"  # First destination CIDR block
  transit_gateway_id     = "tgw-0430826c231550bf5"  # Same Transit Gateway ID as the target
}

resource "aws_route" "route_to_tgw-2" {
  route_table_id         =  aws_route_table.RTB-GIS-Test-Private.id
  destination_cidr_block = "172.16.0.0/16"  # Secound destination CIDR block
  transit_gateway_id     = "tgw-0430826c231550bf5"  # Same Transit Gateway ID as the target

}

resource "aws_route_table_association" "subnet-gis-test-private-az1" {
  subnet_id    = "subnet-0c362b393708ec1a1"
  route_table_id = aws_route_table.RTB-GIS-Test-Private.id
}


resource "aws_route_table_association" "subnet-gis-test-private-az2" {
  subnet_id    = "subnet-0562cde526444a353"
  route_table_id = aws_route_table.RTB-GIS-Test-Private.id
}


resource "aws_route_table" "RTB-GIS-Test-Public" {
  vpc_id = var.vpc_id

tags = {
    Name = "RTB-GIS-Test-Public"
   }
}

resource "aws_route_table_association" "subnet-gis-test-public-az1" {
  subnet_id    = "subnet-0ccbab6cf511939c3"
  route_table_id = aws_route_table.RTB-GIS-Test-Public.id
}


resource "aws_route_table_association" "subnet-gis-test-public-az2" {
  subnet_id    = "subnet-082fcdb11f51c0e2f"
  route_table_id = aws_route_table.RTB-GIS-Test-Public.id
}



resource "aws_route_table" "RTB-GIS-Test-RDS" {
  vpc_id = var.vpc_id

tags = {
    Name = "RTB-GIS-Test-RDS"
   }
}

resource "aws_route_table_association" "subnet-gis-test-rds-az1" {
  subnet_id    = "subnet-02d3b7e527580558a"
  route_table_id = aws_route_table.RTB-GIS-Test-RDS.id
}


resource "aws_route_table_association" "subnet-gis-test-rds-az2" {
  subnet_id    = "subnet-0e6375ac41093247b"
  route_table_id = aws_route_table.RTB-GIS-Test-RDS.id
}


resource "aws_route_table" "RTB-GIS-Test-TGWA" {
  vpc_id = var.vpc_id

tags = {
    Name = "RTB-GIS-Test-TGWA"
   }
}

resource "aws_route_table_association" "subnet-gis-test-tgwa-az1" {
  subnet_id    = "subnet-036635c1c04b5a8b7"
  route_table_id = aws_route_table.RTB-GIS-Test-TGWA.id
}


resource "aws_route_table_association" "subnet-gis-test-tgwa-az2" {
  subnet_id    = "subnet-052b053d1b57a83b2"
  route_table_id = aws_route_table.RTB-GIS-Test-TGWA.id
}
