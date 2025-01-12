



resource "aws_route_table" "RTB-GIS-Test-Private" {
  vpc_id = aws_vpc.main.id

tags = {
    Name = "RTB-GIS-Test-Private"
   }
}

resource "aws_route_table_association" "subnets-gis-test-private" {
  subnet_id      = "subnet-00c91967500cfa6ce"
  route_table_id = aws_route_table.RTB-GIS-Test-Private.id
}


resource "aws_route_table_association" "subnet-gis-test-private-az2" {
  subnet_id    = "subnet-0418c5ef6e8b8abb8"
  route_table_id = aws_route_table.RTB-GIS-Test-Private.id
}




resource "aws_route_table" "RTB-GIS-Test-Public" {
  vpc_id = aws_vpc.main.id

tags = {
    Name = "RTB-GIS-Test-Public"
   }
}

resource "aws_route_table_association" "subnet-gis-test-public-az1" {
  subnet_id    = "subnet-030fd3f1465c47350"
  route_table_id = aws_route_table.RTB-GIS-Test-Public.id
}


resource "aws_route_table_association" "subnet-gis-test-public-az2" {
  subnet_id    = "subnet-01036007c9cbe5704"
  route_table_id = aws_route_table.RTB-GIS-Test-Public.id
}



resource "aws_route_table" "RTB-GIS-Test-RDS" {
  vpc_id = aws_vpc.main.id

tags = {
    Name = "RTB-GIS-Test-RDS"
   }
}

resource "aws_route_table_association" "subnet-gis-test-rds-az1" {
  subnet_id    = "subnet-0295014a933e19a80"
  route_table_id = aws_route_table.RTB-GIS-Test-RDS.id
}


resource "aws_route_table_association" "subnet-gis-test-rds-az2" {
  subnet_id    = "subnet-0e1e573c1dd8d5629"
  route_table_id = aws_route_table.RTB-GIS-Test-RDS.id
}


resource "aws_route_table" "RTB-GIS-Test-TGWA" {
  vpc_id = aws_vpc.main.id

tags = {
    Name = "RTB-GIS-Test-TGWA"
   }
}

resource "aws_route_table_association" "subnet-gis-test-tgwa-az1" {
  subnet_id    = "subnet-075b52535a58670b3"
  route_table_id = aws_route_table.RTB-GIS-Test-TGWA.id
}


resource "aws_route_table_association" "subnet-gis-test-tgwa-az2" {
  subnet_id    = "subnet-005921e193fed799b"
  route_table_id = aws_route_table.RTB-GIS-Test-TGWA.id
}
