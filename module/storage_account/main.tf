resource "random_string" "suffix" {
  length  = 4
  upper   = false
  special = false
}

resource "azurerm_storage_account" "this" {
  name                     = lower("${var.sa_prefix}${random_string.suffix.result}")
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.replication_type
  account_kind             = var.account_kind
  min_tls_version          = "TLS1_2"
  tags = merge(var.tags, { module = "storage_account" })
}