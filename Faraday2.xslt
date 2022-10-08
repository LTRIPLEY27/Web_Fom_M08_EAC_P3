<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!---ELEMENTO 'TEMPLATE PARA ASOCIAR LA TEMPLATE CON EL ELEMENTO QUE QUEREMOS DEL XML-->
	<xsl:template match="/concesionario">
		<concesionario>
			<xsl:apply-templates/>
		</concesionario>
	</xsl:template>
	<xsl:template match="coche">
		<html>
			<body>
				<h1>Faraday's Renting and Seller Cars</h1>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th>Modelo</th>
						<th>Categoría</th>
						<th>Versión</th>
						<th>Precio</th>
						<th>Año</th>
					</tr>
					<xsl:for-each select="concesionario/coche">
						<tr>
							<td>
								<xsl:value-of select="modelo" />
							</td>
							<td>
								<xsl:value-of select="categoria" />
							</td>
							<td>
								<xsl:value-of select="version" />
							</td>
							<td>
								<xsl:value-of select="precio_venta" />
							</td>
							<td>
								<xsl:value-of select="any" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
