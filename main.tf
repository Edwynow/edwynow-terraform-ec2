# Deploy the EC2 instance
resource "aws_instance" "edwynow_ec2" {
  ami           = "ami-0e5df6fd7455a69b3"
  instance_type = "t3.micro"
  key_name      = "edwynowltd"
  vpc_security_group_ids = [aws_security_group.edwynow_ec2_sg.id]
  user_data = file("userdata.sh")

  tags = {
    Name        = "edwynow-app"
    Environment = "Dev"
  }
}