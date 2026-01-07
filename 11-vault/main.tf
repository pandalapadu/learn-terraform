terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "5.3.0"
    }
  }
}

provider "vault" {
  address = "http://vault.azdevopsvenkat.site:8200"
  token   = var.token
}

variable "token" {
  description = "Vault token to authenticate"
  type        = string
  sensitive   = true
}

# Read secret from Vault KV v2
data "vault_kv_secret_v2" "ssh_secret" {
  mount = "demo-ssh"  # KV engine mount path
  name  = "venkat"     # Secret key name
}

output "ssh_password" {
  value     = data.vault_kv_secret_v2.ssh_secret.data["password"]
  sensitive = true
}
