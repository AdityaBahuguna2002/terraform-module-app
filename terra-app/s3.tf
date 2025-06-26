resource "aws_s3_bucket" "my-infra-bucket" {
    bucket = "${var.env}-${var.bucket_name}"

    tags = {
      Name = "${var.env}-${var.bucket_name}"
      Environment = var.env
    }
}