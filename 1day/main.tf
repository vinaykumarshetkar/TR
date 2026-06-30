resource "local_file" "firstfile" {
  filename = "abc1.txt"
  content  = "this is my file content in main.tf"
}

