variable "instance_type" {
  description = "Type of Instance"
  type        = string
}

variable "ami_id" {
  description = "Instance ID"
  type        = string
}

variable "instance_count" {
  description = "count of Instance to be provisioned"
  type        = number
  default     = 2
}

variable "subnet_id" {
  description = "subnet ID"
  type        = string
}

variable "vpc_id" {
  description = "vpc ID"
  type        = string
}

variable "aws_region" {
  description = "region"
  type        = string
  default     = "us-west-2"
}
