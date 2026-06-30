resource "local_file" "demo" {
  count    = 3
  filename = "file-${count.index}.txt"
  content  = "Hello"
}