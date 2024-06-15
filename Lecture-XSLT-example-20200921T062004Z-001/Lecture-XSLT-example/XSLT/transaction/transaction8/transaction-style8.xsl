<?xml version="1.0"?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

  <xsl:template match="/dailyTransaction">
    <html>
      <head> 
        <title>XSLT example</title> 
      </head>
      <body>
        <h1>Daily transaction <xsl:value-of select="@date" /> </h1>
		
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Mobile</th>
            <th>Staff Id</th>
            <th>Operation</th>
          </tr>
          <xsl:for-each select="person">
            <xsl:sort select="lastName"/>
            <tr>
              <td>
                <xsl:value-of select="firstName" /> 
                <xsl:text> </xsl:text>
                <xsl:value-of select="lastName" />
              </td>
              <td>
                <xsl:value-of select="mobile" />
              </td>
			  
              <td>
                <xsl:choose>
                  <xsl:when test="@staffDbId &lt; 0"> 
                    <span style="color:red">
                      <xsl:value-of select="@staffDbId" /> 
                    </span>
                  </xsl:when>

                  <xsl:otherwise>
                    <span style="color:green">
                      <xsl:value-of select="@staffDbId" /> 
                    </span>
                  </xsl:otherwise>
                </xsl:choose> 
              </td>
			  
              <td>
                <xsl:value-of select="@operation" />
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template> 
</xsl:stylesheet>