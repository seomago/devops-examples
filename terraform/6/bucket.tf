resource "minio_s3_bucket" "state_terraform_s3" {
  bucket = "state-terraform-s3"
  acl    = "public"
}
# Error: [FATAL] Unable to check bucket (state-terraform-s3): Get "http://localhost:9001/state-terraform-s3/?location=": dial tcp 127.0.0.1:9001: connect: connection refused



resource "minio_s3_object" "txt_file" {
  depends_on = [minio_s3_bucket.state_terraform_s3]
  bucket_name = minio_s3_bucket.state_terraform_s3.bucket
  object_name = "text.txt"
  content = "Lorem ipsum dolor sit amet."
}

# https://github.com/gaima8/terraform-provider-minio/tree/master/examples/bucket


#resource "minio_iam_user" "minio_user" {
#  name = "minio_user"
#}

