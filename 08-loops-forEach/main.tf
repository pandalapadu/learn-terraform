resource "local_file" "foo" {
  for_each = var.demo
  content = each.value["Content"]
  filename = "/tmp/${each.key}"
}

variable "demo" {
  default = {
    Apple = { Content = "Apple is Good For Health"}
    ORANGE = {Content = "Orange is Good For Health"},
    BANANA = {Content = "Bannana is Good For vitamins"},

  }
}