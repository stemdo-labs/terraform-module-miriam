output "lb_public_ip" {
  value = azurerm_public_ip.main_lb_public_ip.ip_address
}
