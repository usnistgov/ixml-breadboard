<p:declare-step version="3.0"
  xmlns:p="http://www.w3.org/ns/xproc"
  xmlns:c="http://www.w3.org/ns/xproc-step"
  xmlns:cx="http://xmlcalabash.com/ns/extensions"
  xmlns:xi="http://www.w3.org/2001/XInclude"
  exclude-inline-prefixes="cx" name="ixml-basic">
  
  <!-- Demonstrates an Invisible XML parse applied to a static text. -->

  <p:output port="result" serialization="map { 'indent': true(), 'omit-xml-declaration': true() }"/>
  
  <!-- Adapted from https://github.com/nineml/HOWTO/blob/main/xproc-1.0/pipeline.xpl -->
  
  <!--<p:import href="http://xmlcalabash.com/extension/steps/invisible-xml.xpl"/>-->

  <!--<p:input port="grammar">
     <p:document href="../../ixml/punct-text.ixml" content-type="text/plain"/>
  </p:input>-->
   
    
  <p:invisible-xml>
    <!--<p:with-input port="grammar" pipe="grammar@ixml-basic"/>-->
     <p:with-input port="grammar">
        <p:document href="../../ixml/punct-text.ixml" content-type="text/plain"/>
     </p:with-input>
    <p:with-input port="source">
       <p:inline content-type="text/plain">16 December 2024</p:inline>
    </p:with-input>
  </p:invisible-xml>

</p:declare-step>
