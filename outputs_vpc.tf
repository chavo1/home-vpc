output "private_subnet" {
  value = aws_subnet.private.*.id
}
output "vpc" {
  value = aws_vpc.consul_vpc.*.id
}
output "private_subnet_cidr" {
  value = aws_subnet.private.cidr_block
}
output "main_route_table_id" {
  value = aws_vpc.consul_vpc.main_route_table_id
}