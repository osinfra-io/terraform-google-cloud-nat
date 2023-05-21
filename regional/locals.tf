# Local Values
# https://www.terraform.io/docs/language/values/locals.html

locals {
  name   = "${local.prefix}-${var.region}-cloud-nat"
  prefix = var.prefix == "" ? var.network : var.prefix
}
