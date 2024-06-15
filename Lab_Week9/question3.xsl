<?xml version="1.0"?>
<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:template match="/audit">
        <html>
            <head>
                <title>Question2</title>
                <style>
                    body {
                        padding: 20px;
                        font-size: 20px;
                    }
                    table {
                        border-collapse: collapsed;
                        border: 1px solid black;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 5px;
                    }
                    th {
                        font-weight: bold;
                    }
                    h1 {
                        font-size: 30px;
                        font-weight: bold;
                    }
                </style>
            </head>
            <body>
                <h1><xsl:text>Enrolment Statistics</xsl:text></h1>
                <b><xsl:text>Campus: </xsl:text></b>
                <xsl:value-of select="@campus"/>
                <br/>
                <b><xsl:text>Year: </xsl:text></b>
                <xsl:value-of select="@year"/>
                <br/>
                <b><xsl:text>Session: </xsl:text></b>
                <xsl:value-of select="@session"/>
                <br/>
                <table>
                    <tr>
                        <th><xsl:text>Reference number</xsl:text></th>
                        <th><xsl:text>Subject</xsl:text></th>
                        <th><xsl:text>Enrol</xsl:text></th>
                        <th><xsl:text>Withdrawn</xsl:text></th>
                    </tr>
                    <xsl:for-each select="subject">
                        <tr>
                            <td><xsl:value-of select="@sid"/></td>
                            <td>
                                <xsl:value-of select="code"/>
                                <xsl:text>: </xsl:text>
                                <xsl:value-of select="title"/>
                            </td>
                            <td><xsl:value-of select="statistics/enrol"/></td>
                            <td><xsl:value-of select="statistics/withdrawn"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
