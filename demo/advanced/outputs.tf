output "rg_name" {
  value = module.demo_rg.name
}

output "vnet_name" {
  value = module.demo_vnet.name
}

output "subnet_ids" {
  value = module.demo_vnet.subnet_ids
}