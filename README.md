# tf_threatstack_aws_iam
Manages users in AWS IAM

## Variables
### Required
* ___aws_iam_user_name:___ Username for user.

* ___keybase_id:___ Keybase.io ID. Used to encrypt sensitive data like passwords and AWS secret keys.

### Optional
* ___aws_iam_user_path:___ Optional path for username.  Place service related accounts under _/service_.

* ___aws_iam_user_force_destroy:___ If Terraform should force destruction.  Needed if un managed resources are associated with user.

* ___ec2_ssh_key:___ User's SSH key for EC2 insatnces.

* ___code_commit_ssh_key:___ User CodeCommit SSH key.

* ___exists:___ If the user should exist. Useful when a user shouldn't exist in a particular environment. This allows you to drive an environment via tfvars data over needing to code two environments differently.

* ___access:___ If the user should have access. Setting to false we keep the IAM account but remove keys and passwords.

