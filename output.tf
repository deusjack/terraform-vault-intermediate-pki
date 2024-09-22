output "backend" {
  value = vault_mount.pki.path
}

output "default_issuer" {
  value = vault_pki_secret_backend_config_issuers.pki.default
}
