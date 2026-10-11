resource "datadog_openapi_api" "openapi_apis" {
  for_each = var.openapi_apis

  spec = each.value.spec
}

