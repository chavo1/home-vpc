# network.tf

resource "aws_vpc" "consul_vpc" {
  cidr_block = var.vpc_net

  tags = {
    Name = "VPC_chavo"
  }
}
# Create private subnets
resource "aws_subnet" "private" {
  cidr_block              = var.private_cidr
  vpc_id                  = aws_vpc.consul_vpc.id
  map_public_ip_on_launch = false

  tags = {
    Name = "chavo-private"
  }
}
# Explicitly associate private subnet to the main
resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_vpc.consul_vpc.main_route_table_id
}
