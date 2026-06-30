resource "local_file" "testfile" {
  filename = "abc.txt"
  content  = "Hello, World!"
}

resource "random_string" "random" {
  length  = 8
  special = false
}