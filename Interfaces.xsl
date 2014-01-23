<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body background="fondo.jpg">
	<!--TITULO-->
	<div id="tit" style="float:center ; width:100% ; background-color:#088A4B">
  		<h2>
  			<p align="center"><xsl:value-of select="pagina/titulo_principal"/></p>
  		</h2>
	</div>

	
	<!--CONTENIDO SUPERIOR-->
	<xsl:for-each select="pagina/contenido">
	<div id="artic" style="float:center ; width:100%; heigth:45% ">
		<h2><xsl:value-of select="titulo"/></h2>
		<br/>
		<div id="mult" align="center">
		<xsl:for-each select="pic">
			<div id="imag" style="width:100% ; heigth:100% ; float: center">
				<img>
					<xsl:attribute name="src">
      					<xsl:value-of select="foto[1]" />
    				</xsl:attribute>

    			</img>
			</div>
			<div id="imag" style="width:100% ; heigth:100% ; float: center">
				<img>
					<xsl:attribute name="src">
      					<xsl:value-of select="foto[2]" />
    				</xsl:attribute>
    			</img>
			</div>
		</xsl:for-each>	
		</div>
	</div>
	</xsl:for-each>

  </body>
  </html>
</xsl:template>
</xsl:stylesheet>





