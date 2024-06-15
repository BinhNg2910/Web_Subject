<?xml version="1.0"?>
<xsl:stylesheet
    version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml" index="yes" encoding="UTF-8"/>
    <xsl:template match="/report">
        <html>
            <head>
                <title>Assignment 4 - Question 1 - Task 2</title>
            </head>
            <style>
                body {
                    padding: 20px;
                    font-size: 20px;
                }
            </style>
            <body>
                <h1>
                    <xsl:text>Login Report </xsl:text>
                    <xsl:value-of select="@date"/>
                </h1>
                <br/>
                <b>
                    <xsl:text>Device name: </xsl:text>
                </b>
                <xsl:value-of select="device_name"/>
                <br/><br/>
                <xsl:for-each select="user">
                    <b>
                        <xsl:text>Username: </xsl:text>
                    </b>
                    <xsl:value-of select="@username"/>
                    <br/>
                    <b>
                        <xsl:text>Name: </xsl:text>
                    </b>
                    <xsl:value-of select="name"/>
                    <br/>
                    <b>
                        <xsl:text>Group: </xsl:text>
                    </b>
                    <xsl:value-of select="group"/>
                    <br/>
                    <b>
                        <xsl:text>Login: </xsl:text>
                    </b>
                    <ul>
                        <xsl:for-each select="login">
                            <li>
                                <xsl:value-of select="time"/>
                                <xsl:text>: </xsl:text>
                                <xsl:value-of select="status"/>
                            </li>
                        </xsl:for-each>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>