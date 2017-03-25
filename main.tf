// Resoruces
resource "aws_iam_user" "user" {
  count = "${length(var.aws_iam_user_list)}"
  name = "${element(var.aws_iam_user_list, count.index)}"
}

resource "aws_iam_user_login_profile" "user" {
  count = "${length(var.keybase_id_map)}"
  user = "${element(keys(var.keybase_id_map), count.index)}"
  pgp_key = "keybase:${lookup(var.keybase_id_map, element(keys(var.keybase_id_map), count.index))}"
  # We'll send the user an initial password and force them to change it.
  password_reset_required = true
}

resource "aws_iam_access_key" "user" {
  count = "${length(var.keybase_id_map)}"
  user = "${element(keys(var.keybase_id_map), count.index)}"
  pgp_key = "keybase:${lookup(var.keybase_id_map, element(keys(var.keybase_id_map), count.index))}"
}

# EC2 SSH keys.
resource "aws_key_pair" "user" {
  count = "${length(var.ec2_ssh_id_map)}"
  key_name = "${element(keys(var.ec2_ssh_id_map), count.index)}"
  public_key = "${lookup(var.ec2_ssh_id_map, element(keys(var.ec2_ssh_id_map), count.index))}"
}

