# this block is blongs to vault
data "vault_kv_secret_v2" "aws"{
  mount = "kv"
  name  = "data"
}

provider "vault" {
  address = "http://54.91.19.29:8200/"
  token = var.mytoken
}


variable "mytoken" {
  type = string
  sensitive = true
}

# here we are calling the access_key and Secret_key from the valut using above parmeter
provider "aws" {
  region = "us-east-1"
  access_key = data.vault_kv_secret_v2.aws.data["access_key"]
  secret_key = data.vault_kv_secret_v2.aws.data["Secret_access_key"]
}
