#!/bin/bash

# See https://github.com/nineml/HOWTO/blob/main/xproc-1.0/run-xproc.sh for NTW original

CLASSPATH=.
for f in xmlcalabash*/*.jar xmlcalabash*/lib/*.jar; do
    CLASSPATH=$CLASSPATH:$f
done

if [ -d lib ]; then
    for f in `ls -1 lib/*.jar`; do
        CLASSPATH=$CLASSPATH:$f
    done
fi

# Find a way to make extension functionality available in XML Calabash?
# -init org.nineml.coffeesacks.RegisterCoffeeSacks
# -Dcom.xmlcalabash.xproc-configurer=org.nineml.coffeesacks.RegisterCoffeeSacks

java -cp $CLASSPATH com.xmlcalabash.drivers.Main ixml-basic.xpl
 