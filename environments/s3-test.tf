# resource "random_string" "random" {
#   length  = 8
#   special = false
#   lower   = true
#   upper   = false
#   # override_special = "/@£$"
# }

# Without Random string
resource "aws_s3_bucket" "user_data" {
  bucket = "amitkarpeamitkarpeamit-${terraform.workspace}"
  acl    = "private"
}

# With Random string
# resource "aws_s3_bucket" "user_data" {
#   bucket = "amitkarpeamitkarpeamit-${random_string.random.result}-${terraform.workspace}"
#   acl    = "private"
# }

output "s3-name" {
  value = aws_s3_bucket.user_data.bucket
}

# Check AWS Account ID
output "aws_account_id" {
  value = var.aws_account_id
}