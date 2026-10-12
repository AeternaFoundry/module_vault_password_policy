resource "vault_password_policy" "password_policies" {
  for_each = var.password_policies

  name           = each.value.name
  policy         = each.value.policy
  entropy_source = each.value.entropy_source
  namespace      = each.value.namespace
}

