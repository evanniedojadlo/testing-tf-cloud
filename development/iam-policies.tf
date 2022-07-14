resource "aws_iam_user_policy" "ssm_engineering_policy_dev" {
  name = "aws_ssm_engineering_policy"

  policy = <<EOF
{
    "Statement": [
        {
            "Action": [
                "ec2:Describe*"
            ],
            "Effect": "Allow",
            "Resource": "*"
        }
    ],
    "Version": "2012-10-17"
}
EOF
}
