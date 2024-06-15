<?xml version="1.0" ?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

  <xsl:template match="/exam">
    <html>
      <head> 
        <title>XSLT example</title> 
      </head>
      <body>

  
        <div align="center" style="background-color:#f0371930">

          <h1>
            <xsl:value-of select="@subject" />
            <xsl:text>: </xsl:text>
            <xsl:value-of select="title" /> 
          </h1>

          <font size="6" color="green">
            <xsl:value-of select="venue" /> 
            <br />
            <xsl:value-of select="date" /> 
            <xsl:text>, </xsl:text>
            <xsl:value-of select="time" /> 
          </font>

          <br /> 

          <xsl:value-of select="note" /> 

        </div>

		
      </body>
    </html>
  </xsl:template> 

</xsl:stylesheet>
 