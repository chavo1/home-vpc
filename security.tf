# security.tf

# Traffic to the ECS cluster should only come from the ALB
resource "aws_security_group" "sg-group" {
  name        = "security-group"
  description = "allow inbound access"
  vpc_id      = aws_vpc.consul_vpc.id

  ingress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  // Custom ICMP Rule - IPv4 Echo Reply
  ingress {
    from_port   = "0"
    to_port     = "-1"
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  // Custom ICMP Rule - IPv4 Echo Request
  ingress {
    from_port   = "8"
    to_port     = "-1"
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
