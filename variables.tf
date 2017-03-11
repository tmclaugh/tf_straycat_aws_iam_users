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
