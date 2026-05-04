# 🖥️ ShopNet – Fundamentos de Hardware

**Módulo:** Fundamentos de Hardware  
**Curso:** 1º ASIR 2025-2026  
**Proyecto:** Intermodular  
**Autores:** Gregorio Esono Nsue Mikue · Leandro Peña Liriano  
**Centro:** thePower FP Oficial – PROMETEO

---

## 📋 Índice

- [Análisis de Necesidades](#análisis-de-necesidades)
- [Componentes por Departamento](#componentes-por-departamento)
- [Configuración de Hardware Propuesta](#configuración-de-hardware-propuesta)
- [Sistema de Almacenamiento](#sistema-de-almacenamiento)
- [Comparativa y Mejora del Sistema](#comparativa-y-mejora-del-sistema)

---

## 1. Análisis de Necesidades

**SHOPNET** es una empresa de comercio electrónico centrada en la venta online y la gestión automatizada de pedidos. Su infraestructura tecnológica debe soportar:

- Alto volumen de usuarios simultáneos
- Gestión de pedidos en tiempo real
- Seguridad en los datos de clientes
- Escalabilidad del sistema

Se definen tres perfiles de equipos según su función:

| Perfil | Departamento | Uso principal |
|---|---|---|
| Usuario / Administrativo | Atención al cliente y pedidos | Gestión de pedidos, emails, base de datos |
| Gestión y Administración | Dirección | Análisis de ventas, control de negocio |
| Alto rendimiento | Departamento IT | Servidores, seguridad, desarrollo, backups |

---

## 2. Componentes por Departamento

### 2.1 Placa Base

| Departamento | Modelo | Precio |
|---|---|---|
| Administración & Gestión | ASUS Prime B650M-K (DDR5, NVMe, AM5) | 85.99 € |
| Departamento IT | ASUS TUF Gaming B650-PLUS | 139.90 € |

La **ASUS Prime B650M-K** es una solución equilibrada entre coste y rendimiento para tareas de oficina. La **ASUS TUF Gaming B650-PLUS** está diseñada para cargas de trabajo intensivas con soporte para Ryzen 7, mayor RAM y múltiples NVMe.

### 2.2 CPU (Procesador)

| Departamento | Modelo | Núcleos/Hilos | Precio |
|---|---|---|---|
| Administración & Gestión | AMD Ryzen 5 7600 | 6 núcleos / 12 hilos | 174.90 € |
| Departamento IT | AMD Ryzen 7 7700 | 8 núcleos / 16 hilos | 237.00 € |

### 2.3 Memoria RAM

| Departamento | Modelo | Capacidad | Precio |
|---|---|---|---|
| Administración & Gestión | Corsair Vengeance DDR5 6000MHz | 2×8 GB (16 GB) | 255.99 € |
| Departamento IT | Corsair Vengeance DDR5 6000MHz | 2×16 GB (32 GB) | 399.99 € |

### 2.4 Almacenamiento

| Departamento | Modelo | Capacidad | Precio |
|---|---|---|---|
| Administración & Gestión | Intenso Premium SSD M.2 NVMe PCIe 3.0 | 500 GB | 98.99 € |
| Departamento IT | Forgeon Nimbus Plus NVMe PCIe 4.0 M.2 (hasta 7000 MB/s) | 2 TB | 269.95 € |

### 2.5 Fuente de Alimentación

| Departamento | Modelo | Potencia | Precio |
|---|---|---|---|
| Administración & Gestión | Corsair CX650 80 Plus Bronze | 650W | 58.95 € |
| Departamento IT | Forgeon Reactor Cybenetics Platinum ATX 3.1 PCIe 5.1 | 850W | 89.00 € |

### 2.6 Tarjetas de Expansión

**Tarjeta de red:**

| Departamento | Modelo | Precio |
|---|---|---|
| Administración & Gestión | TP-LINK TL-WN881ND 300Mbps | 14.99 € |
| Departamento IT | ASUS PCE-AXE4500 WiFi 6E + Bluetooth | 28.99 € |

**Tarjeta gráfica (GPU) — solo Departamento IT:**

| Modelo | VRAM | Precio |
|---|---|---|
| ASUS DUAL GeForce RTX 5060 Ti OC | 16 GB GDDR7 | 629.90 € |

Características destacadas: arquitectura Blackwell, núcleos Tensor para IA, ~750+ AI TOPS, DLSS4.

### 2.7 Chasis

| Departamento | Modelo | Precio |
|---|---|---|
| Administración & Gestión | Fractal Design Pop Mini Silent | 83.99 € |
| Departamento IT | NZXT H3 Flow | 52.99 € |

---

## 3. Configuración de Hardware Propuesta

### Administración & Gestión — Total: 773,80 €

| Nº | Componente | Modelo | Precio |
|---|---|---|---|
| 1 | Placa Base | ASUS Prime B650M-K | 85.99 € |
| 2 | CPU | AMD Ryzen 5 7600 | 174.90 € |
| 3 | RAM | Corsair Vengeance 2×8GB DDR5 6000MHz | 255.99 € |
| 4 | SSD | Intenso Premium 500GB M.2 NVMe PCIe 3.0 | 98.99 € |
| 5 | Fuente | Corsair CX650 650W 80 Plus Bronze | 58.95 € |
| 6 | Tarjeta de Red | TP-LINK TL-WN881ND 300Mbps | 14.99 € |
| 7 | Chasis | Fractal Design Pop Mini Silent | 83.99 € |
| | | **TOTAL** | **773,80 €** |

### Departamento IT — Total: 1.833,72 €

| Nº | Componente | Modelo | Precio |
|---|---|---|---|
| 1 | Placa Base | ASUS TUF Gaming B650-PLUS | 139.90 € |
| 2 | CPU | AMD Ryzen 7 7700 | 237.00 € |
| 3 | RAM | Corsair Vengeance 2×16GB DDR5 6000MHz | 399.99 € |
| 4 | SSD | Forgeon Nimbus Plus 2TB NVMe PCIe 4.0 M.2 | 269.95 € |
| 5 | Fuente | Forgeon Reactor 850W | 89.00 € |
| 6 | Tarjeta de Red | ASUS PCE-AXE4500 | 14.99 € |
| 7 | GPU | ASUS DUAL GeForce RTX 5060 Ti OC | 629.90 € |
| 8 | Chasis | NZXT H3 Flow | 52.99 € |
| | | **TOTAL** | **1.833,72 €** |

---

## 4. Sistema de Almacenamiento

### 4.1 Servidor Principal

**Dell PowerEdge T160** — Precio: **2.470,78 €**

| Componente | Especificación |
|---|---|
| CPU | Intel Xeon 6325P, 3.5 GHz (Turbo 5.2 GHz), 4 núcleos / 8 hilos |
| RAM | 32 GB DDR5 ECC (ampliable hasta 128 GB) |
| SSD | 480 GB SATA III 2.5" (máx. 2 unidades) |
| Red | 2× Ethernet Gigabit (Broadcom 5720) |
| Factor de forma | Torre (3U) |
| Fuente | 300W |
| Admin remota | iDRAC9 Enterprise 16G |
| SO compatible | Windows Server, Ubuntu Server, RHEL, etc. |

### 4.2 Sistema de Backup — NAS

**Synology DiskStation DS923** — Precio: **1.630,46 €**

| Componente | Especificación |
|---|---|
| CPU | AMD Ryzen R1600, 2 núcleos, hasta 3.1 GHz |
| RAM | 4 GB DDR4 ECC (ampliable hasta 32 GB) |
| Almacenamiento | 4 bahías HDD/SSD, 2 ranuras M.2, soporte RAID 0/1/5/6/10/JBOD |
| Red | 2× Ethernet Gigabit, SMB, NFS, FTP, iSCSI |
| Sistema | DiskStation Manager (DSM), cifrado AES |
| Consumo | ~35W, bajo ruido (22.9 dB) |

### 4.3 Periféricos

| Nº | Ítem | Modelo | Precio |
|---|---|---|---|
| 1 | Monitor IT | Dell UltraSharp U2724D | 1.176,99 € |
| 2 | Monitor | MSI MAG 274QF X24 | 199.00 € |
| 3 | Teclado | Owlotech EK500 | 19.99 € |
| 4 | Ratón | Owlotech EM500 | 13.00 € |
| 5 | SAI | Salicru SPS One 1100VA V2 | 119.55 € |
| 6 | Disco Duro Externo | Toshiba Canvio Gaming 4TB | 203.99 € |
| 7 | Impresora | Brother HL-L3240CDW Láser LED Color WiFi Dúplex | 269.00 € |

---

## 5. Comparativa y Mejora del Sistema

### 5.1 Posibles Mejoras

**Escalabilidad del servidor:** incorporación de servidores adicionales o migración a arquitectura en la nube para soportar más usuarios simultáneos.

**Mayor almacenamiento:** ampliación del NAS o incorporación de nuevos discos en RAID para gestionar más productos, pedidos y copias de seguridad.

**Mejoras de seguridad:** implementación de autenticación multifactor (MFA), firewalls de nueva generación, cifrado extremo a extremo y sistemas de detección de intrusiones (IDS/IPS).

### 5.2 Diferencias del Sistema

El sistema de SHOPNET se diferencia de infraestructuras tradicionales en que:

- **Prioriza la velocidad web**, ya que afecta directamente a la experiencia del usuario y a las ventas.
- **La base de datos es el núcleo del sistema**, almacenando clientes, productos, pedidos y transacciones con alta disponibilidad y seguridad.

### 5.3 Evolución Prevista

| Área | Necesidad futura |
|---|---|
| Usuarios | Mayor capacidad de procesamiento y ancho de banda |
| Productos | Ampliación de base de datos y almacenamiento |
| Expansión | Nuevos mercados → mejoras en infraestructura y seguridad global |

> SHOPNET es una plataforma preparada para operar en el entorno digital, combinando venta online, gestión de datos y escalabilidad tecnológica.

---

## 👥 Autores

| Nombre | Rol |
|---|---|
| Gregorio Esono Nsue Mikue | Autor |
| Leandro Peña Liriano | Autor |

Proyecto académico – 1º ASIR 2025-2026 · thePower FP Oficial
