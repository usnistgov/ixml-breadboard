Command for compiling an XSLT 3.0 stylesheet for SaxonJS:

# Java / Saxon-EE

Using Java Saxon-EE (licensed):

```
java com.saxonica.Transform -xsl:style.xsl -export:output.sef.json -target:JS -nogo -relocate:on -ns:##html5
```

# NodeJS / xslt3

Using xslt3.js on Node.js:

```
node node_modules/xslt3/xslt3.js -xsl:style.xsl -export:output.sef.json -nogo -ns:##html5
```

Or install `xslt3` under [NPM](https://www.npmjs.com/package/xslt3) to use (same command syntax).

```
npm xslt3
```

## scrape

```
xslt3 -xsl:ixml-showcase.xsl -export:../../sef/site/ixml-showcase.sef.json -nogo -ns:##html5
```
