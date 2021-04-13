module "cloudtrail_s3_bucket" {
  source  = "cloudposse/cloudtrail-s3-bucket/aws"
  version = "0.17.2"

  expiration_days                    = var.expiration_days
  force_destroy                      = false
  glacier_transition_days            = var.glacier_transition_days
  lifecycle_rule_enabled             = var.lifecycle_rule_enabled
  noncurrent_version_expiration_days = var.noncurrent_version_expiration_days
  noncurrent_version_transition_days = var.noncurrent_version_transition_days
  sse_algorithm                      = "AES256"
  standard_transition_days           = var.standard_transition_days
  versioning_enabled                 = true
  create_access_log_bucket           = true

  context = module.this.context
}
