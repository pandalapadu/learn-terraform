module "samplefile" {
  source = "./sample"
  x=var.x
  y=var.y
  z=var.z
}
variable "x" {}
variable "y" {}
variable "z" {}