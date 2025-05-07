terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.97.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "test" {
  bucket = "my-tf-test-bucket-bdgdko-nsjs"

  tags = {
    Name        = "My bucket"
    Environment = var.env
  }
}