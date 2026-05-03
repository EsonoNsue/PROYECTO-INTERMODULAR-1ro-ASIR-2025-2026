🖥️ ShopNet – Implantación de Sistemas Operativos
Módulo: Implantación de Sistemas Operativos
Curso: 1º ASIR 2025-2026
Proyecto: Intermodular
Autores: Gregorio Esono Nsue Mikue · Leandro Peña Liriano
Centro: thePower FP Oficial – PROMETEO

📋 Índice
Análisis de Necesidades
Plan de Implantación
Instalación del Sistema Operativo
Configuración del Sistema
Gestión de Usuarios y Permisos
1. Análisis de Necesidades
ShopNet requiere una infraestructura basada íntegramente en Software Libre, eliminando licencias propietarias y permitiendo una personalización total del entorno.

Servidor – Controlador de Dominio
Sistema elegido: Ubuntu 24.04 LTS (Server)
Justificación:
Actúa como Controlador de Dominio (Active Directory) mediante Samba4
Versión LTS con soporte de seguridad durante al menos 5 años
Sin interfaz gráfica → todos los recursos dedicados a la red
Estaciones de Trabajo
Sistema elegido: Ubuntu 24.04.3 LTS Desktop
Justificación:
Integración nativa con el servidor mediante realmd o sssd
Seguridad robusta basada en permisos estrictos de Linux
Entorno GNOME intuitivo para usuarios finales
2. Plan de Implantación
La implantación se realiza mediante máquinas virtuales sobre Oracle VM VirtualBox, con instalación manual guiada para personalizar el particionado y la red.

Configuración de la Máquina Virtual
Parámetro	Valor
Nombre VM	Admin / PC01
ISO	ubuntu-24.04.3-desktop-amd64.iso
RAM	2048 MB
CPUs	2
Disco duro	25 GB (VDI, sin reserva completa)
EFI	Habilitado
Video Memory	126 MB
Adaptador 1	NAT (salida a Internet)
Adaptador 2	Red interna (dominio SHOPNET)
⚠️ Importante: No marcar "Proceed with Unattended Installation" para mantener control total sobre la configuración.

3. Instalación del Sistema Operativo
Pasos seguidos durante la instalación de Ubuntu Desktop:

Arranque desde ISO con GNU GRUB → seleccionar "Try or Install Ubuntu"
Selección de idioma: Español
Distribución del teclado: Español
Actualizar el instalador si se ofrece
Elegir "Instalar Ubuntu"
Marcar instalación de software de terceros (controladores y Wi-Fi)
Crear credenciales:
Usuario: adminshopnet
Equipo: adminshopnet-VirtualBox
Zona horaria: Europe/Madrid
Lanzar instalación → particiones automáticas (EFI + ext4)
4. Configuración del Sistema
4.1 Configuración de Red
Se configuran dos adaptadores de red en GNOME:

Adaptador 1 – enp0s3 (NAT / Internet)

Modo: Automático (DHCP)
Uso: Salida a Internet y descarga de paquetes
Adaptador 2 – enp0s8 (Red interna / Dominio)

Parámetro	Valor
Método IPv4	Manual
Dirección IP	192.168.10.1
Máscara de red	255.255.255.0
Puerta de enlace	(vacía)
DNS	127.0.0.1
Activar "Usar esta conexión sólo para los recursos en su red" para aislar el tráfico interno del dominio.

Verificación:

ip addr show enp0s8        # Debe mostrar 192.168.10.1
ping -c 3 192.168.10.1     # Debe responder correctamente
Instalación de Samba y Kerberos
sudo apt update && sudo apt install samba krb5-config winbind smbclient -y
Durante la configuración de Kerberos:

Reino: SHOPNET.LOCAL (en mayúsculas, obligatorio)
Servidor Kerberos: 192.168.10.1
Servidor administrativo: 192.168.10.1
Configuración del Controlador de Dominio
# Paso A – Detener servicios innecesarios
sudo systemctl stop smbd nmbd winbind
sudo systemctl disable smbd nmbd winbind

# Paso B – Eliminar configuración antigua
sudo rm /etc/samba/smb.conf

# Paso C – Aprovisionar el dominio
sudo samba-tool domain provision --use-rfc2307 --interactive
Parámetros del aprovisionamiento:

Campo	Valor
Realm	SHOPNET.LOCAL
Domain	SHOPNET
Server Role	dc
DNS Backend	SAMBA_INTERNAL
DNS Forwarder	8.8.8.8
Administrator password	Shopnet.2026
# Vincular configuración de Kerberos
sudo cp /var/lib/samba/private/krb5.conf /etc/krb5.conf

# Levantar el servicio de dominio
sudo systemctl unmask samba-ad-dc
sudo systemctl start samba-ad-dc
sudo systemctl enable samba-ad-dc
4.2 Actualizaciones del Sistema
Mantener el sistema actualizado garantiza la corrección de vulnerabilidades y la compatibilidad con Samba y Kerberos.

4.3 Configuración Regional
Se establece el idioma Español y la distribución de teclado Español desde el panel de configuración de GNOME → Región e idioma.

5. Gestión de Usuarios y Permisos
5.1 Unidades Organizativas (OUs)
Las OUs son "carpetas virtuales" que organizan usuarios y grupos por departamentos.

sudo samba-tool ou create "OU=IT,DC=shopnet,DC=local"
sudo samba-tool ou create "OU=Administracion,DC=shopnet,DC=local"
sudo samba-tool ou create "OU=Direccion,DC=shopnet,DC=local"
sudo samba-tool ou create "OU=Gestion,DC=shopnet,DC=local"
sudo samba-tool ou create "OU=Ventas,DC=shopnet,DC=local"
5.2 Grupos
sudo samba-tool group add IT
sudo samba-tool group add Administracion
sudo samba-tool group add Direccion
sudo samba-tool group add Gestion
5.3 Usuarios
# Crear usuario asignado a una OU
sudo samba-tool user create <nombre> <contraseña> --userou="OU=IT"
Usuarios creados: Esono.nsue, Luisa, German, Marco, Baltasar, Juan, Felipe, Sory, Leandro, Rebeca.nchama, Gregorio.esono, Fernando.laofei

5.4 Carpetas Compartidas
sudo mkdir -p /srv/samba/it
sudo mkdir -p /srv/samba/ventas
sudo mkdir -p /srv/samba/administracion
sudo mkdir -p /srv/samba/direccion
sudo mkdir -p /srv/samba/gestion
5.5 Asignación de Usuarios a Grupos
# Añadir un usuario a un grupo
sudo samba-tool group addmembers <grupo> <nombre>

# Añadir varios usuarios
sudo samba-tool group addmembers <grupo> <nombre1>,<nombre2>,<nombre3>

# Ver miembros de un grupo
sudo samba-tool group listmembers <grupo>
Estructura final del dominio
SHOPNET.LOCAL
├── OU=IT
│   └── Esono.nsue, Juan
├── OU=Administracion
│   └── Leandro, Marco, Felipe
├── OU=Direccion
│   └── German
├── OU=Gestion
│   └── Sory, Luisa, Fernando.laofei
├── OU=Ventas
│   └── Baltasar, Rebeca.nchama, Gregorio.esono
└── Grupos: IT · Administracion · Direccion · Gestion
🛠️ Tecnologías Utilizadas
Ubuntu 24.04.3 LTS Desktop
Oracle VM VirtualBox
Samba4 (Controlador de Dominio Active Directory)
Kerberos 5
Winbind / smbclient
👥 Autores
Nombre	Rol
Gregorio Esono Nsue Mikue	Autor
Leandro Peña Liriano	Autor
Proyecto académico – 1º ASIR 2025-2026 · thePower FP Oficial