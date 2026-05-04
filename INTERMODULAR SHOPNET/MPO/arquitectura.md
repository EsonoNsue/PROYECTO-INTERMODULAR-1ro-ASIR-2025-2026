# Arquitectura Cloud Propuesta para ShopNet

La arquitectura de ShopNet está diseñada siguiendo un modelo de **Tres Capas** para separar la interfaz del usuario de la lógica de negocio y los datos.

### Componentes:
1. **Capa de Presentación (Frontend):** Alojada en **Amazon S3** y distribuida globalmente mediante **Amazon CloudFront** para que la web cargue instantáneamente.
2. **Capa de Aplicación (Backend):** Servidores **Amazon EC2** que gestionan el carrito de la compra y el procesamiento de pagos.
3. **Capa de Datos:** **Amazon RDS** para almacenar el inventario de productos y el historial de pedidos de los clientes.

### Esquema de Red:
`Usuario -> CloudFront (CDN) -> Servidor EC2 -> Base de Datos RDS`

[ CLIENTE SHOPNET ]
                |
                | (HTTPS / Puerto 443)
                v
       [ AWS CLOUD - SPAIN ]
    +---------------------------+
    |  [ Amazon CloudFront ]    | <-- Entrega rápida de la web
    |           |               |
    |  [ Servidor EC2 ]         | <-- Lógica de pedidos
    |           |               |
    |  [ Base Datos RDS ]       | <-- Stock y Clientes
    +---------------------------+
                |
                v
       [ Amazon S3 Storage ]      <-- Fotos de productos
