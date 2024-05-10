# create private route table
resource "aws_route_table" "private_rt_1" {
  vpc_id = aws_vpc.terraform_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.my_nat.id
  }
}

# assign private subnet to private route table
resource "aws_route_table_association" "private_subnet_asso_1" {
  subnet_id      = aws_subnet.private_subnet_aisha.id
  route_table_id = aws_route_table.private_rt_1.id
}

