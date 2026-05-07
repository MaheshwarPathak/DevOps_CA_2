package policy

allow {
  input.app == "inventory-service"
  input.cpu != ""
  input.memory != ""
  input.environment != ""
  valid_memory
}

valid_memory {
  endswith(input.memory, "Mi")
  to_number(replace(input.memory, "Mi", "")) >= 512
}
