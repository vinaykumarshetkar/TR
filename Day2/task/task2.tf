resource "local_file" "user" {
  filename = "terraform-user.txt"
  content  = "Username: terraform"
}

resource "local_file" "test" {
  filename = "terraform-test.txt"
  content  = "Username: terraform"
}

resource "random_password" "random_password" {
  length  = 16
  special = true
}