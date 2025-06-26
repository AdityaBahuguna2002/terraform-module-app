resource "aws_dynamodb_table" "my-dynamodb-table" {
    name = "${var.env}-my-infra-app-dynamodb-table"
    billing_mode = "PAY_PER_REQUEST" # On-demand billing mode
    hash_key = "${var.hash_key}"
    attribute {
        name = var.hash_key
        type = "S" # String type for the hash key
    }
    tags = {
        Name = "${var.env}-my-infra-app-dynamodb-table"
        Environment = var.env
    }
}
