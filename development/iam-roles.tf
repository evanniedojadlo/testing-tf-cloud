


resource "aws_iam_role" "some-test-role" {
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

# Use Terraform data source for managed roles
data "aws_iam_policy" "codedeploy_service_policy" {
  arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_role_policy_attachment" "codedeploy_service_role_policy_attach" {
   role       = "${aws_iam_role.some-test-role.name}"
   policy_arn = "${data.aws_iam_policy.codedeploy_service_policy.arn}"
}