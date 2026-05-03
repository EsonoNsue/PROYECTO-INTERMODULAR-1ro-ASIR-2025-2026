# ShopNet – Base de Datos

## Descripción del proyecto

ShopNet es una base de datos relacional diseñada para gestionar una tienda online. Permite administrar clientes, empleados, productos, pedidos y el detalle de cada compra.

El sistema está implementado en SQL y sigue un modelo relacional que garantiza la integridad, coherencia y organización de los datos.

## Estructura de la base de datos

La base de datos está compuesta por las siguientes tablas:

- Clientes
- Empleados
- Productos
- Pedidos
- Detalle_Pedido

Cada tabla representa una entidad del sistema y almacena información específica del negocio.

## Relaciones entre tablas

- Un cliente puede realizar varios pedidos (relación 1:N).
- Un empleado puede gestionar varios pedidos (relación 1:N).
- Cada pedido pertenece a un cliente y a un empleado.
- Un pedido puede contener varios productos (relación 1:N).
- Un producto puede aparecer en varios pedidos (relación N:M).

La relación N:M entre Pedidos y Productos se resuelve mediante la tabla Detalle_Pedido.

## Claves principales

### Claves primarias

- Clientes: id_cliente
- Empleados: id_empleado
- Productos: id_producto
- Pedidos: id_pedido
- Detalle_Pedido: id_detalle

### Claves foráneas

- Pedidos:
  - id_cliente referencia Clientes(id_cliente)
  - id_empleado referencia Empleados(id_empleado)
- Detalle_Pedido:
  - id_pedido referencia Pedidos(id_pedido)
  - id_producto referencia Productos(id_producto)

## Tecnologías utilizadas

- SQL (MySQL / MariaDB)
- Modelo relacional de bases de datos

## Funcionalidades

- Gestión de clientes y empleados
- Control de productos y stock
- Registro de pedidos
- Gestión del detalle de pedidos
- Consultas SQL para análisis de datos

## Ejemplos de consultas

```sql
SELECT * FROM Clientes;

SELECT p.id_pedido, c.nombre, p.total
FROM Pedidos p
JOIN Clientes c ON p.id_cliente = c.id_cliente;

SELECT * FROM Productos
WHERE stock < 10;
```

## Mantenimiento de la base de datos

- Copias de seguridad mediante herramientas como mysqldump
- Exportación de datos en formato SQL o CSV
- Gestión de usuarios y permisos en la base de datos

## Autor

Proyecto académico de diseño e implementación de base de datos relacional para ShopNet.
 
### Autores
- Gregorio Esono NSUE MIKUE
- Leandro Peña Liriano