<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title> Progetto di Codifica di Testi - La Rassegna Settimanale, Vol. 1, Fascicolo 3</title>
                <link rel="stylesheet" type="text/css" href="style.css" />
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
                <script type="text/javascript" src="script.js"></script>
            </head>

            <body>
                <header>
                    <div class="header">
                        <img src="logo.jpg" alt="La Rassegna Settimanale Logo" />
                    </div>
                    <nav class="menu">
                        <ul>
                            <li class="dropdown">
                                <a href="#info">Il progetto</a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="#rivista">La rivista</a>
                                    </li>
                                    <li>
                                        <a href="#codifica">Codifica</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#vittorio_monumento">Articoli</a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="#articolo1">Il monumento</a>
                                    </li>
                                    <li>
                                        <a href="#articolo2">Letteratura</a>
                                    </li>
                                    <li>
                                        <a href="#bibliografia">Bibliografia</a>
                                    </li>
                                    <li>
                                        <a href="#articolo5">Notizie</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#indice">Indice</a>
                            </li>
                        </ul>
                    </nav>
                </header>

                <div class="title">
                    <h1>
                        <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title" />
                    </h1>
                </div>

                <div id="rivista">                    
                    <xsl:apply-templates select="//tei:sourceDesc" />
                </div>

                <div id="codifica">                    
                    <xsl:apply-templates select="//tei:encodingDesc" />
                </div>

                <div class="legenda">
                    <div id="bottonilegenda">
                        <button type="button" id="persone">Persone</button>
                        <button type="button" id="opere">Opere</button>
                        <button type="button" id="place">Luoghi</button>
                        <button type="button" id="date">Date</button>
                        <button type="button" id="org">Organizzazioni</button>
                        <button type="button" id="verismo">Temi del Verismo</button>
                        <button type="button" id="quote">Citazioni</button>
                        <button type="button" id="abbr">Abbreviazioni</button>
                    </div>
                </div>

                <!--ARTICOLI-->

                <div id="articolo1">
                    <h2>Pagine 34 e 35</h2>
                    <div class="flex_box">
                        <h2>
                            <xsl:value-of select="//tei:text/tei:body/tei:div[@xml:id='div_pag34']/tei:head[@xml:id='head1']" />
                        </h2>
                        <h3>
                            <xsl:value-of select="//tei:text/tei:body/tei:div[@xml:id='div_pag34']/tei:head[@xml:id='head2']" />
                        </h3>
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pag34']" />
                            <xsl:apply-templates select="//tei:surface[@xml:id='pag35']" />
                        </div>
                        <div id="vittorio_monumento">
                            <xsl:apply-templates select="//tei:text/tei:body/tei:div[@xml:id='div_pag34']" />
                        </div>
                    </div>
                </div>

                <div id="articolo2">
                    <h2>Pagine 43, 44, 45</h2>
                    <div class="flex_box">
                        <h2>
                            <xsl:value-of select="//tei:text/tei:body/tei:div[@xml:id='div_pag43']/tei:head" />
                        </h2>
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pag43']" />
                            <xsl:apply-templates select="//tei:surface[@xml:id='pag44']" />
                            <xsl:apply-templates select="//tei:surface[@xml:id='pag45']" />
                        </div>
                        <div id="lett_dramm">
                            <xsl:apply-templates select="//tei:text/tei:body/tei:div[@xml:id='div_pag43']" />
                        </div>
                    </div>
                </div>

                <div id="bibliografia">
                    <div id="articolo3">
                        <h2>
                        Pagina 46
                        </h2>
                        <div class="flex_box">
                            <h2>
                                <xsl:value-of select="//tei:text/tei:body/tei:div[@xml:id='div_giuridiche']/tei:head" />
                            </h2>
                            <div class="img">
                                <xsl:apply-templates select="//tei:surface[@xml:id='pag46']" />
                            </div>
                            <div id="giuridiche">
                                <xsl:apply-templates select="//tei:text/tei:body/tei:div[@xml:id='div_giuridiche']" />
                            </div>
                        </div>
                    </div>
                    <div id="articolo4">
                        <div class="flex_box">
                            <h2>
                                <xsl:value-of select="//tei:text/tei:body/tei:div[@xml:id='div_economiche']/tei:head" />
                            </h2>
                            <div id="economiche">
                                <xsl:apply-templates select="//tei:text/tei:body/tei:div[@xml:id='div_economiche']" />
                            </div>
                        </div>
                    </div>
                </div>

                <div id="articolo5">
                    <h2>Pagina 48</h2>
                    <div class="flex_box">
                        <h2>
                            <xsl:value-of select="//tei:text/tei:body/tei:div[@xml:id='div_notizie']/tei:head" />
                        </h2>
                        <div class="img">
                            <xsl:apply-templates select="//tei:surface[@xml:id='pag48']" />
                        </div>
                        <div id="notizie">
                            <xsl:apply-templates select="//tei:text/tei:body/tei:div[@xml:id='div_notizie']" />
                        </div>
                    </div>
                </div>

                <!--INDICE-->
                <div id="indice">
                    <h2>Indice</h2>
                    <div id="glossario" class="list_flex">
                        <xsl:apply-templates select="//tei:text/tei:back/tei:list[@type='temi']"/>
                    </div>
                    <div id="listPerson" class="list_flex">
                        <xsl:apply-templates select="//tei:text/tei:back/tei:listPerson"/>
                    </div>
                    <div id="listOrg" class="list_flex">
                        <xsl:apply-templates select="//tei:text/tei:back/tei:listOrg"/>
                    </div>
                    <div id="listPlace" class="list_flex">
                        <xsl:apply-templates select="//tei:text/tei:back/tei:listPlace"/>
                    </div>
                    <div id="listBibl" class="list_flex">
                        <xsl:apply-templates select="//tei:text/tei:back/tei:listBibl"/>
                    </div>
                </div>


                <footer id="footer">
                    <p>
                        <xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt"/>
                    </p>
                    <p>
                        <xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt"/>
                    </p>
                </footer>
            </body>
        </html>
    </xsl:template>



    <!--  TEMPLATE   -->

    <!--LA RIVISTA-->

    <xsl:template match="tei:sourceDesc">
        <div>
            <h2>La Rivista</h2>
            <div>
                <h3>Titolo:</h3>
                <p>
                    <xsl:value-of select="tei:bibl/tei:title"/>
                </p>
            </div>
            <div>
                <h3>Editore:</h3>
                <p>
                    <xsl:value-of select="tei:bibl/tei:publisher"/>
                </p>
            </div>
            <div>
                <h3>Luogo:</h3>
                <p>
                    <xsl:value-of select="tei:bibl/tei:pubPlace"/>
                </p>
            </div>
            <div>
                <h3>Data:</h3>
                <p>
                    <xsl:value-of select="//tei:bibl/tei:date" />
                </p>
            </div>
            <div>
                <h3>Fondatori:</h3>
                <p>
                    <xsl:value-of select="tei:bibl/tei:editor"/>
                </p>
            </div>
            <div>
                <h3>Info:</h3>
                <p>
                    <xsl:value-of select="//tei:bibl/tei:note" />
                </p>
            </div>
        </div>
    </xsl:template>

    <!--LA CODIFICA-->

    <xsl:template match="tei:encodingDesc">
        <div>
            <h2>La Codifica</h2>
            <div>
                <h3>Il progetto:</h3>
                <p>
                    <xsl:value-of select="tei:projectDesc/tei:p"/>
                </p>
            </div>
            <div>
                <h3>Normalizzazioni:</h3>
                <p>
                    <xsl:value-of select="tei:editorialDecl/tei:normalization"/>
                </p>
            </div>
            <div>
                <h3>Sillabazione:</h3>
                <p>
                    <xsl:value-of select="tei:editorialDecl/tei:hyphenation"/>
                </p>
            </div>
            <div>
                <h3>Campioni codificati:</h3>
                <p>
                    <xsl:value-of select="//tei:samplingDecl/tei:p" />
                </p>
            </div>
        </div>
    </xsl:template>


    <!--IMMAGINI-->
    <xsl:template match="tei:surface">
        <xsl:element name="img">
            <xsl:attribute name="src">
                <xsl:value-of select="tei:graphic/@url" />
            </xsl:attribute>
            <xsl:attribute name="class">facsimile</xsl:attribute>
            <xsl:attribute name="usemap">#<xsl:value-of select="@xml:id"/>
            </xsl:attribute>
            <xsl:attribute name="alt">Immagine <xsl:value-of select="@xml:id"/>
            </xsl:attribute>
        </xsl:element>

        <xsl:element name="map">            
            <xsl:attribute name="name">
                <xsl:value-of select="@xml:id"/>
            </xsl:attribute>
            <xsl:for-each select="tei:zone">
                <xsl:element name="area">
                    <xsl:attribute name="id">
                        <xsl:value-of select="@xml:id"/>
                    </xsl:attribute>
                    <xsl:attribute name="coords">
                        <xsl:value-of select="@ulx"/>
,                        <xsl:value-of select="@uly"/>
,                        <xsl:value-of select="@lrx"/>
,                        <xsl:value-of select="@lry"/>
                    </xsl:attribute>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
    

    <!-- lb -->
    <xsl:template match="tei:lb">
        <div class="line">
            <xsl:apply-templates />
        </div>
    </xsl:template>
    

    <!--GLOSSARIO-->
    <xsl:template match="/tei:TEI//tei:back/tei:list[@type='temi']">
        <div id="gloss">
            <h3>Glossario dei temi veristi:</h3>
            <xsl:for-each select="tei:label">
                <div>
                    <h3 class="second-style">
                        <xsl:value-of select="tei:term"/>
                    </h3>
                    <p>
                        <xsl:value-of select="following-sibling::tei:item[1]/tei:gloss"/>
                    </p>
                </div>
            </xsl:for-each>
        </div>
    </xsl:template>

    <!--ListPerson-->
    <xsl:template match="//tei:listPerson">
        <div id="listPerson">
            <h3>Elenco delle persone citate:</h3>
            <xsl:for-each select="tei:person">
                <div>
                    <h3 class="persName">
                        <a href="{tei:persName/tei:ref/@target}">
                            <xsl:choose>
                                <xsl:when test="tei:persName/tei:forename">
                                    <xsl:value-of select="tei:persName/tei:forename[1]"/>
                                    <xsl:text></xsl:text>
                                    <xsl:if test="tei:persName/tei:forename[2]">
                                        <xsl:value-of select="tei:persName/tei:forename[2]"/>
                                        <xsl:text></xsl:text>
                                    </xsl:if>
                                </xsl:when>
                                <xsl:when test="tei:persName/tei:roleName">
                                    <xsl:value-of select="tei:persName/tei:roleName"/>
                                    <xsl:text></xsl:text>
                                </xsl:when>
                            </xsl:choose>
                            <xsl:if test="tei:persName/tei:surname">
                                <xsl:value-of select="tei:persName/tei:surname"/>
                            </xsl:if>
                        </a>
                    </h3>
                    <p>
                        <xsl:if test="tei:birth">
                       Nascita: <xsl:value-of select="tei:birth/tei:placeName"/>
, 
                        <xsl:value-of select="tei:birth/tei:date"/>
                        <br/>
                    </xsl:if>
                    <xsl:if test="tei:death">
                       Morte: <xsl:value-of select="tei:death/tei:placeName"/>
, 
                    <xsl:value-of select="tei:death/tei:date"/>
                </xsl:if>
            </p>
        </div>
    </xsl:for-each>
</div>
</xsl:template>

<!--ListPlace-->
    <xsl:template match="//tei:listPlace">
    <div class="place">
        <h3>Elenco dei luoghi citati:</h3>
        <ul>
            <xsl:for-each select="tei:place">
                <li>
                    <strong>
                        <xsl:value-of select="tei:placeName"/>
                    </strong>
                    <xsl:if test="tei:bloc">
                        - Continente: <xsl:value-of select="tei:bloc"/>
                    </xsl:if>
                    <xsl:if test="tei:location/tei:country">
                        - Paese: <xsl:value-of select="tei:location/tei:country"/>
                    </xsl:if>
                </li>
            </xsl:for-each>
        </ul>
    </div>
</xsl:template>

<!--ListOrg-->
<xsl:template match="//tei:listOrg">
    <div class="org">
        <xsl:apply-templates select="tei:head"/>
        <ul>
            <xsl:for-each select="tei:org">
                <li>
                    <a href="{tei:orgName/tei:ref/@target}">
                        <xsl:value-of select="tei:orgName/text()"/>
                    </a>
                </li>
            </xsl:for-each>
        </ul>
    </div>
</xsl:template>

<!--ListBibl-->
<xsl:template match="//tei:listBibl">
    <div class="bibliography">
        <xsl:apply-templates select="tei:head"/>
        <ul>
            <xsl:for-each select="tei:bibl">
                <li>
                    <xsl:value-of select="tei:author/tei:forename"/>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="tei:author/tei:surname"/>,
                    <xsl:text> </xsl:text>
                    <i><xsl:value-of select="tei:title"/></i>,
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="tei:date"/>
                </li>
            </xsl:for-each>
        </ul>
    </div>
</xsl:template>

<xsl:template match="tei:choice">
    <span class="choice">
        <span class="abbr">
            <xsl:apply-templates select="tei:abbr"/>
        </span>
        <span class="expan">
            <xsl:apply-templates select="tei:expan"/>
        </span>
    </span>
</xsl:template>

<!-- Luoghi -->
<xsl:template match="tei:placeName">
<span class="placeName">
    <xsl:apply-templates />
</span>
</xsl:template>

<!-- Persone -->
<xsl:template match="tei:persName">
<span class="persName">
    <xsl:apply-templates />
</span>
</xsl:template>

<!-- Opere -->
<xsl:template match="tei:bibl">
<span class="bibl">
    <xsl:apply-templates />
</span>
</xsl:template>

<!-- Organizzazioni -->
<xsl:template match="tei:orgName">
<span class="orgName">
    <xsl:apply-templates />
</span>
</xsl:template>

<!--Date-->
<xsl:template match="tei:date">
<span class="date">
    <xsl:apply-templates />
</span>
</xsl:template>

<!--Verismo-->
<xsl:template match="tei:term">
<span class="term" title="Termine">
    <xsl:apply-templates/>
</span>
</xsl:template>

<!--Citazioni-->
<xsl:template match="tei:quote">
<xsl:element name="span">
    <xsl:attribute name="class">cit</xsl:attribute>
    <xsl:apply-templates />
</xsl:element>
</xsl:template>

<!--Abbreviazioni-->
<xsl:template match="tei:abbr">
<xsl:element name="span">
    <xsl:attribute name="class">abbr</xsl:attribute>
    <xsl:apply-templates />
</xsl:element>
</xsl:template>





</xsl:stylesheet>