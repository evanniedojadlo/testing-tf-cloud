resource "aws_iam_role" "role" {
  name = "test-role"
  assume_role_policy = aws_iam_group_policy.my_developer_policy

  tags = {
    managed-by = "terraform"
  }

}