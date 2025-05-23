variable "location" {
  description = "Azure region"
  default     = "centralus"
}

variable "admin_username" {
  description = "Admin username for the VM"
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  description = "Path to your public SSH key"
  default     = "~/.ssh/id_rsa.pub"
}

variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}