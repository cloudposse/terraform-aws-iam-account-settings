output "account_alias" {
  description = "IAM account alias"
  value       = "${aws_iam_account_alias.default.account_alias}"
}

output "url" {
  description = "IAM users sign-in link"
  value       = "https://${aws_iam_account_alias.default.account_alias}.signin.aws.amazon.com/console"
}
