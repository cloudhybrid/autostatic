# S3 bucket for hosting static website
resource "aws_s3_bucket" "primary_domain" {
  bucket = "${var.primary_domain}"

  website {
    index_document = "index.html"
  }
}

# Hello, world HTML file
resource "aws_s3_bucket_object" "index_html" {
  bucket       = "${aws_s3_bucket.primary_domain.id}"
  key          = "index.html"
  source       = "index.html"
  acl          = "public-read"
  content_type = "text/html"
}
