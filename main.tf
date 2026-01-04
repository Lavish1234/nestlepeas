terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100"
    }
  }
}

provider "azurerm" {
  features        {}
  subscription_id = var.sub_id
  tenant_id       = var.tenant_id
}

locals {
  region      = "Germany West Central"
  region_code = "gmwc"
  app         = "peas"

  name_prefix = "nesp-${var.env}-${local.region_code}-${local.app}"
}

module "rg_main" {
  source   = "./modules/resource_group"
  name     = "${local.name_prefix}-rgp"
  location = local.region
}

module "rg_container" {
  source   = "./modules/resource_group"
  name     = "peas_app_container"
  location = local.region
}

module "storage" {
  source              = "./modules/storage_account"
  name                = "${replace(local.name_prefix, "-", "")}sta"
  location            = local.region
  resource_group_name = module.rg_main.name
}
