<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="es">
            <head>
                <meta charset="UTF-8"/>
                <title>Panel ShopNet</title>
                <link rel="stylesheet" href="../css/estilo.css"/>
            </head>
            <body>
                <header>
                    <h1>ShopNet: Gestión de Ventas</h1>
                    <p>Administración de Pedidos e Inventario</p>
                </header>
                <main>
                    <table>
                        <thead>
                            <tr>
                                <th>ID Compra</th>
                                <th>Estado</th>
                                <th>Cliente</th>
                                <th>Fecha Compra</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="shopnet/pedidos/pedido">
                                <tr>
                                    <td><xsl:value-of select="@id_compra"/></td>
                                    <td>
                                        <span class="estado-{@estado}">
                                            <xsl:value-of select="@estado"/>
                                        </span>
                                    </td>
                                    <td><xsl:value-of select="cliente"/></td>
                                    <td><xsl:value-of select="fecha_compra"/></td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>