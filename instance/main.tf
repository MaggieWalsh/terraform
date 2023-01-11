resource "aws_instance" "example" {
  ami           = var.ami_name
  instance_type = var.machine_type
}
