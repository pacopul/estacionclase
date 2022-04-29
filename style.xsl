<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        <html lang="en">
            
            <head>
                <title>Estación</title>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
                
                <!-- Bootstrap CSS -->
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
            </head>
            
            <body>
                <div class="container shadow p-0">
                    <nav class="navbar navbar-expand-md navbar-light bg-light">
                        <a class="navbar-brand" href="#"><img src="img/logo.png" alt="logo" /></a>
                        <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse"
                                data-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                                aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="collapsibleNavId">
                            <ul class="navbar-nav mx-auto mt-2 mt-lg-0">
                                
                                <li class="nav-item">
                                    <button class="nav-link btn btn-primary text-white" onclick="document.getElementById('llegadas').style.display='block';document.getElementById('salidas').style.display='none';">Llegadas</button>
                                </li>
                                <li class="nav-item">
                                    <button class="nav-link btn btn-primary text-white ml-3" onclick="document.getElementById('llegadas').style.display='none';document.getElementById('salidas').style.display='block';">Salidas</button>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <header class="bg-light text-primary py-2 text-center">
                        <h2><xsl:value-of select="estacion/@nombre"/> - <xsl:value-of select="estacion/fuente"/></h2>
                    </header>
                    <div id="llegadas">
                        <h3 class="text-center text-white bg-primary">Llegadas</h3>
                        <div class="row justify-content-center">
                            <xsl:for-each select="estacion/llegada">
                                <div class="col-lg-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">
                                                    <img class="card-img-top" src="https://www.adif.es/documents/{origen/imagen}" alt=""/>
                                                </div>
                                                <div class="col">
                                                    <h5 class="card-title"><xsl:value-of select="hora"/></h5>
                                                    <h4><xsl:value-of select="origen/@estacion"/></h4>
                                                    <h6>Tren: <xsl:value-of select="tren/@codigo"/> - <xsl:value-of select="tren"/></h6>
                                                    <h6>Via: <xsl:value-of select="via"/></h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </xsl:for-each>
                        </div>
                    </div>
                    <div style="display:none" id="salidas">
                        <h3 class="text-center text-white bg-primary">Salidas</h3>
                        <div class="row justify-content-center">
                            <xsl:for-each select="estacion/salida">
                                <div class="col-lg-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">
                                                    <img class="card-img-top" src="https://www.adif.es/documents/{destino/imagen}" alt=""/>
                                                </div>
                                                <div class="col">
                                                    <h5 class="card-title"><xsl:value-of select="hora"/></h5>
                                                    <h4><xsl:value-of select="destino/@estacion"/></h4>
                                                    <h6>Tren: <xsl:value-of select="tren/@codigo"/> - <xsl:value-of select="tren"/></h6>
                                                    <h6>Via: <xsl:value-of select="via"/></h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </xsl:for-each>
                        </div>
                    </div>
                    
                </div>
                <!-- Optional JavaScript -->
                <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                        crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
                        crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
                        crossorigin="anonymous"></script>
            </body>
            
        </html>
    </xsl:template>
</xsl:stylesheet>