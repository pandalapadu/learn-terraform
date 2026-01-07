terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "5.3.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.5.3"
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

# Output the password
output "ssh_password" {
  value     = data.vault_kv_secret_v2.ssh_secret.data["password"]
  sensitive = true
}

# Save the password locally to a file (not recommended for production!)
resource "local_file" "local" {
  filename = "/tmp/pass"
  content  = data.vault_kv_secret_v2.ssh_secret.data["password"]
}