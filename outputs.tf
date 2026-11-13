output "schemas_id" {
  description = "Map of id values across all schemas, keyed the same as var.schemas"
  value       = { for k, v in postgresql_schema.schemas : k => v.id }
}
output "schemas_database" {
  description = "Map of database values across all schemas, keyed the same as var.schemas"
  value       = { for k, v in postgresql_schema.schemas : k => v.database }
}
output "schemas_drop_cascade" {
  description = "Map of drop_cascade values across all schemas, keyed the same as var.schemas"
  value       = { for k, v in postgresql_schema.schemas : k => v.drop_cascade }
}
output "schemas_if_not_exists" {
  description = "Map of if_not_exists values across all schemas, keyed the same as var.schemas"
  value       = { for k, v in postgresql_schema.schemas : k => v.if_not_exists }
}
output "schemas_name" {
  description = "Map of name values across all schemas, keyed the same as var.schemas"
  value       = { for k, v in postgresql_schema.schemas : k => v.name }
}
output "schemas_owner" {
  description = "Map of owner values across all schemas, keyed the same as var.schemas"
  value       = { for k, v in postgresql_schema.schemas : k => v.owner }
}
output "schemas_policy" {
  description = "Map of policy values across all schemas, keyed the same as var.schemas"
  value       = { for k, v in postgresql_schema.schemas : k => v.policy }
}

