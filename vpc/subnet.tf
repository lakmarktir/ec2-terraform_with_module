resource "aws_subnet" "pubsubnet" {
  vpc_id     = aws_vpc.test.id
  cidr_block = var.pubsubnetcidr

  tags = {
    Name = "terrapubsubnet"
  }
}
resource "aws_subnet" "privsubnet" {
  vpc_id     = aws_vpc.test.id
  cidr_block = var.privsubnetcidr

  tags = {
    Name = "terraprivsubnet"
  }
}
resource "aws_route_table_association" "public" {
  depends_on     = [aws_subnet.pubsubnet]
  subnet_id      = aws_subnet.pubsubnet.id
  route_table_id = aws_route_table.pubrt.id
}

resource "aws_route_table_association" "private" {
  depends_on     = [aws_subnet.privsubnet]
  subnet_id      = aws_subnet.privsubnet.id
  route_table_id = aws_route_table.privrt.id
}

