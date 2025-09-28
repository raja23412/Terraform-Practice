resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc_info.vpccidr
  tags = {
    Name = var.vpc_info.vpcname
  }
}
resource "aws_subnet" "sub" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.vpc_info.sub_info.subcidr
  availability_zone = var.vpc_info.sub_info.subaz
  tags = { 
    Name = var.vpc_info.sub_info.subname
  }
}