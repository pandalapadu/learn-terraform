variable "a" {}
output "test" {
  value = var.a > 10 ? "a is greater than 10" : "a is lessthan 10"
}