variable "a" {}
output "test" {
  value = var.a > 10 ? "a is greater than 10" : "a is lessthan 10"
}

resource "null_resource" "test" {
  count = var.a > 10 ? 1:0
}