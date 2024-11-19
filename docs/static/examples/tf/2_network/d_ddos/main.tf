locals {
  ddos_protection_plan_name                = "ddpp-alz"
  ddos_protection_plan_resource_group_name = "rg-ddos-protection"
}

module "ddos_protection_plan" {
  source  = "Azure/avm-res-network-ddosprotectionplan/azurerm"
  version = "0.2.0"

  name                = local.ddos_protection_plan_name
  resource_group_name = local.ddos_protection_plan_resource_group_name
  location            = local.location
}
