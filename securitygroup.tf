resource "aws_security_group" "edwynow_ec2_sg" {
  name        = "edwynow-ec2-sg"
  description = "Security group for edwynow EC2 instance"
  vpc_id      = "vpc-0c6f63d6205bb69b8" 
}

resource "aws_security_group_rule" "allow_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
    security_group_id = aws_security_group.edwynow_ec2_sg.id
}
resource "aws_security_group_rule" "allow_http" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
    security_group_id = aws_security_group.edwynow_ec2_sg.id
}
resource "aws_security_group_rule" "allow_https" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
    security_group_id = aws_security_group.edwynow_ec2_sg.id
}
resource "aws_security_group_rule" "allow_all_outbound" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
    security_group_id = aws_security_group.edwynow_ec2_sg.id
}