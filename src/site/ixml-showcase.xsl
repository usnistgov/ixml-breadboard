<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:ixsl="http://saxonica.com/ns/interactiveXSLT"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map" extension-element-prefixes="ixsl"
    xmlns:jwL="https://github.com/johnlumley"
   exclude-result-prefixes="#all" xmlns:svg="http://www.w3.org/2000/svg">

    <xsl:output indent="yes"/>

    <xsl:include href="../../lib/jwiXML/dist/jwiXML.processor.xsl"/>
    
    
    <xsl:variable name="indented-serialization" as="element()">
        <output:serialization-parameters
            xmlns:output="http://www.w3.org/2010/xslt-xquery-serialization">
            <output:indent value="true"/>
        </output:serialization-parameters>
    </xsl:variable>

    <!--entry points: template 'incipit' is a no-op; it loads the XSLT to permit bindings for UI -->

    <xsl:template name="ixml-process">
        <xsl:param name="grammar">a: " ".</xsl:param>
        <xsl:param name="literal">test line</xsl:param>
        <xsl:variable name="compiledGrammar" as="item()" select="jwL:compileGrammar($grammar)"/>
        <xsl:variable name="parsedInput" as="map(*)" select="jwL:parse($compiledGrammar,$literal)"/>
        <!--<xsl:variable name="parsedInput">
            <xsl:for-each select="$literal => tokenize('\n')">
                <line no="{ position() }" yes="no">
                    <xsl:value-of select="."/>
                </line>
            </xsl:for-each>
        </xsl:variable>-->
        
        <xsl:result-document href="#displayFrame" method="ixsl:replace-content">
            <details id="boxDisplay" class="boxed" open="open">
                <summary>Structural view</summary>
                <pre>
                   <xsl:apply-templates select="$parsedInput?tree" mode="outline"/>
                </pre>
            </details>
            
        </xsl:result-document>

        <xsl:result-document href="#markupDisplay" method="ixsl:replace-content">
            <details id="markupDump" class="boxed">
                <summary>(XML, made visible)</summary>
                <pre>
                  <xsl:sequence select="$parsedInput?tree => serialize($indented-serialization)"/>
                </pre>
            </details>
        </xsl:result-document>
    </xsl:template>

    <xsl:template match="*" mode="outline" expand-text="true">
        <div class="outline">
            <div class="oll">{ name() }</div>
            <div class="olc">
                <xsl:for-each-group select="@*" group-by="true()">
                    <div class="ola">
                      <xsl:apply-templates mode="outline" select="current-group()"/>
                    </div>
                </xsl:for-each-group>
                <xsl:apply-templates mode="outline"/>
            </div>
        </div>
    </xsl:template>
    
    <xsl:template match="@*" mode="outline" expand-text="true">
        <div class="ola">
            <div class="oll"><span>{ name() }</span></div>
            <div class="olt">{ normalize-space(.) }</div>
        </div>
    </xsl:template>
    
    <xsl:template match="text()" mode="outline" expand-text="true">
        <!-- <div class="olt" style="width: { normalize-space(.) ! string-length(.) }; flex-basis: { normalize-space(.) ! string-length(.) }">&#xA0;</div> -->
        <div class="olt">{ string(.) }</div>
    </xsl:template>
    
    
</xsl:stylesheet>
