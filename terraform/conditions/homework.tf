terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

variable "ami_id" {
  default     = "ami-0533f2ba8a1995cf9"
}

variable "create_instance" {
  description = "Whether to create an EC2 instance"
  type        = bool
  default     = true 
}

variable "tags" {
  description = "A map of tags to apply to the EC2 instance"
  type        = map(string)
  default = {
    Name = "MyInstance"
  }
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

resource "aws_instance" "my_instance" {
  count = var.create_instance ? 1 : 0 #  Conditional creation
  instance_type          =  (substr(var.instance_type, 0, 2) == "t2") ? "t3.micro" : var.instance_type

}