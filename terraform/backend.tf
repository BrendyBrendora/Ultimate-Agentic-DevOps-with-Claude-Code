# ---------------------------------------------------------------------------
# Remote state backend (S3)
# ---------------------------------------------------------------------------
# The backend is intentionally COMMENTED OUT for the first run, because the
# state bucket does not exist yet.
#
# Bootstrapping steps:
#   1. Run `terraform init` (no backend) and `terraform apply` to create the
#      infrastructure. State is stored locally in terraform.tfstate.
#   2. Create an S3 bucket to hold remote state (and optionally a DynamoDB
#      table for state locking). Do this manually or in a separate config.
#   3. Uncomment the block below and fill in your bucket name.
#   4. Run `terraform init -migrate-state` to copy the local state to S3.
#
# terraform {
#   backend "s3" {
#     bucket         = "portfolio-site-tfstate"   # <-- your state bucket name
#     key            = "portfolio-site/terraform.tfstate"
#     region         = "ap-south-1"
#     encrypt        = true
#     dynamodb_table = "portfolio-site-tflock"     # optional: state locking
#   }
# }
