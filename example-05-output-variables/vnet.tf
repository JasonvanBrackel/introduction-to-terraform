
# Create a virtual network with 1 subnet
resource "azurerm_virtual_network" "network" {
  name                = "introToTerraformNetwork"
  address_space       = ["10.0.0.0/16"]
  location            = "East US"
  resource_group_name = "${azurerm_resource_group.intro_to_terraform-rg.name}"

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }
  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }
}