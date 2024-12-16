<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" version="3.0"
                xmlns:c="http://www.w3.org/ns/xproc-step"
                xmlns:cx="http://xmlcalabash.com/ns/extensions"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xs="http://www.w3.org/2001/XMLSchema"
        xmlns:cs="http://nineml.com/ns/coffeesacks"
                exclude-inline-prefixes="cx"
                name="main">

<!-- Requires extending Saxon inside XProc to support the CoffeeSacks function library -
     how do we do this?
      
     This is done with -init:org.nineml.coffeesacks.RegisterCoffeeSacks when calling Saxon

-->


   <p:output port="result" serialization="map { 'indent': true(), 'omit-xml-declaration': true() }"/>
   
   
  <p:input port="source">
    <p:inline><doc/></p:inline>
  </p:input>
  
  <p:xslt name="offwego">
    <p:with-input port="stylesheet">
      <p:inline>
      <xsl:stylesheet
        exclude-result-prefixes="#all"
        version="3.0">
        
        <xsl:output method="xml" encoding="utf-8" indent="yes" omit-xml-declaration="yes"/>
        
        <xsl:mode on-no-match="shallow-copy"/>
        
        <xsl:template name="xsl:initial-template">
          <xsl:variable name="parser" select="cs:load-grammar('../../ixml/tiny.ixml')"/>
          <doc>
            <xsl:sequence select="$parser('what have you')"/>
          </doc>
        </xsl:template>
        
      </xsl:stylesheet>
      </p:inline>
    </p:with-input>
  </p:xslt>
  
</p:declare-step>
