variable "name" {
  default = "Hello"
}
variable "n1" {
  default = 2
}

variable "v1" {
  default = true
}
#Data Types Terraform supports are 1.String 2.Number 3.Boolean
# String required "" (double quites)
# Number no need to required any quotes
#Variable types :
  #1.Plan variable
variable "plain_variable" {
  default = "Hello Plain Variables"
}
#2.list Variables ## each value can different data type
variable "list_variable" {
  default = ["Hello", 2, false  ]
}
#3map variable
variable "map_variable" {
  default = {
    cource = "Devops"
    cloud = "Azure"
  }
}
############to access above variables we will pass string combinations
output "output_1" {
  value = var.name
}
output "output_2" {
  value = var.plain_variable
}
output "output_3" {
  value = var.list_variable[0]
}
output "output_4" {
  value = var.map_variable
}
##so far we have hard coded all the variables
variable "v10" {}
output "o10" {
  value = var.v10
}