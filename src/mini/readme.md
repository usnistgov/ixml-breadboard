# XML Breadboard Mini - an iXML setup/pattern

Now in XProc 1.0 for XML Calabash

Soon for XProc 3.0 for Morgana and others?

## punchlist

Execution script for mini demo using Saxon under Maven

iXML in XSpec support? under Maven would be ideal
  XProc configuration requires Saxon/iXML setup
  

## NineML library resources

This demo builds on [NineML](https://nineml.org/), a software suite supporting [Invisible XML](https://invisiblexml.org) functionality in Java by Norm Tovey-Walsh, licensed as open source. Mr Tovey-Walsh bears no responsibility for any of the applications on this site or for iXML Breadboard. When building your own software refer to the sources:

https://github.com/nineml/

Note: at present, this distribution relies on copying `.jar` files. Eventually these will be removed in favor of Maven.

The models we are following are here:
  - https://github.com/nineml/HOWTO/tree/main/xproc-1.0 
  - https://github.com/nineml/HOWTO/tree/main/saxon 

Each of these provides a starter installation including a script for downloading dependencies and a script supporting a local runtime. These provided the models for the scripts, pipelines and resources here.

A script is also provided for downloading the main NineML libraries (`jar` files). To avoid overhead these files have also been listed in `.gitignore`, and should not be committed to git.

## To install and test

Using a `bash` shell with `curl`, `unzip` and `java` installed and available

- Open a CLI in the `src/mini` directory
- Run `./download-jars.sh` script, if needed
- Test XProc pipeline with `./test-xproc.sh` (or other shell script)
- Test Saxon runtime with `./test-saxon.sh`

## Dev / to do:

- Scripts:
  x XProc reading iXML as input
  x XSLT running Saxon with iXML  https://github.com/nineml/HOWTO/tree/main/saxon
  o Processing ixml inside Saxon inside XProc -- see [invisible-saxon.xpl](invisible-saxon.xpl) for a starter
- Rework for Maven without prior download/config

### spin out to

- [ ] NGAC directory producing PML rendering via XProc
- [ ] XPath directory embedding XPath processing demo
  - with XSpec