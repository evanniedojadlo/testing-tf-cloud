resource "aws_iam_role" "role" {
  name = "test-role"
  assume_role_policy = aws_iam_group_policy.my_developer_policy

  tags = {
    managed-by = "terraform"
  }

}

resource "aws_iam_role" "role2" {
  name = "test-role2"
  assume_role_policy = "arn:aws:iam::662799521275:policy/example2"

  tags = {
    managed-by = "terraform"
  }

}