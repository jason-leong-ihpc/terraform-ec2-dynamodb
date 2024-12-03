# Create DynamoDB table for book inventory
resource "aws_dynamodb_table" "book_inventory" {
  name         = "jason-ce8-2.5-bookinventory"
  billing_mode = "PAY_PER_REQUEST" # Use on-demand billing mode for flexibility
  hash_key     = "ISBN"            # Partition Key
  range_key    = "Genre"           # Sort Key

  attribute {
    name = "ISBN"
    type = "S"                     # String type
  }

  attribute {
    name = "Genre"
    type = "S"                     # String type
  }

  tags = {
    Name        = "BookInventoryTable"
    Environment = "Production"
  }
}

# import {
#   to = aws_dynamodb_table.book_inventory
#   id = "jason-bookinventory"
# }