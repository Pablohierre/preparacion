<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

   
    <xsl:template match="/">
        <html>
            <style>
            table{
              font-family: 'Krona One', sans-serif; 
              background-color:white; 
                }
            th{font-size:1.15em;
                }
            td{text-align:center;
                height:30;
                width:100;
                }
            header{
                height:100px;
                width:100%;
                background-color:#03dffc;
                color:white;
                font-family: 'Krona One', sans-serif;
                font-size:1.25em; 
                }
            body{background-color:#facd96;
                }
            footer{
                height:100px;
                width:100%;
                background-color:#03dffc;
                color:white;
                }
             h1{
              text-align:center;
                }
             p{text-align:center;
                ]
            </style>
            <head>
                <title>PracticaXMLIII.xsl</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous"></link>
            </head>
            <body>
                <header>
                    <h1>Listado de Videojuegos</h1>
                    <p>by Pablo Hierrezuelo</p>
                </header>
                <br></br>
                <table class="table table-striped table-hover table-bordered">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Descripcion</th>
                            <th>Anyo</th>
                            <th>Fabricante</th>
                            <th>Ejecutable</th>
                            <th>Estado del driver</th>
                            <th>Tipo de display</th>
                            <th>Orientacion</th>
                            <th>Archivo fuente</th>
                       </tr>
                       </thead>
                       <tbody>
                           <xsl:for-each select="mame/arcade">
                           <xsl:sort select="year" order="Descending"/>
                          <xsl:if test="is_runnable='YES'">
                               <tr>
                                   <td><xsl:value-of select="name"/></td>
                                   <td><xsl:value-of select="description"/></td>
                                   <td><xsl:value-of select="year"/></td>
                                   <td><xsl:value-of select="manufacturer"/></td>
                                   <td><xsl:value-of select="is_runnable"/></td>
                                   <xsl:if test="driver_status='INCOMPLETO'">
                                        <td style="background-color:orange"><xsl:value-of select="driver_status"/></td>
                                   </xsl:if>
                                   <xsl:if test="driver_status!='INCOMPLETO'">
                                        <td><xsl:value-of select="driver_status"/></td>
                                   </xsl:if>
                                   <td><xsl:value-of select="display_type"/></td>
                                   <td><xsl:value-of select="display_orientation"/></td>
                                   <td><xsl:value-of select="sourcefile"/></td>
                               </tr>
                           </xsl:if>
                           </xsl:for-each>
                       </tbody>
                   
                </table>
                <footer>
                    <p>By Pablo Hierrezuelo</p>
                </footer>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
