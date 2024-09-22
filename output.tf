output "backend" {
  value = vault_mount.pki.path
}

output "certificate" {
  value = vault_pki_secret_backend_root_sign_intermediate.pki.certificate
}
