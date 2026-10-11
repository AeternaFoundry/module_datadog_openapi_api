variable "openapi_apis" {
  description = <<EOT
Map of openapi_apis, attributes below
Required:
    - spec
EOT

  type = map(object({
    spec = string
  }))
}

