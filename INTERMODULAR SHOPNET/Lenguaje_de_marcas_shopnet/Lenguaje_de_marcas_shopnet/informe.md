# Proyecto Intermodular: ShopNet E-commerce

## 1. Descripción de los datos
Este proyecto representa el sistema de gestión de información de **ShopNet**, una tienda online especializada en tecnología y gaming. El XML almacena:
- **Catálogo de productos**: Inventario con SKU, stock y categorías.
- **Gestión de pedidos**: Registro de compras con ID único, estado del envío, cliente y total.

## 2. Validación (DTD)
Se ha diseñado el archivo `modelo.dtd` para garantizar la integridad de la base de datos de la tienda:
- **Control de estados**: Solo permite estados válidos (`pendiente | enviado | entregado`).
- **Identificadores**: Uso de tipos `ID` para que no existan pedidos duplicados.
- **Relaciones**: Uso de `IDREF` para vincular productos con las líneas de pedido.

## 3. Transformación y Diseño (XSLT & CSS)
- **Reporte Visual**: El archivo `transform.xsl` genera automáticamente una tabla HTML con el resumen de ventas.
- **Estética Gaming**: Se ha aplicado un `estilo.css` con tonos oscuros y naranjas eléctricos, típicos del sector tecnológico, mejorando la experiencia del administrador.

## 4. Arquitectura Cloud (AWS)
En la carpeta `/docs/cloud/` se detalla la propuesta de infraestructura:
- Despliegue en **AWS** usando **EC2** para el servidor y **RDS** para la base de datos SQL.
- Uso de **S3** para las imágenes de los productos.
- Optimización de costes aprovechando el **AWS Free Tier**.

## 5. Integración del Proyecto
Este XML/JSON simula una **exportación de datos** desde el backend de la tienda. Permite que ShopNet genere reportes de rendimiento mensuales o que otras aplicaciones (como una de logística) lean los pedidos pendientes de envío.

---
**Evidencias de validación disponibles en la carpeta `/docs/`.**