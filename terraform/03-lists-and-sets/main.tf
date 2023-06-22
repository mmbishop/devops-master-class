variable "names" {
  default = ["mike", "sam", "dave"]
}

terraform {
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

resource "aws_iam_user" "my_iam_users" {
  for_each = toset(var.names)
  name = each.value
}
