output "schemas_id" {
  description = "Map of id values across all schemas, keyed the same as var.schemas except keys with no id are omitted"
  value       = { for k, v in postgresql_schema.schemas : k => v.id if v.id != null && length(v.id) > 0 }
}
output "schemas_database" {
  description = "Map of database values across all schemas, keyed the same as var.schemas except keys with no database are omitted"
  value       = { for k, v in postgresql_schema.schemas : k => v.database if v.database != null && length(v.database) > 0 }
}
output "schemas_drop_cascade" {
  description = "Map of drop_cascade values across all schemas, keyed the same as var.schemas except keys with no drop_cascade are omitted"
  value       = { for k, v in postgresql_schema.schemas : k => v.drop_cascade if v.drop_cascade != null }
}
output "schemas_if_not_exists" {
  description = "Map of if_not_exists values across all schemas, keyed the same as var.schemas except keys with no if_not_exists are omitted"
  value       = { for k, v in postgresql_schema.schemas : k => v.if_not_exists if v.if_not_exists != null }
}
output "schemas_name" {
  description = "Map of name values across all schemas, keyed the same as var.schemas except keys with no name are omitted"
  value       = { for k, v in postgresql_schema.schemas : k => v.name if v.name != null && length(v.name) > 0 }
}
output "schemas_owner" {
  description = "Map of owner values across all schemas, keyed the same as var.schemas except keys with no owner are omitted"
  value       = { for k, v in postgresql_schema.schemas : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "schemas_policy" {
  description = "Map of policy values across all schemas, keyed the same as var.schemas except keys with no policy are omitted"
  value       = { for k, v in postgresql_schema.schemas : k => v.policy if v.policy != null && length(v.policy) > 0 }
}

