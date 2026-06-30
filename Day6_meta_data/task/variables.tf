variable "users" {
  type = list(string)

  default = [
    "vinay",
    "rahul",
    "amit"
  ]
}

variable "departments" {
  type = set(string)

  default = [
    "HR",
    "IT",
    "Finance"
  ]
}

variable "employees" {
  type = map(string)

  default = {
    emp1 = "John"
    emp2 = "Alice"
    emp3 = "Bob"
  }
}

variable "person" {
  type = tuple([
    string,
    number,
    bool
  ])

  default = [
    "Vinay",
    25,
    true
  ]
}

variable "employee_info" {
  type = object({
    name    = string
    company = string
    role    = string
  })

  default = {
    name    = "Vinay"
    company = "ABC"
    role    = "DevOps Engineer"
  }
}