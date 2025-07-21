variable "vpc_cidr" {
  description = "vpc cidr range"
  type        = string
}

variable "subnet_public_cidr" {
  description = "cidr range for public subnet"
  type        = string
}

variable "subnet_private_cidr" {
  description = "cidr range for private subnet"
  type        = string
}

variable "aws_region" {
  description = "region where vpc to be created"
  type        = string
}
