variable "aws_region" {
  type        = string
  default     = "us-east-2"
}
#variable "AWS_ACCESS_KEY_ID" {
#  type        = string
#}
#variable "AWS_SECRET_ACCESS_KEY" {
 # type        = string
#}
variable "Users" {
 type = list(string)
  default = ["Ashish2"]
}
variable "AdminUsers" {
 type = list(string)
  default = ["Bill2"]
}
variable "DevelopersUsers" {
 type = list(string)
  default = ["Steve2","Zuck2","Jeff2"]
}
variable "DevOpsUsers" {
 type = list(string)
  default = ["Elon2","Jack2"]
}
variable "GroupNames" {
  type        = list(string)
  default     = ["Admins2", "Developers2", "DevOps2"]
}
# variable "s3-buckets" {
#   type = list(string)
#   default = [ "sai-bucket-1", "sai-bucket-2", "sai-bucket-3"] 
# }
variable "mysubnets" {
  type = list(string)
  default = [ "mysubnet-1", "mysubnet-2", "mysubnet-3"] 
}
