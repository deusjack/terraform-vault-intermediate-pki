# module-vault-intermediate-pki

Terraform module to create intermediate PKI on Hashicorp Vault

## Requirements/Assumptions

* Other Vault PKI
* Either:
  * Other PKI set up like this module
  * Root PKI with self-signed cert setup
  * Root PKI with imported CA and set as default

# Terradocs
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3, < 4 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | >= 4, < 5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | 4.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_mount.pki](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount) | resource |
| [vault_pki_secret_backend_config_urls.pki](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_config_urls) | resource |
| [vault_pki_secret_backend_intermediate_cert_request.pki](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_intermediate_cert_request) | resource |
| [vault_pki_secret_backend_intermediate_set_signed.pki](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_intermediate_set_signed) | resource |
| [vault_pki_secret_backend_issuer.pki](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_issuer) | resource |
| [vault_pki_secret_backend_key.pki](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_key) | resource |
| [vault_pki_secret_backend_root_sign_intermediate.pki](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/pki_secret_backend_root_sign_intermediate) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cert_default_ttl"></a> [cert\_default\_ttl](#input\_cert\_default\_ttl) | Certificates default TTL in seconds | `number` | n/a | yes |
| <a name="input_cert_max_ttl"></a> [cert\_max\_ttl](#input\_cert\_max\_ttl) | Certificates max TTL in seconds | `number` | n/a | yes |
| <a name="input_common_name"></a> [common\_name](#input\_common\_name) | The common name for the CA | `string` | `"Vault PKI Intermediate CA"` | no |
| <a name="input_description"></a> [description](#input\_description) | The description for the PKI | `string` | `"PKI engine hosting Intermediate CA"` | no |
| <a name="input_organisation"></a> [organisation](#input\_organisation) | The Organisation for the CA | `string` | `"Hashicorp Cluster"` | no |
| <a name="input_path"></a> [path](#input\_path) | The mount path for the PKI | `string` | n/a | yes |
| <a name="input_root_backend"></a> [root\_backend](#input\_root\_backend) | Mount path of the root pki | `string` | n/a | yes |
| <a name="input_vault_base_url"></a> [vault\_base\_url](#input\_vault\_base\_url) | Example: https://vault.example.com:8200 | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_backend"></a> [backend](#output\_backend) | n/a |
| <a name="output_certificate"></a> [certificate](#output\_certificate) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
