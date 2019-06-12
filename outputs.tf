output "account_alias" {
  description = "IAM account alias"
  value       = local.account_alias
}

output "signin_url" {
  description = "IAM users sign-in URL"
  value       = "https://${local.account_alias}.signin.aws.amazon.com/console"
}

