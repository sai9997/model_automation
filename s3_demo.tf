resource "aws_s3_bucket" "s3-bucket" {
    count = length(var.s3-buckets)
    bucket = "s3-buckets${count.index}"  
}