# NGAC XSLT Workbench

**Policy machine** reference implementation: https://github.com/PM-Master

ANTLR grammar found here: https://github.com/PM-Master/policy-machine-core/blob/master/src/main/java/gov/nist/csd/pm/policy/pml/antlr/PML.g4

In this directory:

- `PML.g4` - ANTLR grammar provided by PM project for PML
- `ngac-pml.ixml` - An iXML grammar based on the ANTLR grammar - cast and refined by hand
- `PM-exampleA-ngac.txt` an example of a PML instance for testing - see [PM repo](https://github.com/PM-Master/policy-machine-core/tree/master/pml)

## To try the web demo

A web demo can be served locally as if it were [on a public site](https://pages.nist.gov/ixml-breadboard/ixml/ngac/index.html), which it is not (at time of writing).

The bare application does nothing with PML beyond parse it and display the parse tree. It is stable until we can define and prioritize next steps - let us know!

### To serve the web demo locally

For development and testing, serving the application locally is useful and easy.

From a command line, start a web server from this directory or from the project directory as noted in the project [README](../../README.md). For Node.JS, with `http-server` installed:

```
$ http-server
```

With the server running, open a browser to [localhost port 8080](http://localhost:8080/index.html). It will display the landing page in the directory at the root of the web server.

This will either be the NGAC demo page (for a web server started in this directory), or (from anothe page) there will be a way to navigate to it.

## Ideas for further development

Given a parser that correctly interprets PML, all these should be "merely" XSLT - TBD -

- syntax highlighting
- validating
- application logic
- XACML interfacing (production/conversion)


## Mapping - ANTLR to iXML

`PML.g4` is an ANTLR grammar. Casting it into iXML entailed the following:

- switch to periods delimiting declarations and commas within rhs
- reworking character handling (from other models)
- factoring out variable assignments (`=` notation)
- reworking whitespace
- rework `-> skip`

Example

```ANTLR
createAttributeStatement:
    CREATE (OBJECT_ATTRIBUTE | USER_ATTRIBUTE) name=expression IN parents=expression ;
```

```
createAttributeStatement:
    CREATE, RS, (OBJECT_ATTRIBUTE | USER_ATTRIBUTE), RS, {name=}expression, RS, IN, RS, {parents=}expression .
```

where `RS` is required whitespace.


