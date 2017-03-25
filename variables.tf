// Variables

variable "aws_iam_user_list" {
  type = "list"
  description = "IAM username"
}

variable "keybase_id_map" {
  type = "map"
  description = "map of users to keybase IDs"
  default = {}
}

variable "ec2_ssh_id_map" {
  type = "map"
  description = "map of users to SSH public keys"
  default = {}
}

