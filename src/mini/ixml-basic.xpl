<p:declare-step version="1.0"
  xmlns:p="http://www.w3.org/ns/xproc"
  xmlns:c="http://www.w3.org/ns/xproc-step"
  xmlns:cx="http://xmlcalabash.com/ns/extensions"
  xmlns:xi="http://www.w3.org/2001/XInclude"
  exclude-inline-prefixes="cx" name="ixml-basic">
  
  <!-- Demonstrates an Invisible XML parse applied to a static text. -->

  <p:output port="result"/>
  <p:input port="parameters" kind="parameter"/>
  <p:serialization port="result" indent="true"/>

  <!-- Adapted from https://github.com/nineml/HOWTO/blob/main/xproc-1.0/pipeline.xpl -->
  
  <p:import href="http://xmlcalabash.com/extension/steps/invisible-xml.xpl"/>

  <!-- First we XInclude the grammar into XML since XProc 1.0 doesn't do well with plain text -->
  <p:xinclude name="grammar">
    <p:input port="source">
      <p:inline>
        <grammar>
          <xi:include href="../../ixml/punct-text.ixml" parse="text"/>
        </grammar>
      </p:inline>
    </p:input>
  </p:xinclude>

  <cx:invisible-xml>
    <p:input port="grammar">
      <p:pipe port="result" step="grammar"/>
    </p:input>
    <p:input port="source">
      <p:inline><doc>15 February 2022</doc></p:inline>
    </p:input>
  </cx:invisible-xml>

</p:declare-step>
