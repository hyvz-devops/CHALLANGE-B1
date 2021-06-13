# CHALLANGE-B1

# Handle security group rules and tags
- Add ingress rules for the `aws_security_group` resource, without repeating the the `ingress` argument.
- Add the directory name as a tag to `aws_instance` resource without hardcoding.
- Tag all(`current and any upcoming`) the resources with `Environment = "aws-terraform-exercises"` 

ingress and tag added to main.tf

new variable "tag" created under variable.tf
