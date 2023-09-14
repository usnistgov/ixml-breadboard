
To compile XSLT into Saxon SEF for delivery to SaxonJS:


```
xslt3 -xsl:ixml-showcase.xsl -export:ixml-showcase.sef.json -nogo -ns:##html5
```

For project sources see https://github.com/OpenC2-org/jadn

Everything here is very much work in progress!

to do
- convert and test EBNF as iXML

ideas

- parse JAS in iXML
  - convert to JADN
  - convert to docs (emulate XSLX pathway)
  - convert to Metaschema?
    - since Metaschema is weaker, this might be possible?
    - or at least we can determine where and where not
    - at any rate, to schema syntaxes
    - constraint sets etc etc
  
Also see https://github.com/ScreamBun/jadn-sandbox/

