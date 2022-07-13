resource "aws_iam_group" "handsome-engineering-group" {
  name = "Handsome-Engineering"
  path = "/"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.user2.name,
    aws_iam_user.user3.name,
  ]

  group = aws_iam_group.group.name
}