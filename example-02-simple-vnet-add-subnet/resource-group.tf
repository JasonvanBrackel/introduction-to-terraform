# Create a resource group
resource "azurerm_resource_group" "intro_to_terraform-rg" {
  name     = "intro_to_terraform-rg"
  location = "East US"
}