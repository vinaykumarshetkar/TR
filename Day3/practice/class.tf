terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.9.0"
    }
random = {
      source  = "hashicorp/random"
      version = "3.9.0"
    }
null = {
      source  = "hashicorp/null"
      version = "3.3.0"
    }
  }
}

resource "local_file" "filename" {
  filename = "terraform-user.txt"
  content  = "Username: terraform"
}
resource "random_string" "random" {
  length           = 10
  special          = true
  override_special = "/@£$"
  min_numeric = 3
  min_upper =2

}