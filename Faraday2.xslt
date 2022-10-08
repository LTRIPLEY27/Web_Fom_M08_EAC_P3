<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<body>
				<h1>Faraday Cars</h1>
				<xsl:for-each select="concesionario/coche">
					<strong>Coche: </strong>
					<xsl:value-of select="coche"/>
					<tr>
						<td>
							<xsl:value-of select="@marca"/>
						</td>
						<td>
							<xsl:value-of select="modelo"/>
						</td>
					</tr>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
