
# Random string for each user (List)
resource "random_string" "user" {
  count = length(var.users)

  length  = 5
  special = false
  upper   = false
}

# Random string for each department (Set)
resource "random_string" "department" {
  for_each = var.departments

  length  = 4
  special = false
  upper   = true
}

# Random string for each employee (Map)
resource "random_string" "employee" {
  for_each = var.employees

  length  = 6
  special = false
  upper   = true
}

# Random string for Tuple
resource "random_string" "person_token" {
  length  = 8
  special = false
}

# Random string for Object
resource "random_string" "employee_code" {
  length  = 8
  special = false
}