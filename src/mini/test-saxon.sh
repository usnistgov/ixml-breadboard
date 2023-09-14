#!/bin/bash


# See https://github.com/nineml/HOWTO/blob/main/saxon/run-saxon.sh for NTW original


CLASSPATH=.
for f in *.jar; do
    CLASSPATH=$CLASSPATH:$f
done

if [ -d lib ]; then
    for f in `ls -1 lib/*.jar`; do
        CLASSPATH=$CLASSPATH:$f
    done
fi

java -cp $CLASSPATH net.sf.saxon.Transform -init:org.nineml.coffeesacks.RegisterCoffeeSacks \
     -it -xsl:ixml-demo.xsl grammarPath=scratch.ixml
