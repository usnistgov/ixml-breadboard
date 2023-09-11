<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:err="http://www.w3.org/2005/xqt-errors"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" 
    xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:ixsl="http://saxonica.com/ns/interactiveXSLT"
    xmlns:saxon="http://saxon.sf.net/" xmlns:js="http://saxonica.com/ns/globalJS"
    xmlns:doc="http://www.saxonica.com/ns/documentation" 
    xmlns:ixml="http://invisiblexml.org/NS"
    xmlns:jwL="https://github.com/johnlumley"
    exclude-result-prefixes="xs js doc math map saxon   ixsl " version="3.0"
    expand-text="yes" xmlns="http://www.w3.org/1999/xhtml">

    <xsl:include href="../dist/jwiXML.processor.xsl"/>

    <xsl:variable name="test.grammar" as="xs:string"> S: ws, "a", ws. ws: [#a;#d;" ";#9]*. </xsl:variable>
    <xsl:variable name="test.input" as="xs:string"> a </xsl:variable>

    <xsl:template name="go" visibility="public" xmlns="">
        <xsl:variable name="grammar" as="item()" select="jwL:compileGrammar($test.grammar)"/>
        <xsl:variable name="result" as="map(*)" select="jwL:parse($grammar, $test.input)"/>
        <xsl:result-document href="#sandpit" method="ixsl:replace-content">
            <h4>Grammar:</h4>
            <pre>{$test.grammar}</pre>
            <h4>Input:</h4>
            <pre>{$test.input}</pre>
            <h4>Result:</h4>
            <pre>{serialize($result?tree)}</pre>
        </xsl:result-document>
    </xsl:template>

</xsl:stylesheet>
