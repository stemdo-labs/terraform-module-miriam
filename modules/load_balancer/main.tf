resource "azurerm_public_ip" "main_lb_public_ip" {
  name                = var.lb_public_ip_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_lb" "main_lb" {
  name                = var.lb_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.main_lb_public_ip.id
  }
}

resource "azurerm_lb_nat_rule" "ssh_nat_rule" {
  for_each                       = var.vm_map
  name                           = "ssh-nat-rule-${each.key}"
  resource_group_name            = var.resource_group_name
  loadbalancer_id                = azurerm_lb.main_lb.id
  frontend_ip_configuration_name = "PublicIPAddress"
  protocol                       = "Tcp"
  frontend_port                  = each.value.port
  backend_port                   = 22
}
