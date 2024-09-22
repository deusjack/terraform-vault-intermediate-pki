resource "vault_mount" "pki" {
  path                      = var.path
  type                      = "pki"
  description               = var.description
  default_lease_ttl_seconds = var.cert_default_ttl
  max_lease_ttl_seconds     = var.cert_max_ttl
}

resource "vault_pki_secret_backend_key" "pki" {
  backend  = vault_mount.pki.path
  type     = "internal"
  key_type = "ec"
  key_bits = 256
  key_name = "terraform_vault"
}

resource "vault_pki_secret_backend_intermediate_cert_request" "pki" {
  backend      = vault_mount.pki.path
  type         = "internal"
  organization = var.organisation
  common_name  = var.common_name
  key_ref      = vault_pki_secret_backend_key.pki.key_id
}

resource "vault_pki_secret_backend_root_sign_intermediate" "pki" {
  backend      = var.root_backend
  common_name  = vault_pki_secret_backend_intermediate_cert_request.pki.common_name
  organization = vault_pki_secret_backend_intermediate_cert_request.pki.organization
  csr          = vault_pki_secret_backend_intermediate_cert_request.pki.csr
  format       = "pem_bundle"
}

resource "vault_pki_secret_backend_intermediate_set_signed" "pki" {
  backend     = vault_mount.pki.path
  certificate = vault_pki_secret_backend_root_sign_intermediate.pki.certificate
}

resource "vault_pki_secret_backend_issuer" "pki" {
  backend    = vault_mount.pki.path
  issuer_ref = vault_pki_secret_backend_intermediate_set_signed.pki.imported_issuers[0]
}

resource "vault_pki_secret_backend_config_urls" "pki" {
  backend                 = vault_mount.pki.path
  issuing_certificates    = ["${var.vault_base_url}/v1/${vault_mount.pki.path}/ca"]
  crl_distribution_points = ["${var.vault_base_url}/v1/${vault_mount.pki.path}/crl"]
}
