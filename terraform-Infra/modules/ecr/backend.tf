terraform {
  backend "s3" {
    bucket         = "terraform-stfile" # Replace with your S3 bucket name
    key            = "terraform-stfile/dev/terraform.tfstate" # Adjust path for each environment
    region         = "ap-south-1" # Replace with your S3 bucket region
    dynamodb_table = "terraform-lock-table" # Optional for state locking
    encrypt        = true # Encrypt state file in S3
  }
}
