output "openapi_apis_id" {
  description = "Map of id values across all openapi_apis, keyed the same as var.openapi_apis except keys with no id are omitted"
  value       = { for k, v in datadog_openapi_api.openapi_apis : k => v.id if v.id != null && length(v.id) > 0 }
}
output "openapi_apis_spec" {
  description = "Map of spec values across all openapi_apis, keyed the same as var.openapi_apis except keys with no spec are omitted"
  value       = { for k, v in datadog_openapi_api.openapi_apis : k => v.spec if v.spec != null && length(v.spec) > 0 }
}

