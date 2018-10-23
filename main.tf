module "label" {
  source     = "git::https://github.com/cloudposse/terraform-null-label.git?ref=tags/0.5.3"
  namespace  = "${var.namespace}"
  stage      = "${var.stage}"
  name       = "${var.name}"
  delimiter  = "${var.delimiter}"
  attributes = "${var.attributes}"
  tags       = "${var.tags}"
}

resource "aws_iam_account_alias" "default" {
  account_alias = "${module.label.id}"
}

resource "aws_iam_account_password_policy" "this" {
  count = "${var.password_policy_enabled == "true" ? 1 : 0}"

  allow_users_to_change_password = "${var.allow_users_to_change_password}"
  hard_expiry                    = "${var.hard_expiry}"
  max_password_age               = "${var.max_password_age}"
  minimum_password_length        = "${var.minimum_password_length}"
  password_reuse_prevention      = "${var.password_reuse_prevention}"
  require_lowercase_characters   = "${var.require_lowercase_characters}"
  require_uppercase_characters   = "${var.require_uppercase_characters}"
  require_numbers                = "${var.require_numbers}"
  require_symbols                = "${var.require_symbols}"
}
