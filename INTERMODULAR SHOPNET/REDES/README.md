🖧 Proyecto Intermodular: Implantación y Administración de Redes
🏢 Proyecto: SHOPNET - Tienda Online con Gestión Interna
Este proyecto consiste en el diseño e implementación de una infraestructura de red para una tienda online con gestión interna llamada SHOPNET.

El objetivo principal es construir una red:

Escalable 📈
Segura 🔒
Alta disponibilidad ⚡
Fácil de administrar 🛠️
Se han utilizado tecnologías como:

VLANs
InterVLAN Routing
VTP (VLAN Trunking Protocol)
DHCP
ACLs (Listas de Control de Acceso)
🌐 Topología de Red
Se implementa una topología en estrella jerárquica con:

🧠 Switch Capa 3 (Core / Server) → Núcleo de la red
🔀 Switches Capa 2 → Distribución por plantas
🌍 Router → Salida a Internet
🏢 Estructura
3 plantas
3 switches principales:
2 en modo Client
1 en modo Transparent (por seguridad)
🧩 Diseño con VTP
Se implementa VTP para gestión de VLANs:

Modo	Función
Server	Crea y administra VLANs
Client	Aprende VLANs del Server
Transparent	No depende del Server, configuración manual
🔐 Decisión clave
Un switch se configura en modo Transparent para evitar dependencia total del servidor y mejorar la resiliencia ante fallos.

⚙️ Configuración de Red
1. 🔗 Enlaces Trunk
Configuración inicial de enlaces entre switches
Uso de VLAN nativa (posteriormente cambiada a VLAN 99)
2. 🧱 Configuración VTP y VLANs
Configuración de dominio VTP
Definición de contraseña
Asignación de modos (Server, Client, Transparent)
Creación de VLANs por departamento
3. 🏷️ VLAN Nativa
Cambio de VLAN nativa a:
VLAN 99 (Gestión)
🔄 InterVLAN Routing
Configuración en switch capa 3
Permite la comunicación entre diferentes VLANs
Se crean interfaces virtuales (SVI) para cada VLAN
El switch actúa como gateway de cada red
Activación del enrutamiento
ip routing
5. 📡 DHCP
implementación en servidor
Creación de pools por VLAN:
IP
Máscara
Gateway
DNS
Configuración de ip helper-address en interfaces VLAN
6. 🌍 Conexión a Internet
Enlace entre switch capa 3 y router
Configuración:
no switchport en interfaz del switch
Asignación de IP /30
Activación de interfaces
🔐 Seguridad: ACLs
Se implementan reglas para restringir el acceso entre departamentos:

📊 Políticas por VLAN
VLAN	Departamento	Acceso
10	Administración	Acceso limitado al servidor (HTTPS 443, SMB 445)
20	Atención al cliente	Solo acceso a logística
15	Contabilidad	Acceso limitado al servidor + administración
40	Logística	Acceso limitado al servidor + atención al cliente
60	Desarrollo	Acceso completo al servidor, restringido a otros departamentos
70	WiFi	Totalmente aislado
📶 Red WiFi
VLAN dedicada para WiFi (VLAN 70)
Acceso completamente restringido a red interna
Solo salida controlada
🧠 Decisiones Técnicas
Uso de VTP para gestión centralizada
Implementación de Switch Transparent para alta disponibilidad
Uso de InterVLAN Routing en lugar de Router-on-a-Stick:
Mejor rendimiento
Evita cuellos de botella
Segmentación por departamentos para seguridad y eficiencia
✅ Resultados
✔️ Comunicación interna controlada
✔️ Acceso a Internet funcional
✔️ DHCP operativo en toda la red
✔️ Seguridad mediante ACLs
✔️ WiFi completamente aislado
✔️ Red escalable y robusta
🧾 Conclusiones
La infraestructura diseñada para SHOPNET cumple con los requisitos de:

Alta disponibilidad
Seguridad interna
Escalabilidad
Facilidad de gestión
El uso de tecnologías como VTP, InterVLAN y ACLs permite una red eficiente, preparada para crecimiento futuro y adaptada a un entorno empresarial real.