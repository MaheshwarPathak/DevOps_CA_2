package policy

allow = true {
  input.app == "inventory-service"
  input.cpu != ""
  input.memory != ""
  input.environment != ""
  valid_memory
}

valid_memory {
  endswith(input.memory, "Mi")
  num := to_number(replace(input.memory, "Mi", ""))
  num >= 512
}
