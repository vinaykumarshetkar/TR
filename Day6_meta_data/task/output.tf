# LIST
output "list_demo" {
  value = [
    for i in range(length(var.users)) :
    "${var.users[i]}-${random_string.user[i].result}"
  ]
}

# SET
output "set_demo" {
  value = {
    for k, v in random_string.department :
    k => v.result
  }
}

# MAP
output "map_demo" {
  value = {
    for k, v in random_string.employee :
    k => {
      employee_name = var.employees[k]
      random_id     = v.result
    }
  }
}

# TUPLE
output "tuple_demo" {
  value = {
    name   = var.person[0]
    age    = var.person[1]
    active = var.person[2]
    token  = random_string.person_token.result
  }
}

# OBJECT
output "object_demo" {
  value = {
    name     = var.employee_info.name
    company  = var.employee_info.company
    role     = var.employee_info.role
    emp_code = random_string.employee_code.result
  }
}