# Deploy the EC2 instance
resource "aws_instance" "edwynow_ec2" {
  ami           = "ami-0e5df6fd7455a69b3"
  instance_type = "t3.micro"

  tags = {
    Name        = "edwynow-app"
    Environment = "Dev"
  }
}