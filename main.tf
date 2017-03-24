// Resoruces
resource "aws_iam_user" "user" {
  count = "${var.exists}"
  name = "${var.aws_iam_user_name}"
  path = "${var.aws_iam_user_path}"
  force_destroy = "${var.aws_iam_user_force_destroy}"
}

resource "aws_iam_user_login_profile" "user" {
  count = "${var.exists && var.access ? 1 : 0}"
  user = "${aws_iam_user.user.name}"
  pgp_key = "keybase:${var.keybase_id}"
  # We'll send the user an initial password and force them to change it.
  #password_reset_required = true
}

resource "aws_iam_access_key" "user" {
  count = "${var.exists && var.access ? 1 : 0}"
  user = "${aws_iam_user.user.name}"
  pgp_key = "keybase:${var.keybase_id}"

}

# AWS Code Commit.
resource "aws_iam_user_ssh_key" "user" {
  count    = "${var.exists && var.access && length(var.code_commit_ssh_key) > 1 ? 1 : 0}"
  username = "${aws_iam_user.user.name}"
  encoding = "PEM"
  public_key = "${var.code_commit_ssh_key}"
}

# EC2 SSH keys.
resource "aws_key_pair" "user" {
  count    = "${var.exists && var.access && length(var.ec2_ssh_key) > 1 ? 1 : 0}"
  key_name = "${aws_iam_user.user.name}"
  public_key = "${var.ec2_ssh_key}"
}

