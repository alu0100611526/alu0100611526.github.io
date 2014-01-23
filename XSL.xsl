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
	<div id="artic" style="float:left ; width:100%; heigth:45%">
		<xsl:value-of select="titulo"/>
		<br/>

		<div id="imag" style="width:10% ; heigth:45% ; float: left">
			<img>
				<xsl:attribute name="src">
      				<xsl:value-of select="foto" />
    			</xsl:attribute>

				<xsl:attribute name="width">
      				100%
    			</xsl:attribute>

    			<xsl:attribute name="height">
      				100%
    			</xsl:attribute>
    		</img>
		</div>
		
		<div id="cont" style="float:left width:100% ; heigth:45% ; background-color:white">
	   	<xsl:value-of select="articulo"/>
		<br/><br/>
		</div>
	</div>
	</xsl:for-each>


	<!--Video-->


	<div id="mult" align="center">
		<div id="vid" style=" float: center">
			<iframe>
				<xsl:attribute name="src">
      				<xsl:value-of select="pagina/multimedia/video"/>
    			</xsl:attribute>

				<xsl:attribute name="width">
      				420
    			</xsl:attribute>

    			<xsl:attribute name="height">
      				345
    			</xsl:attribute>
    		</iframe>
		</div>

	</div>



	<!--BLOQUE 1-->
	<div id="block1" style="float:left ; width:50%; heigth:55% ">
	<xsl:for-each select="pagina/bloque/noticia[1]">
		<p align="center"> <table style="border: 1px outset Black;">
			<tr>
				<p align="center"><td><xsl:value-of select="titulo"/></td></p>
			</tr>

			<tr>
				<p align="center"><img>			
					<xsl:attribute name="src">
      						<xsl:value-of select="foto" />
    					</xsl:attribute>

					<xsl:attribute name="width">
      						80%
    					</xsl:attribute>
	
    					<xsl:attribute name="height">
      						80%
    					</xsl:attribute>
    				</img></p>
			</tr>

		</table></p>
	</xsl:for-each>
	</div>

	<!--BLOQUE 2-->
	<div id="block2" style="float:left ; width:50%; heigth:55% ">
	<xsl:for-each select="pagina/bloque/noticia[2]">
		<p align="center"> <table style="border: 1px outset Black;">
			<tr>
				<p align="center"><td><xsl:value-of select="titulo"/></td></p>
			</tr>

			<tr>
				<p align="center"><img>			
					<xsl:attribute name="src">
      						<xsl:value-of select="foto" />
    					</xsl:attribute>

					<xsl:attribute name="width">
      						80%
    					</xsl:attribute>
	
    					<xsl:attribute name="height">
      						80%
    					</xsl:attribute>
    				</img></p>
			</tr>
		</table></p>
	</xsl:for-each>
	</div>	

  </body>
  </html>
</xsl:template>
</xsl:stylesheet>





