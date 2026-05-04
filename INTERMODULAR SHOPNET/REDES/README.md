# 🖧 Proyecto Intermodular: Implantación y Administración de Redes
## 🏢 Proyecto: SHOPNET - Tienda Online con Gestión Interna

Este proyecto consiste en el diseño e implementación de una infraestructura de red robusta para **SHOPNET**, una tienda online que requiere una gestión interna eficiente y segura.

### 🎯 Objetivos Principales
*   **Escalable** 📈: Preparada para el crecimiento de la empresa.
*   **Segura** 🔒: Segmentación estricta de datos.
*   **Alta disponibilidad** ⚡: Redundancia y resiliencia.
*   **Fácil de administrar** 🛠️: Gestión centralizada.

---

## 🚀 Tecnologías Utilizadas
*   **VLANs** (Segmentación de red)
*   **InterVLAN Routing** (SVI en Capa 3)
*   **VTP** (VLAN Trunking Protocol)
*   **DHCP** (Asignación dinámica de IPs)
*   **ACLs** (Listas de Control de Acceso para seguridad)

---

## 🌐 Topología de Red
Se ha implementado una **topología en estrella jerárquica** compuesta por:

1.  **Core / Server (Switch Capa 3):** El cerebro y núcleo de la red.
2.  **Distribución (Switches Capa 2):** Repartidos por las 3 plantas del edificio.
3.  **Borde (Router):** Gestión de la salida a Internet.

### 🧩 Diseño con VTP
Para la gestión de las VLANs, se configuró un dominio VTP con la siguiente lógica:

| Modo | Función |
| :--- | :--- |
| **Server** | Crea, modifica y administra las VLANs de toda la red. |
| **Client** | Aprende y sincroniza automáticamente las VLANs del Server. |
| **Transparent** | No depende del Server; mejora la resiliencia ante fallos en la cadena. |

> [!TIP]
> **Decisión clave:** Se configuró un switch en modo **Transparent** para evitar una dependencia total del servidor VTP, garantizando que un fallo en la propagación no afecte a áreas críticas.

---

## ⚙️ Implementación Técnica

### 1. Enlaces Trunk y VLAN Nativa
Se establecieron enlaces troncales entre todos los dispositivos intermedios. Se cambió la VLAN nativa por defecto a la **VLAN 99 (Gestión)** para mitigar ataques de *VLAN Hopping*.

### 2. InterVLAN Routing
En lugar de usar *Router-on-a-Stick*, se utilizó el **Switch de Capa 3** para mejorar el rendimiento y evitar cuellos de botella:
```bash
# Activación del enrutamiento en el Core Switch
Switch(config)# ip routing

# Ejemplo de creación de interfaz virtual (SVI)
Switch(config)# interface vlan 10
Switch(config-if)# ip address 192.168.10.1 255.255.255.0
