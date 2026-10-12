resource "postgresql_schema" "schemas" {
  for_each = var.schemas

  name          = each.value.name
  database      = each.value.database
  drop_cascade  = each.value.drop_cascade
  if_not_exists = each.value.if_not_exists
  owner         = each.value.owner

  dynamic "policy" {
    for_each = each.value.policy != null ? each.value.policy : []
    content {
      create            = policy.value.create
      create_with_grant = policy.value.create_with_grant
      role              = policy.value.role
      usage             = policy.value.usage
      usage_with_grant  = policy.value.usage_with_grant
    }
  }
}

