resource "aws_iam_group" "admin_group" {
  name = "admin"
}

resource "aws_iam_group" "dev_group" {
  name = "dev"
}

variable "admin_users" {
  default = ["ana", "fer"]
}

variable "dev_users" {
  default = ["user1", "user2", "user3"]
}

resource "aws_iam_user" "admin_users" {
  count = length(var.admin_users)
  name  = var.admin_users[count.index]
}

resource "aws_iam_user" "dev_users" {
  count = length(var.dev_users)
  name  = var.dev_users[count.index]
}

resource "aws_iam_group_membership" "admin_group_membership" {
  name  = "admin_group_membership"
  group = aws_iam_group.admin_group.name
  users = aws_iam_user.admin_users[*].name
}

resource "aws_iam_group_membership" "dev_group_membership" {
  name  = "dev_group_membership"
  group = aws_iam_group.dev_group.name
  users = aws_iam_user.dev_users[*].name
}
