variable "enabled" {
  description = "Whether or not to create the IAM account alias"
  type        = bool
  default     = true
}

variable "name" {
  description = "The Name of the account or solution  (e.g. `account`)"
  type        = string
  default     = "account"
}

variable "namespace" {
  description = "Namespace (e.g. `eg` or `cp`)"
  type        = string
  default     = ""
}

variable "stage" {
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
  type        = string
  default     = ""
}

variable "delimiter" {
  description = "Delimiter to be used between `namespace`, `stage`, `name` and `attributes`"
  type        = string
  default     = "-"
}

variable "attributes" {
  description = "Additional attributes (e.g. `1`, `a`, etc)"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Additional tags (e.g. `{\"BusinessUnit\" = \"XYZ\"}`)"
  type        = map(string)
  default     = {}
}

variable "password_policy_enabled" {
  description = "Whether or not to create the IAM account password policy"
  type        = bool
  default     = true
}

variable "allow_users_to_change_password" {
  description = "Whether to allow users to change their own password"
  type        = bool
  default     = true
}

variable "hard_expiry" {
  description = "Whether users are prevented from setting a new password after their password has expired (i.e. require administrator reset)"
  type        = bool
  default     = false
}

variable "max_password_age" {
  description = "The number of days that a user's password is valid"
  type        = number
  default     = 90
}

variable "minimum_password_length" {
  description = "Minimum length to require for user passwords"
  type        = number
  default     = 14
}

variable "password_reuse_prevention" {
  description = "The number of previous passwords that users are prevented from reusing"
  type        = number
  default     = 24
}

variable "require_lowercase_characters" {
  description = "Whether to require lowercase characters for user passwords"
  type        = bool
  default     = true
}

variable "require_uppercase_characters" {
  description = "Whether to require uppercase characters for user passwords"
  type        = bool
  default     = true
}

variable "require_numbers" {
  description = "Whether to require numbers for user passwords"
  type        = bool
  default     = true
}

variable "require_symbols" {
  description = "Whether to require symbols for user passwords"
  type        = bool
  default     = true
}
