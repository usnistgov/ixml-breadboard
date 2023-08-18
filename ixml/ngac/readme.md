# NGAC XSLT Workbench

**Policy machine** reference implementation: https://github.com/PM-Master

ANTLR grammar found here: https://github.com/PM-Master/policy-machine-core/blob/master/src/main/java/gov/nist/csd/pm/policy/pml/antlr/PML.g4

In this directory:

- `PML.g4` - ANTLR grammar provided by PM project for PML
- `ngac-pml.ixml` - An iXML grammar based on the ANTLR grammar - cast and refined by hand
- `PM-exampleA-ngac.txt` an example of a PML instance for testing - see [PM repo](https://github.com/PM-Master/policy-machine-core/tree/master/pml)

# Plans

NGAC CSX / SaxonJS application
  uses jwiXML and SaxonJS to render PML in the browser
  does useful things with it?
    - validate instances
    - process information

next steps
  -- validate PML parse?
     -- find a way to unit test?
     -- exporting JS into an SEF then batching SaxonJS calls?
  -- process in a meaningful way?
     PML NGAC function library?
  -- convert into XACML?


