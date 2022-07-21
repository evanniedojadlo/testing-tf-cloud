


resource "aws_iam_role" "role" {
  name = "test-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

# Terraform data resource for managed policies
data "aws_iam_policy" "ReadOnlyAccess" {
    arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_role_policy_attachment" "attach-managed-admin-policy" {
  role       =  aws_iam_role.testrole.name
  policy_arn = "${data.aws_iam_policy.ReadOnlyAccess.arn}"
}

