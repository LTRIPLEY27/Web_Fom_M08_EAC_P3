<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!---ELEMENTO 'TEMPLATE PARA ASOCIAR LA TEMPLATE CON EL ELEMENTO QUE QUEREMOS DEL XML-->
	<xsl:template match="/concesionario">
		<concesionario>
			<xsl:apply-templates/>
		</concesionario>
	</xsl:template>
	<xsl:template match="coche">
		<coche>
			<xsl:attribute name="modelo">
				<xsl:value-of select="modelo"/>
			</xsl:attribute>
			<xsl:attribute name="categoria">
				<xsl:value-of select="categoria"/>
			</xsl:attribute>
			<xsl:attribute name="version">
				<xsl:value-of select="version"/>
			</xsl:attribute>
			<xsl:attribute name="precio_venta">
				<xsl:value-of select="precio_venta"/>
			</xsl:attribute>
			<xsl:attribute name="any">
				<xsl:value-of select="any"/>
			</xsl:attribute>
		</coche>
	</xsl:template>
</xsl:stylesheet>