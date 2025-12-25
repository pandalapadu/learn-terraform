module "components" {
  for_each = var.components
  source = "./vm"
  component = each.value["name"]
  vm_size = each.value["vm_size"]
}

variable "components" {
  default = {
    frontend = {
      name        = "01.frontend"
      vm_size     = "Standard_D2s_v3"
    }
    mongodb = {
      name        = "02.mongodb"
      vm_size     = "Standard_D2s_v3"
    }
    catalogue = {
      name        = "03.catalogue"
      vm_size     = "Standard_D2s_v3"
    }
    user = {
      name        = "05.user"
      vm_size     = "Standard_D2s_v3"
    }
    cart = {
      name        = "06.cart"
      vm_size     = "Standard_D2s_v3"
    }
    mysql = {
      name        = "07.mysql"
      vm_size     = "Standard_D2s_v3"
    }
    shipping = {
      name        = "08.shipping"
      vm_size     = "Standard_D2s_v3"
    }
    payment = {
      name        = "10.payment"
      vm_size     = "Standard_D2s_v3"
    }
    rabbitmq = {
      name        = "09.rabbitmq"
      vm_size     = "Standard_D2s_v3"
    }
    redis = {
      name        = "04.redis"
      vm_size     = "Standard_D2s_v3"
    }
    dispatch = {
      name        = "11.dispatch"
      vm_size     = "Standard_D2s_v3"
    }
  }
}