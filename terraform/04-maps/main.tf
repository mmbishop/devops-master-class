variable "users" {
  default = {
    "mike" : { country : "USA", department : "ABC" },
    "sam" : { country : "Taiwan", department : "DEF" },
    "dave" : { country : "Japan", department : "ABC" }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.4.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "my_iam_users" {
  for_each = var.users
  name     = each.key
  tags = {
    country : each.value.country
    department : each.value.department
  }
}
