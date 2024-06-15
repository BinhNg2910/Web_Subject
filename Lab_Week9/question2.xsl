<?xml version="1.0"?>
<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    <xsl:template match="/result">
        <html>
            <head>
                <title>Result</title>
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
                        border: 1px dashed grey;
                        padding: 10px;
                    }
                    th {
                        font-weight: bold;
                    }
                    td {
                        color: maroon;
                    }
                </style>
            </head>
            <body>
                <table>
                    <tr>
                        <th><xsl:text>Reference number</xsl:text></th>
                        <td><xsl:value-of select="@ref"/></td>
                    </tr>
                    <tr>
                        <th><xsl:text>Exam number</xsl:text></th>
                        <td><xsl:value-of select="examId"/></td>
                    </tr>
                    <tr>
                        <th><xsl:text>Contestant number</xsl:text></th>
                        <td><xsl:value-of select="contestantId"/></td>
                    </tr>
                    <tr>
                        <th><xsl:text>Digital signature</xsl:text></th>
                        <td><xsl:value-of select="digitalSignature"/></td>
                    </tr>
                    <tr>
                        <th><xsl:text>Score</xsl:text></th>
                        <td><xsl:value-of select="score"/></td>
                    </tr>
                    <tr>
                        <th><xsl:text>Band</xsl:text></th>
                        <td><xsl:value-of select="band"/></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
