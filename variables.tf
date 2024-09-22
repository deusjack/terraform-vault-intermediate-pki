variable "path" {
  type        = string
  description = "The mount path for the PKI"
}

variable "description" {
  type        = string
  description = "The description for the PKI"
  default     = "PKI engine hosting Intermediate CA"
}

variable "organisation" {
  type        = string
  description = "The Organisation for the CA"
  default     = "Hashicorp Cluster"
}

variable "common_name" {
  type        = string
  description = "The common name for the CA"
  default     = "Vault PKI Intermediate CA"
}

variable "cert_default_ttl" {
  type        = number
  description = "Certificates default TTL in seconds"
}

variable "cert_max_ttl" {
  type        = number
  description = "Certificates max TTL in seconds"
}

variable "root_backend" {
  type        = string
  description = "Mount path of the root pki"
}

variable "vault_base_url" {
  type        = string
  description = "Example: https://vault.example.com:8200"
}
