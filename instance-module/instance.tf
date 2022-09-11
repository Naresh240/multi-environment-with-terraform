resource "aws_instance" "example" {
  ami           = lookup(var.instance_ami, var.region)
  instance_type = var.instance_type
  count         = var.instance_count
  key_name      = var.key_name

  tags = {
    Name = "${var.profile}-instance"
    Environment = var.environment
  }
}