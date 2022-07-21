resource "aws_iam_role" "role" {
  name = "test-role"
  tags = {
    managed-by = "terraform"
  }

}