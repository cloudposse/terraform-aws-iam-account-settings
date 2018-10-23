output "account_alias" {
  description = "IAM account alias"
  value       = "${local.account_alias}"
}

output "url" {
  description = "IAM users sign-in link"
  value       = "https://${local.account_alias}.signin.aws.amazon.com/console"
}
