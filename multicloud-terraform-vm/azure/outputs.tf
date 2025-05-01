output "vm_id" {
  value = azurerm_linux_virtual_machine.vm.id
}

output "public_ip" {
  value = azurerm_public_ip.public_ip.ip_address
}
output "ssh_command" {
  description = "Command to SSH into the VM"
  value       = "ssh -i ~/.ssh/id_rsa azureuser@${azurerm_public_ip.public_ip.ip_address}"
}