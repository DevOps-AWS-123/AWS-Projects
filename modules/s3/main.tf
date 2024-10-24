resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name = "MyS3Bucket"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}
