resource "null_resource" "checkthehostname" {
  provisioner "local-exec" {
    command = "hostname > hostname.txt"
  }
}