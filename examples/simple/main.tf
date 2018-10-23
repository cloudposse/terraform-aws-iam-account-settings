provider "aws" {
  # Make it faster by skipping something
  skip_get_ec2_platforms      = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}

module "account_settings" {
  source    = "../../"
  namespace = "eg"
  stage     = "prod"
  name      = "account"
  enabled   = "false"

  allow_users_to_change_password = true
  minimum_password_length        = 8
  password_reuse_prevention      = true
}

output "account_alias" {
  value = "${module.account_settings.account_alias}"
}

output "signin_url" {
  value = "${module.account_settings.signin_url}"
}
