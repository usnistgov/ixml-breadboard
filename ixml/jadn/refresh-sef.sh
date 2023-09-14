#!/usr/bin/env bash

# Updates the SEF file for distribution
echo Updating jadn-working SEF ...

xslt3 -xsl:jadn-working.xsl -export:jadn-working.sef.json -nogo -ns:##html5

echo ... done
