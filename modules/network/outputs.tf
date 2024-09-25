output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet_id" {
  value = azurerm_subnet.main_subnet.id
}

output "vm_ids" {
  value = [for vm in azurerm_linux_virtual_machine.vm : vm.id]
}