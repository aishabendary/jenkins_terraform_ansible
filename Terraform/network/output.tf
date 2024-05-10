output vpc_id{
    value = aws_vpc.terraform_vpc.id
    description = "vpc id"
}

output vpc_cidr{
    value = aws_vpc.terraform_vpc.cidr_block
    description = "vpc cidr"
}

output public_subnet_id{
    value = aws_subnet.public_subnet_aisha.id
    description = "public subnet id"
}

output public_subnet_id_2{
    value = aws_subnet.public_subnet_aisha_2.id
    description = "public subnet id 2"
}

output private_subnet_id{
    value = aws_subnet.private_subnet_aisha.id
    description = "private subnet id"
}

output private_subnet_id_2{
    value = aws_subnet.private_subnet_aisha2.id
    description = "private subnet 2 id"
}