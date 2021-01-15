output "account_alias" {
  description = "IAM account alias"
  value       = local.account_alias
}

output "minimum_password_length" {
  description = "IAM account minimum password length"
  value       = join("", aws_iam_account_password_policy.default.*.minimum_password_length)
}

output "signin_url" {
  description = "IAM users sign-in URL"
  value       = "https://${local.account_alias}.signin.aws.amazon.com/console"
}
