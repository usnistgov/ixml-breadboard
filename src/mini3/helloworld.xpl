<p:declare-step version="3.0"
  xmlns:p="http://www.w3.org/ns/xproc"
  name="hello-world">
  
  <!-- Demonstrates an Invisible XML parse applied to a static text. -->

  <p:output port="result" serialization="map { 'indent': true(), 'omit-xml-declaration': true() }"/>
   
  <p:identity>
     <p:with-input>
       <p:inline><GREETING>Hello, World!</GREETING></p:inline>
     </p:with-input>
  </p:identity>
  
</p:declare-step>
