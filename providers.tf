terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.85.0"
    }
  }
  backend "s3" {
    bucket         = "remotestate-s301"
    key            = "expense-vpc"
    region         = "us-east-1"
    dynamodb_table = "expense-vpc-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}
