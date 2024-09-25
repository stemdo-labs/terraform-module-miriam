# Módulo de Terraform

Este repositorio está diseñado para proporcionar un módulo de Terraform que permite desplegar una infraestructura en Microsoft Azure, incluyendo:

- Red Virtual y Subred: Crea una red virtual y una subred en Azure para alojar las máquinas virtuales y otros recursos.

- Máquinas Virtuales: Despliega múltiples máquinas virtuales con configuraciones personalizables (nombre, tamaño, usuario administrador, contraseña, y puertos).

- Balanceador de Carga: Configura un balanceador de carga para distribuir el tráfico entre las máquinas virtuales, asegurando alta disponibilidad y rendimiento.

- Configuración Modular: Implementa una estructura modular que permite la reutilización de código y la fácil integración de diferentes componentes de infraestructura.