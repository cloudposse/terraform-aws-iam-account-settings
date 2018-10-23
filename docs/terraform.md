
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| allow_users_to_change_password | Whether to allow users to change their own password | string | `true` | no |
| attributes | Additional attributes (e.g. `policy` or `role`) | list | `<list>` | no |
| delimiter | Delimiter to be used between `name`, `namespace`, `stage`, etc. | string | `-` | no |
| enabled | Whether or not to create the IAM account alias | string | `true` | no |
| hard_expiry | Whether users are prevented from setting a new password after their password has expired (i.e. require administrator reset) | string | `false` | no |
| max_password_age | The number of days that a user's password is valid | string | `0` | no |
| minimum_password_length | Minimum length to require for user passwords | string | `8` | no |
| name | The Name of the account or solution  (e.g. `account`) | string | `account` | no |
| namespace | Namespace (e.g. `cp` or `cloudposse`) | string | `` | no |
| password_policy_enabled | Whether or not to create the IAM account password policy | string | `true` | no |
| password_reuse_prevention | The number of previous passwords that users are prevented from reusing | string | `true` | no |
| require_lowercase_characters | Whether to require lowercase characters for user passwords | string | `true` | no |
| require_numbers | Whether to require numbers for user passwords | string | `true` | no |
| require_symbols | Whether to require symbols for user passwords | string | `true` | no |
| require_uppercase_characters | Whether to require uppercase characters for user passwords | string | `true` | no |
| stage | Stage (e.g. `prod`, `dev`, `staging`) | string | `` | no |
| tags | Additional tags (e.g. `map('BusinessUnit','XYZ')`) | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| account_alias | IAM account alias |
| signin_url | IAM users sign-in URL |

