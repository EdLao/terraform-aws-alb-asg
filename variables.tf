variable "project_name" {
  description = "Name used to identify project resources"
  type        = string
  default     = "project4"
}

variable "vpc_cidr" {
  description = "IP address range for the VPC"
  type        = string
  default     = "10.50.0.0/16"
}

variable "instance_type" {
  description = "EC2 instance size"
  type        = string
  default     = "t3.micro"
}
