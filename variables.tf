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
  default = ["Ashish"]
}
variable "AdminUsers" {
 type = list(string)
  default = ["Bill"]
}
variable "DevelopersUsers" {
 type = list(string)
  default = ["Steve","Zuck","Jeff"]
}
variable "DevOpsUsers" {
 type = list(string)
  default = ["Elon","Jack"]
}
variable "GroupNames" {
  type        = list(string)
  default     = ["Admins", "Developers", "DevOps"]
}
variable "s3-buckets" {
  type = list(string)
  default = [ "sai-bucket-1", "sai-bucket-2", "sai-bucket-3"] 
}
variable "mysubnets" {
  type = list(string)
  default = [ "mysubnet-1", "mysubnet-2", "mysubnet-3"] 
}
