variable "password_policies" {
  description = <<EOT
Map of password_policies, attributes below
Required:
    - name
    - policy
Optional:
    - entropy_source
    - namespace
EOT

  type = map(object({
    name           = string
    policy         = string
    entropy_source = optional(string)
    namespace      = optional(string)
  }))
}

