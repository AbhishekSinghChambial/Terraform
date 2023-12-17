terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-2"
  profile = "default"
}
resource "aws_s3_bucket" "mybucket" {
  bucket = "my-bucket1212377890" 

  tags = {
    Name        = "MyS3Bucket"
    Environment = "Dev"
  }
}