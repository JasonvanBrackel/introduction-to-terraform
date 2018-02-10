
resource "azurerm_virtual_network" "network2" {
  name                = "introToTerraformNetwork"
  address_space       = ["10.0.0.0/16"]
  location            = "East US"
  resource_group_name = "${azurerm_resource_group.intro_to_terraform-rg.name}"

  subnet {
    name           = "newsubnet1"
    address_prefix = "10.0.3.0/24"
  }
}