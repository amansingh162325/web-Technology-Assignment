<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <style>
        table {
          border-collapse: collapse;
          width: 100%;
        }
        th, td {
          border: 1px solid #ddd;
          padding: 8px;
          text-align: left;
        }
        th {
          background-color: #007bff;
          color: white;
        }
      </style>
    </head>
    <body>
      <h2>Restaurant Menu</h2>
      <table>
        <tr>
          <th>Roll No</th>
          <th>Veg</th>
          <th>Cuisine</th>
          <th>Dish Name</th>
          <th>Price</th>
        </tr>
        <xsl:for-each select="MenuCatalog/Menu">
          <tr>
            <td><xsl:value-of select="rollno"/></td>
            <td><xsl:value-of select="veg"/></td>
            <td><xsl:value-of select="cusine"/></td>
            <td><xsl:value-of select="DishName"/></td>
            <td><xsl:value-of select="Price"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
