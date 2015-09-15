<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:template match="/">
			"use strict";
		window.links = [
   					<xsl:for-each select = "packJSStructure/*[dependencies]">
   						<xsl:variable name="idname" select="id"/>
	   						<xsl:for-each select = "dependencies/dependency">
								{source: "<xsl:value-of select="$idname"/>", target: "<xsl:value-of select="."/>"}
								<xsl:if test="position() != last()">,</xsl:if>
				   			</xsl:for-each>
						<xsl:if test="position() != last()">,</xsl:if>
			   		</xsl:for-each>
			   	]
	</xsl:template>	
</xsl:stylesheet>