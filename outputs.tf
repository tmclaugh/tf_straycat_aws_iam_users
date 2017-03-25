// Outputs
output "aws_iam_user_unique_id" {
  value = ["${aws_iam_user.user.*.unique_id}"]
}

output "aws_iam_user_arn" {
  value = ["${aws_iam_user.user.*.arn}"]
}

output "aws_iam_access_key_id" {
  value = ["${aws_iam_access_key.*.user.id}"]
}

output "aws_iam_access_key_user" {
  value = ["${aws_iam_access_key.*.user.user}"]
}

output "aws_iam_access_key_key_fingerprint" {
  value = ["${aws_iam_access_key.user.*.key_fingerprint}"]
}

output "aws_iam_access_key_encrypted_secret" {
  value = ["${aws_iam_access_key.user.*.encrypted_secret}"]
}

output "aws_iam_access_key_status" {
  value = ["${aws_iam_access_key.user.*.status}"]
}


output "aws_iam_user_login_profile_key_fingerprint" {
  value = ["${aws_iam_user_login_profile.user.*.key_fingerprint}"]
}

output "aws_iam_user_login_profile_encrypted_password" {
  value = ["${aws_iam_user_login_profile.user.*.encrypted_password}"]
}


output "aws_iam_user_ssh_key_fingerprint" {
  value = ["${aws_iam_user_ssh_key.user.*.fingerprint}"]
}

output "aws_iam_user_ssh_key_ssh_public_key_id" {
  value = ["${aws_iam_user_ssh_key.user.*.ssh_public_key_id}"]
}


output "aws_key_pair_key_name" {
  value = ["${aws_key_pair.user.*.key_name}"]
}

output "aws_key_pair_fingerprint" {
  value = ["${aws_key_pair.user.*.fingerprint}"]
}

