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
        <xsl:value-of select="@date" /> <br /><br />

        <xsl:for-each select="person">

          <xsl:value-of select="firstName" /> 
          <br />

          <xsl:value-of select="lastName" />
          <br />

          <xsl:value-of select="mobile" />
          <br />

          <xsl:value-of select="@staffDbId" />
          <br /> 

          <xsl:value-of select="@operation" />
          <br />
          <br />

        </xsl:for-each>

		
      </body>
    </html>
  </xsl:template> 
</xsl:stylesheet>
 