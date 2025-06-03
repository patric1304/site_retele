<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    version="1.0">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Întrebări frecvente - Școala de Ski</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f9fff9;
            margin: 40px;
            color: #014421;
          }
          h1 {
            text-align: center;
            color: #014421;
          }
          .intrebare {
            background-color: #e6f2e6;
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 10px;
            box-shadow: 0 0 8px rgba(0,0,0,0.1);
          }
          .categorie {
            font-size: 0.9em;
            color: #198754;
          }
        </style>
      </head>
      <body>
        <h1>Întrebări frecvente</h1>
        <xsl:for-each select="intrebari/intrebare">
          <div class="intrebare">
            <div class="categorie">
              Categorie: <xsl:value-of select="@categorie"/>
            </div>
            <h3><xsl:value-of select="enunt"/></h3>
            <p><xsl:value-of select="raspuns"/></p>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
