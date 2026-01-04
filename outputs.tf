output "rg_name" {
  value = module.rg_main.rg_name
}

output "container_rg" {
  value = module.rg_container.rg_name
}

output "storage_name" {
  value = module.storage.storage_name
}
