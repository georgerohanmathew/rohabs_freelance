<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html lang="en">
   <head>
	<style>
    		*
            {
                text-align:center;
                width:100%;
                border:2px solid black;
            }
			th
			{
			background-color:yellow;
			}
			td
			{
			background-color:powderblue;
			}
            td,th
            {
                font-size:larger;
                padding:20px;
                text-align:center !important;
            }

    			</style>
     
   </head>


   
   <body>            <header name="employee_management_system"><h1 class="cg2" style="text-transform: none !important">Employee Management System</h1> </header>
     
           
                  <p  id="service">
                  <table style="width:100%">
      			<tr>
					<th>Emp-ID</th>
					<th>Emp-name</th>
        			<th>Emp-age</th>
        			<th>Emp-salary</th>
        			<th>Emp-emailid</th>
					<th>Emp-Phonenum</th>
					<th>Emp-designation</th>
					<th>Promotion</th>
      			</tr>
      			<xsl:for-each select="Company/Employee">
	        		<tr>
						<td><xsl:value-of select="@EMPID"/></td>
	          			<td><xsl:value-of select="name"/></td>
	          			<td><xsl:value-of select="age"/></td>
	          			<td><xsl:value-of select="salary"/></td>
	          			<td><xsl:value-of select="email"/></td>
						<td><xsl:value-of select="phone"/></td>
						<td><xsl:value-of select="designation"/></td>
							<xsl:choose>
					<xsl:when test="age >= 50">
					<td>Associate Project Manager</td>
						</xsl:when>
						<xsl:when test="age >= 40">
					<td>Team Leader</td>
				</xsl:when>
				<xsl:otherwise>
				<td>Developer</td>
</xsl:otherwise>
</xsl:choose>
	        		</tr>
      			</xsl:for-each>
    		</table>

                  </p>
       
   </body>
</html>
</xsl:template>
</xsl:stylesheet>