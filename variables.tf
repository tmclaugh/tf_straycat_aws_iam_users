// Variables

variable "aws_iam_user_name" {
  type = "string"
  description = "IAM username"
}

variable "keybase_id" {
  type = "string"
  description = "Keybase.io ID for encrypting sensative values"
}

variable "aws_iam_user_path" {
  type = "string"
  description = "IAM path."
  default = "/"
}

variable "aws_iam_user_force_destroy" {
  description = "If Terraform should force destruction.  Needed if un managed resources are associated with user."
  default = false
}

variable "ec2_ssh_key" {
  type = "string"
  description = "User SSH key."
  default = ""
}

variable "code_commit_ssh_key" {
  type = "string"
  description = "CodeCommit SSH key."
  default = ""
}

# This exists because you can't set count on a module and I needed a way to
# selectively create users based on the environment.
variable "exists" {
  description = "If the user should exist or not."
  default = true
}

variable "access" {
  description = "If the user should have access. Use to remove access but not remove account."
  default = true
}
