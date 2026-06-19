resource "local_file" "testfileml" {
  filename = var.filenameml.name
  content  = var.filenameml.phone
}

resource "local_file" "testfi1em2" {
  filename = var.filenamem2.name[0]
  content  = var.filenamem2.phone[0]
}

variable "filenameml" {
  type = map(string)
  default = {
    name            = " adi "
    phone           = "4523"
    isactivestudent = "true"
  }
}
variable "filenamem2" {
  type = map(list(any))
  default = {
    name= [" vinay", "ajay ", "vijay "]
    phone= ["4523", "4524", "4525"]
    isactivestudent = ["true", "false", "true"]
  }
}