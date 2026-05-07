package policy

default allow = false

allow {
  input.app == "inventory-service"
  input.cpu != ""
  input.memory != ""
  input.environment != ""
  valid_memory
}

valid_memory {
  endswith(input.memory, "Mi")
  value = to_number(replace(input.memory, "Mi", ""))
  value >= 512
}
