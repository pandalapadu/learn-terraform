resource "local_file" "foo" {
  for_each = var.demo
  content = each.value
  filename = "/tmp/${each.key}"
}

variable "demo" {
  type = map(string)
  default = {
    Apple = "apple"
    ORANGE = "orange",
    BANANA = "banana"

  }
}