provider "aws" {
  region = "us-east-1"  # Change to your desired AWS region
}

resource "aws_dynamodb_table" "example" {
  name           = "test-table-tald"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "user_id"
  attribute {
    name = "user_id"
    type = "S"
  }
}
