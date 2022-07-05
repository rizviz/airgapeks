resource "aws_dynamodb_table" "lock_table" {
  name           = "${var.prefix}-dynamodb"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"
  tags           = {
                 Name = "${var.cust_name}-${var.region_role}-Dev"
     }


  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_ssm_parameter" "locks_table_arn" {
  name  = "${var.ssm_prefix}/tf-locks-table-arn"
  type  = "String"
  value = aws_dynamodb_table.lock_table.arn
}
