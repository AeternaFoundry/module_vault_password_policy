output "password_policies_id" {
  description = "Map of id values across all password_policies, keyed the same as var.password_policies except keys with no id are omitted"
  value       = { for k, v in vault_password_policy.password_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "password_policies_entropy_source" {
  description = "Map of entropy_source values across all password_policies, keyed the same as var.password_policies except keys with no entropy_source are omitted"
  value       = { for k, v in vault_password_policy.password_policies : k => v.entropy_source if v.entropy_source != null && length(v.entropy_source) > 0 }
}
output "password_policies_name" {
  description = "Map of name values across all password_policies, keyed the same as var.password_policies except keys with no name are omitted"
  value       = { for k, v in vault_password_policy.password_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "password_policies_namespace" {
  description = "Map of namespace values across all password_policies, keyed the same as var.password_policies except keys with no namespace are omitted"
  value       = { for k, v in vault_password_policy.password_policies : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "password_policies_policy" {
  description = "Map of policy values across all password_policies, keyed the same as var.password_policies except keys with no policy are omitted"
  value       = { for k, v in vault_password_policy.password_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}

