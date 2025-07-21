# Create Ec2 Instance

resource "aws_instance" "vm" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  count                       = var.instance_count
  subnet_id                   = var.subnet_id
  region                      = var.aws_region
  associate_public_ip_address = true
}
