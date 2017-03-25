// Outputs
output "aws_iam_user_arn" {
  value = "${zipmap(var.aws_iam_user_list, aws_iam_user.user.*.arn)}"
}

output "aws_iam_access_key_id" {
  value = "${zipmap(aws_iam_access_key.user.*.user, aws_iam_access_key.user.*.id)}"
}

output "aws_iam_access_key_encrypted_secret" {
  value = "${zipmap(aws_iam_access_key.user.*.user, aws_iam_access_key.user.*.encrypted_secret)}"
}

output "aws_iam_user_login_profile_encrypted_password" {
  value = "${zipmap(keys(var.keybase_id_map), aws_iam_user_login_profile.user.*.encrypted_password)}"
}

output "aws_key_pair_fingerprint" {
  value = "${zipmap(keys(var.ec2_ssh_id_map), aws_key_pair.user.*.fingerprint)}"
}

