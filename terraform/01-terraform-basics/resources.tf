resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "my-s3-bucket-in28minutes-tend2dv8"
}

resource "aws_s3_bucket_versioning" "my_s3_bucket_versioned" {
  bucket = "my-s3-bucket-in28minutes-tend2dv8"
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_iam_user" "my_iam_user" {
  name = "my_iam_user_abc_updated"
}
