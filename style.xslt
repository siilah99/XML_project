<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Microblogging Posts</title>
      </head>
      <body>
        <h2>User: <xsl:value-of select="/microblogging/user/name"/></h2>
        <h3>Posts:</h3>
        <ul>
          <xsl:for-each select="/microblogging/posts/post">
            <li>
              <xsl:value-of select="author"/> - <xsl:value-of select="date"/>
              <p><xsl:value-of select="content"/></p>
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
