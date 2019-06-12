variable "enabled" {
  description = "Whether or not to create the IAM account alias"
  default     = "true"
}

variable "name" {
  description = "The Name of the account or solution  (e.g. `account`)"
  default     = "account"
}

variable "namespace" {
  description = "Namespace (e.g. `eg` or `cp`)"
  default     = ""
}

variable "stage" {
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
  default     = ""
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name` and `attributes`"
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`, `a`, etc)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `{\"BusinessUnit\" = \"XYZ\"}`)"
}

variable "password_policy_enabled" {
  description = "Whether or not to create the IAM account password policy"
  default     = "true"
}

variable "allow_users_to_change_password" {
  description = "Whether to allow users to change their own password"
  default     = true
}

variable "hard_expiry" {
  description = "Whether users are prevented from setting a new password after their password has expired (i.e. require administrator reset)"
  default     = false
}

variable "max_password_age" {
  description = "The number of days that a user's password is valid"
  default     = 0
}

variable "minimum_password_length" {
  description = "Minimum length to require for user passwords"
  default     = 8
}

variable "password_reuse_prevention" {
  description = "The number of previous passwords that users are prevented from reusing"
  default     = true
}

variable "require_lowercase_characters" {
  description = "Whether to require lowercase characters for user passwords"
  default     = true
}

variable "require_uppercase_characters" {
  description = "Whether to require uppercase characters for user passwords"
  default     = true
}

variable "require_numbers" {
  description = "Whether to require numbers for user passwords"
  default     = true
}

variable "require_symbols" {
  description = "Whether to require symbols for user passwords"
  default     = true
}

