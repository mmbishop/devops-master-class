terraform {
  backend "s3" {
    bucket = "dev-applications-backend-state-tend2dv8-abc"
    key = "07-backend-state/users/backend-state"
    region = "us-east-1"
    dynamodb_table = "dev_application_locks"
    encrypt = true
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.4.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
