# tf_straycat_aws_iam_users
Manage a map of users in AWS IAM.

As we cannot currently use count to call a module multiple times, we create this purpose built module which takes a single map of users and their attributes.

__NOTE: This module should not exist.  It exists purely to solve a weakness in Terraform.  At the end of the day I debated giving up my DRY principle over to create a module that didn’t look like this but I feel DRY and modeling infrastructures as data was more important.__

## Variables
### Required
* ___aws_iam_user_list:___ A list of IAM users to create.

### Optional
* keybase_id_map: Map of users (from aws_iam_user_list) to keybase IDs.  This is needed to create IAM API credentials and set a password.

* ec2_ssh_id_map: Map of users (from aws_iam_user_list) to ssh public keys.

