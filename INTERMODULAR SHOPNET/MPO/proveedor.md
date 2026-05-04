## ☁️ Investigación del Proveedor Cloud: AWS

Tras un análisis técnico y económico, se ha seleccionado **Amazon Web Services (AWS)** como el proveedor de infraestructura para el despliegue de **ShopNet**. Esta decisión se basa en la robustez de sus servicios y su cumplimiento normativo.

---

### ⚖️ Justificación de la Elección

Para que una tienda online sea competitiva, debe apoyarse en tres pilares que AWS cubre de forma nativa:

| Pilar | Descripción | Beneficio para ShopNet |
| :--- | :--- | :--- |
| **Alta Disponibilidad** | SLA del **99.99%** mediante zonas de disponibilidad (AZ). | La tienda permanece operativa 24/7, minimizando la pérdida de ventas. |
| **Escalabilidad Elástica** | Uso de *Auto Scaling* y *Elastic Load Balancing*. | Capacidad de respuesta automática ante picos de tráfico (ej. Black Friday). |
| **Soberanía de Datos** | Región **eu-south-2 (Aragón, España)**. | Cumplimiento estricto del **RGPD** y latencia mínima para usuarios locales. |

---

### 💎 Beneficios Clave del Ecosistema

#### 🔒 Seguridad Avanzada
No solo confiamos en la red interna; la capa Cloud añade:
*   **AWS Shield:** Protección nativa contra ataques de denegación de servicio (DDoS).
*   **ACM (AWS Certificate Manager):** Gestión centralizada de certificados SSL/TLS para transacciones seguras.
*   **IAM:** Control de acceso granular para que solo el personal autorizado gestione la infraestructura.

#### 💰 Eficiencia en Costes (Modelo OpEx)
A diferencia de una infraestructura física tradicional, ShopNet aprovecha el modelo de **Pago por Uso**:
*   Sin inversión inicial en hardware (CapEx).
*   Los costes se ajustan dinámicamente al volumen de clientes reales.
*   Optimización mediante instancias reservadas para servicios de base de datos (RDS).

---

> [!IMPORTANT]
> **Conclusión del Proveedor:** AWS no solo proporciona servidores, sino un ecosistema completo que permite a ShopNet escalar de una pequeña startup a una plataforma global sin necesidad de migrar de proveedor.
