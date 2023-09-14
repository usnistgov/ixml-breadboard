<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:cs="http://nineml.com/ns/coffeesacks"
  exclude-result-prefixes="#all" version="3.0">

  <!--
    
    CoffeeSacks demo XSLT
    Adapted from https://github.com/nineml/HOWTO/blob/main/saxon/style/dates.xsl
  -->

  <xsl:output method="xml" encoding="utf-8" indent="yes" omit-xml-declaration="yes"/>

  <xsl:mode on-no-match="shallow-copy"/>

  <xsl:param name="grammarPath" as="xs:string">../../ixml/tiny.ixml</xsl:param>

  <xsl:template name="xsl:initial-template">
    <xsl:variable name="parser" select="cs:load-grammar($grammarPath)"/>
    <doc>
      <xsl:sequence select="$parser('15 February 2022')"/>
    </doc>
  </xsl:template>

</xsl:stylesheet>
