resource "aws_route_table" "pubrt" {
  vpc_id = aws_vpc.test.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
tags = {
    Name = "terrapublicRT"
  }
}
resource "aws_route_table" "privrt" {
  vpc_id = aws_vpc.test.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.natgw.id
  }
tags = {
    Name = "terraprivateRT"
  }
}


