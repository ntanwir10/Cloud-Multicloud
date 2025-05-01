variable "project" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  default     = "us-west1"
}

variable "zone" {
  description = "GCP zone"
  default     = "us-west1-b"
}

variable "ssh_user" {
  description = "SSH username"
  default     = "gcpuser"
}

variable "ssh_public_key_path" {
  description = "Path to SSH public key"
  default     = "~/.ssh/id_rsa.pub"
}
