terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "madhu-locking-state"
    key            = "expense-bastion"
    region         = "us-east-1"
    dynamodb_table = "terraformlocking"
  }


}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}