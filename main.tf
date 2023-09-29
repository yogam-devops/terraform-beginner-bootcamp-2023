terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.19.0"
    }

  }
}


provider "aws" {
  # Configuration options
}

provider "random" {
  # Configuration options
}


resource "random_string" "bucket_name" {
  length           = "16"
  special          = "false"
  lower            = "true"
  upper            = "false"
}

resource "aws_s3_bucket" "example" {
  bucket = "terraformbeginnerbootcamp2023yoga"
}

output "aws_s3_bucket_bucket_name"{
  value = aws_s3_bucket.example.arn
}
