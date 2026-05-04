## ☁️ Arquitectura Cloud Propuesta para ShopNet

La infraestructura de **ShopNet** en la nube sigue un modelo de **Tres Capas (3-Tier Architecture)**, garantizando una separación clara entre la interfaz de usuario, la lógica de negocio y la persistencia de datos.

### 🏗️ Componentes de la Infraestructura

| Capa | Servicio AWS | Función Principal |
| :--- | :--- | :--- |
| **Presentación** | `Amazon S3` + `CloudFront` | Alojamiento del Frontend estático y distribución global (CDN) para baja latencia. |
| **Aplicación** | `Amazon EC2` | Instancias de cómputo que procesan el carrito, pagos y lógica de negocio. |
| **Datos** | `Amazon RDS` | Base de datos relacional gestionada para inventario y usuarios. |

---

### 🗺️ Esquema de Flujo y Conectividad

Para visualizar cómo interactúa el cliente con la infraestructura en la región de España:
```mermaid
graph TD
    User((Usuario Final)) -->|HTTPS/443| CF[Amazon CloudFront]
    CF -->|Contenido Estático| S3[(Amazon S3)]
    CF -->|Solicitudes Dinámicas| EC2[Servidores Amazon EC2]
    EC2 -->|Consultas SQL| RDS[(Amazon RDS)]
    
    subgraph "AWS Cloud - Región España"
    CF
    S3
    EC2
    RDS
    end
