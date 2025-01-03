terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.76.0"
    }
  }

  backend "s3" {
    bucket = "haritha-bucket"
    key    = "expense-bastion"
    region = "us-east-1"
    dynamodb_table = "haritha-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}