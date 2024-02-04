output "azs" {
  value = module.roboshop_aws_vpc.azs
}


output "vpc_id" {
  value = aws_vpc.main.id
}