resource "aws_iam_user" "Users" {
  count = length(var.Users)
  name = var.Users[count.index]
}
resource "aws_iam_user" "AdminUsers" {
  count = length(var.AdminUsers)
  name = var.AdminUsers[count.index]
}
resource "aws_iam_user" "DevelopersUsers" {
  count = length(var.DevelopersUsers)
  name = var.DevelopersUsers[count.index]
}
resource "aws_iam_user" "DevOpsUsers" {
  count = length(var.DevOpsUsers)
  name = var.DevOpsUsers[count.index]
}
resource "aws_iam_group" "GroupNames" {
  count = length(var.GroupNames)
  name = var.GroupNames[count.index]
}

resource "aws_iam_group" "mygroup" {
  count = length(var.GroupNames)
  name = "test"
  
}
# resource "aws_subnet" "mysubnets" {
#   vpc_id = vpc-09e26fd3d29fc79b1
#   count = length(var.mysubnets)
#   name = var.mysubnets[count.index]
# }





# resource "aws_iam_policy_attachment" "test_attachment1" {
#   name       = "mytest"
#   users      = [aws_iam_user.test_user.name]
#   policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"

# }


# resource "aws_iam_policy_attachment" "test_attachment2" {
#   name       = "mytest"
#   users      = [aws_iam_user.test_user.name]
#   policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"

# }


# resource "aws_iam_policy_attachment" "test_attachment3" {
#   name       = "mytest"
#   users      = [aws_iam_user.test_user4.name]
#   policy_arn = "arn:aws:iam::aws:policy/AWSCloudFormationReadOnlyAccess"

# }

# resource "aws_iam_group_membership" "admins" {
#   name = "admins"

#   users = [aws_iam_user.test_user2.name]

#   group = aws_iam_group.admins.name
# }


# resource "aws_iam_group_membership" "developers" {
#   name = "developers"

#   users = [aws_iam_user.test_user3.name,aws_iam_user.test_user4.name,aws_iam_user.test_user5.name]

#   group = aws_iam_group.developers.name
# }

# resource "aws_iam_group_membership" "DevOps" {
#   name = "DevOps"

#   users = [aws_iam_user.test_user6.name,aws_iam_user.test_user7.name]

#   group = aws_iam_group.DevOps.name
# }



# resource "aws_iam_group_policy_attachment" "developers_attach" {
#   group      = aws_iam_group.developers.name
#   policy_arn = "arn:aws:iam::aws:policy/AWSCloudFormationReadOnlyAccess"
# }
# resource "aws_iam_group_policy_attachment" "developers_attach2" {
#   group      = aws_iam_group.developers.name
#   policy_arn = "arn:aws:iam::aws:policy/ResourceGroupsandTagEditorFullAccess"
# }

# resource "aws_iam_group_policy_attachment" "admins_attach" {
#   group      = aws_iam_group.admins.name
#   policy_arn = "arn:aws:iam::aws:policy/ResourceGroupsandTagEditorFullAccess"
# }

# resource "aws_iam_group_policy_attachment" "devops_attach1" {
#   group      = aws_iam_group.DevOps.name
#   policy_arn = "arn:aws:iam::aws:policy/ResourceGroupsandTagEditorFullAccess"
# }
# resource "aws_iam_group_policy_attachment" "devops_attach2" {
#   group      = aws_iam_group.DevOps.name
#   policy_arn = "arn:aws:iam::aws:policy/AWSCloudFormationReadOnlyAccess"
# }



# resource "aws_iam_role" "my_role" {
#   name = "my_role"

#   assume_role_policy = jsonencode({
#     Version = "2012-10-17"
#     Statement = [
#       {
#         Action = "sts:AssumeRole"
#         Effect = "Allow"
#         Sid    = ""
#         Principal = {
#           Service = "ec2.amazonaws.com"
#         }
#       },
#     ]
#   })


# }

# resource "aws_iam_role_policy_attachment" "role_attach1" {
#   role       = aws_iam_role.my_role.name
#   policy_arn = "arn:aws:iam::aws:policy/ResourceGroupsandTagEditorFullAccess"
# }

# resource "aws_iam_role_policy_attachment" "role_attach2" {
#   role       = aws_iam_role.my_role.name
#   policy_arn = "arn:aws:iam::aws:policy/AWSCloudFormationReadOnlyAccess"

# }

