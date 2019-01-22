<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="students">
        <html>
            <head>
                <title>XSLT Transform</title>
            </head>
            <body>
                <table border="1">
                    <tr><th>First</th><th>Last</th><th>Points</th><th>Letter</th></tr>
                    <xsl:apply-templates/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="student">
        <tr>
            <td><xsl:value-of select="name/first"/></td>
            <td><xsl:value-of select="name/last"/></td>
            <td><xsl:value-of select="grade/points"/></td>
            <td><xsl:value-of select="grade/letter"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>