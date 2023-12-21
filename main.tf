provider "aws" {
  region = "eu-central-1"
}

terraform {
  required_version = ">= 1.5.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.1"
    }
  }

  cloud {
    organization = "Thaer-org"

    workspaces {
      name = "bla-cli"
    }
  }
}

resource "aws_dynamodb_table" "example" {
  name         = "test-table-tald-${terraform.workspace}"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "user_id"
  attribute {
    name = "user_id"
    type = "S"
  }
}
