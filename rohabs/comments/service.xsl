<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
 	<html>
  		<body>
    		<h2 align="center">USER COMMENTS OUR SERVICES</h2>
    		<table border="1" align="center">
      			<tr bgcolor="orange">
				  	<th>ID</th>
					<th>Name</th>
        			<th>Comment</th>
      			</tr>
      			<xsl:for-each select="service/booking">
	        		<tr>
						<td><xsl:value-of select="id"/></td>
	          			<td><xsl:value-of select="name"/></td>
	          			<td><xsl:value-of select="comment"/></td>
	        		</tr>
      			</xsl:for-each>
    		</table>
  		</body>
  	</html>
</xsl:template>
</xsl:stylesheet>