resource "null_resource" "triggers" {
  triggers = {
    root_issuer = var.root_issuer_id
  }
}
