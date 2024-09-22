output "backend" {
  value = vault_mount.pki.path
}

output "default_issuer" {
  value = vault_pki_secret_backend_config_issuers.pki.default
}

output "certificate" {
  value = vault_pki_secret_backend_root_sign_intermediate.pki.certificate
}
