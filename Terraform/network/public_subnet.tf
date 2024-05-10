resource "aws_subnet" "public_subnet_aisha" {
  vpc_id                  = aws_vpc.terraform_vpc.id
  map_public_ip_on_launch = true 
  cidr_block              = var.public_subnet_cidr
  availability_zone = "${var.region_name}a"
  
  tags = {
    Name = "Public Subnet"
  }
}


resource "aws_subnet" "public_subnet_aisha_2" {
  vpc_id                  = aws_vpc.terraform_vpc.id
  map_public_ip_on_launch = true 
  cidr_block              = var.public_subnet_cidr_2
  availability_zone = "${var.region_name}b"
  
  tags = {
    Name = "Public Subnet 2"
  }
}