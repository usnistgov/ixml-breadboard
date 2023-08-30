For project sources see https://github.com/OpenC2-org/jadn

Everything here is very much work in progress!

to do
  convert and test EBNF as iXML
  blockers: jwiXML (JL), CoffeePress (NTW)

ideas

- parse JAS in iXML
  - convert to JADN
  - convert to docs (emulate XSLX pathway)
  - convert to Metaschema?
      since Metaschema is weaker, this might be possible?
      or at least we can determine where and where not
    - at any rate, to schema syntaxes
      constraint sets etc etc

current Python tool
  parses input
    converts into JADN from JAS
    converts into JSON Schema from JADN
    example in https://github.com/OpenC2-org/jadn/tree/master/schema
  supports data conversion between notations?
  
  also see https://github.com/ScreamBun/jadn-sandbox/


s, (~["/"|#a|#d] | ("/", ~["*"|#a|#d] ), nnl