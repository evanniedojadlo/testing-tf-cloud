resource "aws_iam_user" "name" {
    name = "justa.test"
    path = "/"
}

resource "aws_iam_user" "name" {
    name = "justa.test2"
    path = "/"
}

resource "aws_iam_user" "name" {
    name = "justa.test3"
    path = "/"
}

resource "aws_iam_user" "name" {
    name = "justa.test4"
    path = "/"
}

resource "aws_iam_user" "name" {
    name = "justa.test5"
    path = "/"
}

# service accounts, no requirement for an AWS access key

# note that we could update this in the future with user variables and count.index