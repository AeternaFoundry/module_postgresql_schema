variable "schemas" {
  description = <<EOT
Map of schemas, attributes below
Required:
    - name
Optional:
    - database
    - drop_cascade
    - if_not_exists
    - owner
    - policy (block):
        - create (optional)
        - create_with_grant (optional)
        - role (optional)
        - usage (optional)
        - usage_with_grant (optional)
EOT

  type = map(object({
    name          = string
    database      = optional(string)
    drop_cascade  = optional(bool)
    if_not_exists = optional(bool)
    owner         = optional(string)
    policy = optional(list(object({
      create            = optional(bool)
      create_with_grant = optional(bool)
      role              = optional(string)
      usage             = optional(bool)
      usage_with_grant  = optional(bool)
    })))
  }))
}

